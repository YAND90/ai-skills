param (
    [Parameter(Mandatory=$false)]
    [ValidateSet("cursor", "claude", "agy", "all")]
    [string]$Tool = "all",

    [Parameter(Mandatory=$false)]
    [string]$TargetDir = "."
)

$ScriptDir = $PSScriptRoot
$TargetPath = (Resolve-Path $TargetDir).Path

Write-Host "🚀 Initializing AI Workspace in $TargetPath for tool: $Tool" -ForegroundColor Cyan

# 1. Initialize Git if not present
if (-not (Test-Path "$TargetPath\.git")) {
    Write-Host "📦 Initializing Git repository..."
    git -C $TargetPath init | Out-Null
}

# 2. Combine universal prompts
$UniversalPrep = Get-Content "$ScriptDir\universal\pre-coding-prep.md" -Raw
$UniversalReview = Get-Content "$ScriptDir\universal\code-review.md" -Raw
$CombinedRules = "$UniversalPrep`n`n$UniversalReview"

if ($Tool -eq "cursor" -or $Tool -eq "all") {
    Write-Host "🔧 Configuring Cursor (.cursorrules)..."
    $CombinedRules | Set-Content "$TargetPath\.cursorrules" -Encoding UTF8
}

if ($Tool -eq "claude" -or $Tool -eq "all") {
    Write-Host "🔧 Configuring Claude (.clauderules)..."
    $CombinedRules | Set-Content "$TargetPath\.clauderules" -Encoding UTF8
}

if ($Tool -eq "agy" -or $Tool -eq "all") {
    Write-Host "🔧 Configuring Antigravity (.agents/rules/AGENTS.md)..."
    $AgentDir = "$TargetPath\.agents\rules"
    if (-not (Test-Path $AgentDir)) {
        New-Item -ItemType Directory -Force -Path $AgentDir | Out-Null
    }
    # For AGY, we'll use the universal rules as a project-level fallback
    $CombinedRules | Set-Content "$AgentDir\AGENTS.md" -Encoding UTF8
}

Write-Host "✅ Workspace successfully bootstrapped! You are ready to code." -ForegroundColor Green
