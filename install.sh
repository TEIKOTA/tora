#!/bin/bash

# ==========================================================
# TORA (Tex One-shot Report Agent) - Installer Script
# ==========================================================
# 新しいプロジェクトディレクトリでこのスクリプトを実行すると、
# Gemini CLI 用のレポート作成エージェント（マルチエージェント）がセットアップされます。

set -e

# 作業ディレクトリの確認
echo "Initializing TORA environment..."

# 依存関係のチェック (Gemini CLI)
if ! command -v gemini >/dev/null 2>&1; then
    echo "Warning: Gemini CLI is not installed."
    echo "Please install it first: https://github.com/google/gemini-cli"
    echo "Installation command: npm install -g @google/gemini-cli"
    echo "----------------------------------------------------------"
fi

# 必要なディレクトリ構造の作成
mkdir -p .gemini/agents

# エージェントリスト
AGENTS=("tora.md" "tora-researcher.md" "tora-writer.md" "tora-reviewer.md")

# 各エージェント定義ファイルの取得
for AGENT in "${AGENTS[@]}"; do
    AGENT_URL="https://raw.githubusercontent.com/TEIKOTA/tora/main/.gemini/agents/$AGENT"
    echo "Downloading $AGENT..."
    if command -v curl >/dev/null 2>&1; then
        curl -sSL "$AGENT_URL" -o ".gemini/agents/$AGENT"
    elif command -v wget >/dev/null 2>&1; then
        wget -qO ".gemini/agents/$AGENT" "$AGENT_URL"
    else
        echo "Error: curl or wget is required to install the agents."
        exit 1
    fi
done

echo "Successfully installed TORA multi-agent system."
echo "----------------------------------------------------------"
echo "Next Step:"
echo "1. Run Gemini CLI in this directory."
echo "2. TORA will guide you through the report creation process."
echo "----------------------------------------------------------"
