#!/usr/bin/env bash
# Install the Steve Jobs Stack into ~/.agents/skills/ — the universal,
# harness-agnostic location — and symlink into any AI coding agent
# installed on this machine: Claude Code, Cursor, and Codex.
#
# Re-runnable. Skill content in the universal location is preserved on
# subsequent runs; symlinks are refreshed so newly-installed harnesses
# get wired in without touching your edits.

set -euo pipefail

UNIVERSAL_DIR="${HOME}/.agents/skills"
CLAUDE_DIR="${HOME}/.claude/skills"
CURSOR_DIR="${HOME}/.cursor/skills-cursor"
CODEX_DIR="${HOME}/.codex/skills"
TMP_DIR="$(mktemp -d)"
REPO="https://github.com/vikranthreddimasu/steve-jobs-stack"
SKILLS=(steve-jobs-make steve-jobs-refine steve-jobs-pitch)

trap 'rm -rf "$TMP_DIR"' EXIT

echo "Installing Steve Jobs Stack..."
echo ""

git clone --depth=1 --quiet "$REPO" "$TMP_DIR"
mkdir -p "$UNIVERSAL_DIR"

echo "Source of truth: $UNIVERSAL_DIR"
copied=0
preserved=0
for skill in "${SKILLS[@]}"; do
  dest="$UNIVERSAL_DIR/$skill"
  if [ -d "$dest" ]; then
    echo "  $skill — already present, preserved"
    preserved=$((preserved + 1))
  else
    cp -R "$TMP_DIR/$skill" "$dest"
    echo "  $skill — installed"
    copied=$((copied + 1))
  fi
done

link_into() {
  local label="$1"
  local target_dir="$2"
  mkdir -p "$target_dir"
  echo ""
  echo "Linking into $label: $target_dir"
  for skill in "${SKILLS[@]}"; do
    local src="$UNIVERSAL_DIR/$skill"
    local link="$target_dir/$skill"
    if [ -L "$link" ]; then
      ln -sfn "$src" "$link"
      echo "  $skill — link refreshed"
    elif [ -d "$link" ] && diff -rq "$src" "$link" >/dev/null 2>&1; then
      rm -rf "$link"
      ln -s "$src" "$link"
      echo "  $skill — legacy copy matched universal source, converted to symlink"
    elif [ -e "$link" ]; then
      echo "  $skill — local copy differs from universal source, left alone"
      echo "    (your edits preserved; rm $link and re-run to symlink instead)"
    else
      ln -s "$src" "$link"
      echo "  $skill — linked"
    fi
  done
}

[ -d "${HOME}/.claude" ] && link_into "Claude Code" "$CLAUDE_DIR"
[ -d "${HOME}/.cursor" ] && link_into "Cursor" "$CURSOR_DIR"
[ -d "${HOME}/.codex" ]  && link_into "Codex" "$CODEX_DIR"

echo ""
echo "Done. $copied installed, $preserved preserved."
echo ""
echo "Edit one place, used everywhere: ~/.agents/skills/<skill>/SKILL.md"
echo ""
echo "Try in your agent:"
echo "  > Help me draft a PRD for X            # routes to steve-jobs-make"
echo "  > Review my README, be honest          # routes to steve-jobs-refine"
echo "  > Write the launch tweet for Y         # routes to steve-jobs-pitch"
