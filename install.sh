#!/usr/bin/env bash
# Install the Steve Jobs Stack into ~/.claude/skills/
# Three skills: steve-jobs-make, steve-jobs-refine, steve-jobs-pitch.

set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"
TMP_DIR="$(mktemp -d)"
REPO="https://github.com/vikranthreddimasu/steve-jobs-stack"

trap 'rm -rf "$TMP_DIR"' EXIT

echo "Installing Steve Jobs Stack into $SKILLS_DIR..."
echo ""

git clone --depth=1 --quiet "$REPO" "$TMP_DIR"

mkdir -p "$SKILLS_DIR"

installed=0
skipped=0
for skill in steve-jobs-make steve-jobs-refine steve-jobs-pitch; do
  if [ -d "$SKILLS_DIR/$skill" ]; then
    echo "  $skill already exists — skipped"
    echo "    (remove $SKILLS_DIR/$skill to reinstall)"
    skipped=$((skipped + 1))
  else
    cp -R "$TMP_DIR/$skill" "$SKILLS_DIR/$skill"
    echo "  $skill installed"
    installed=$((installed + 1))
  fi
done

echo ""
echo "Done. $installed installed, $skipped skipped."
echo ""
echo "Try in Claude Code:"
echo "  > Help me draft a PRD for X            # /steve-jobs-make"
echo "  > Review my README, be honest          # /steve-jobs-refine"
echo "  > Write the launch tweet for Y         # /steve-jobs-pitch"
