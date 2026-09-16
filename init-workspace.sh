#!/bin/bash

TOOL=${1:-all}
TARGET_DIR=${2:-.}

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
TARGET_PATH=$(realpath "$TARGET_DIR")

echo "🚀 Initializing AI Workspace in $TARGET_PATH for tool: $TOOL"

# 1. Initialize Git if not present
if [ ! -d "$TARGET_PATH/.git" ]; then
    echo "📦 Initializing Git repository..."
    git -C "$TARGET_PATH" init > /dev/null
fi

# 2. Combine universal prompts
COMBINED_RULES=$(cat "$SCRIPT_DIR/universal/pre-coding-prep.md" "$SCRIPT_DIR/universal/code-review.md")

if [ "$TOOL" = "cursor" ] || [ "$TOOL" = "all" ]; then
    echo "🔧 Configuring Cursor (.cursorrules)..."
    echo "$COMBINED_RULES" > "$TARGET_PATH/.cursorrules"
fi

if [ "$TOOL" = "claude" ] || [ "$TOOL" = "all" ]; then
    echo "🔧 Configuring Claude (.clauderules)..."
    echo "$COMBINED_RULES" > "$TARGET_PATH/.clauderules"
fi

if [ "$TOOL" = "agy" ] || [ "$TOOL" = "all" ]; then
    echo "🔧 Configuring Antigravity (.agents/rules/AGENTS.md)..."
    mkdir -p "$TARGET_PATH/.agents/rules"
    echo "$COMBINED_RULES" > "$TARGET_PATH/.agents/rules/AGENTS.md"
fi

echo "✅ Workspace successfully bootstrapped! You are ready to code."
