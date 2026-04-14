# BOPE Agent Squad — Installer for Windows (PowerShell)
# Usage: .\install.ps1

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host ""
Write-Host "Installing BOPE agents..."
Write-Host ""

# Claude Code
$ClaudeAgents = "$env:USERPROFILE\.claude\agents"
$ClaudeRoot   = "$env:USERPROFILE\.claude"
New-Item -ItemType Directory -Force -Path $ClaudeAgents | Out-Null
Copy-Item "$ScriptDir\agents\*.md" "$ClaudeAgents\" -Force
Copy-Item "$ScriptDir\claude\CLAUDE.md" "$ClaudeRoot\CLAUDE.md" -Force
Write-Host "  Claude Code: agents installed"

# Codex
$CodexSkill = "$env:USERPROFILE\.codex\skills\bope"
New-Item -ItemType Directory -Force -Path $CodexSkill | Out-Null
Copy-Item "$ScriptDir\codex\skills\bope\SKILL.md" "$CodexSkill\SKILL.md" -Force
Write-Host "  Codex: bope skill installed"

Write-Host ""
Write-Host "Done."
Write-Host "  Claude Code -> type: bope"
Write-Host "  Codex       -> type: /bope"
Write-Host ""
