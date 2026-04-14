#!/bin/bash
# BOPE Agent Squad — Installer for Mac/Linux
# Usage: bash install.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ""
echo "Installing BOPE agents..."
echo ""

# Claude Code
mkdir -p "$HOME/.claude/agents"
cp "$SCRIPT_DIR/agents/"*.md "$HOME/.claude/agents/"
cp "$SCRIPT_DIR/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
echo "  Claude Code: agents installed"

# Codex
mkdir -p "$HOME/.codex/skills/bope"
cp "$SCRIPT_DIR/codex/skills/bope/SKILL.md" "$HOME/.codex/skills/bope/SKILL.md"
echo "  Codex: bope skill installed"

echo ""
echo "Done."
echo "  Claude Code → type: bope"
echo "  Codex       → type: /bope"
echo ""
