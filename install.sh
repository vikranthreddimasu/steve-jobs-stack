#!/usr/bin/env bash
# Install the Steve Jobs Stack into ~/.agents/skills/ — the universal,
# harness-agnostic location — and symlink into any AI coding agent
# installed on this machine (Claude Code, Cursor). Codex gets a wire-up
# hint instead of an install, since Codex does not auto-load skills.
#
# Re-runnable. Skill content in the universal location is preserved on
# subsequent runs; symlinks are refreshed so newly-installed harnesses
# get wired in without touching your edits.

set -euo pipefail

UNIVERSAL_DIR="${HOME}/.agents/skills"
CLAUDE_DIR="${HOME}/.claude/skills"
CURSOR_DIR="${HOME}/.cursor/skills-cursor"
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
    elif [ -e "$link" ]; then
      echo "  $skill — directory exists at $link, left alone"
      echo "    (remove it to let this script symlink to the universal source)"
    else
      ln -s "$src" "$link"
      echo "  $skill — linked"
    fi
  done
}

[ -d "${HOME}/.claude" ] && link_into "Claude Code" "$CLAUDE_DIR"
[ -d "${HOME}/.cursor" ] && link_into "Cursor" "$CURSOR_DIR"

if [ -d "${HOME}/.codex" ] || command -v codex >/dev/null 2>&1; then
  echo ""
  echo "Codex detected — no auto-install (Codex does not load skills natively)."
  echo "Add this to your AGENTS.md or system prompt:"
  echo ""
  echo "  When my request fits, read and follow:"
  for skill in "${SKILLS[@]}"; do
    echo "    ~/.agents/skills/$skill/SKILL.md"
  done
fi

echo ""
echo "Done. $copied installed, $preserved preserved."
echo ""
echo "Edit one place, used everywhere: ~/.agents/skills/<skill>/SKILL.md"
echo ""
echo "Try in your agent:"
echo "  > Help me draft a PRD for X            # routes to steve-jobs-make"
echo "  > Review my README, be honest          # routes to steve-jobs-refine"
echo "  > Write the launch tweet for Y         # routes to steve-jobs-pitch"
