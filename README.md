# TORA (Tex One-shot Report Agent) 🐯

大学の期末レポートなどを、Gemini CLI と LuaLaTeX を使って高品質に、虎のごとく「爆速（One-shot）」で自動生成するためのエージェントテンプレートです。

## 🌟 特徴
- **一撃 (One-shot) セットアップ**: `tora init` を叩くだけで、4つの専門エージェントを配備し、Gemini CLI の対話まで一気（One-shot）に開始します。
- **マルチエージェント・システム**: 
  - **Orchestrator**: 全体の進行管理と戦略立案。
  - **Researcher**: 証拠の収集と Web リサーチの専門家。
  - **Writer**: 高品質な LuaLaTeX 執筆と美しい組版。
  - **Reviewer**: 自律的なデバッグ（自動エラー修正）と整合性チェックの門番。
- **インテリジェント画像処理**: 
  - ワークスペースに画像ファイルを置くだけで、AIが内容を分析し、適切な位置に `\includegraphics` として自動で埋め込みます。
  - ファイル名を内容に即したセマンティックな名前に自動リネームし、ソースコードと同期させます。
- **LuaLaTeX (ltjsarticle)** による美しい日本語組版と、`references.bib` によるクリーンな参考文献管理。
- **プライバシー保護**: 個人情報は初期状態で必ずプレースホルダー化。
- **自動ナビゲーション**: 
  - Gemini CLI 未インストール時にはブラウザでインストールガイドを案内。
  - 検証時には **NotebookLM (https://notebooklm.google.com/)** を自動で開くことができます。

## 🚀 インストール & 使い方

### 1. Homebrew でインストール（推奨）
Mac ユーザーの方は、Homebrew を使って簡単にインストール・管理が可能です。

```bash
# 1. 住所録（Tap）の追加
brew tap TEIKOTA/tora

# 2. TORA のインストール
brew install tora

# 3. 新しいディレクトリで環境を初期化
mkdir sample-report
cd sample-report
tora init
```

### 2. ワンライナーで環境を初期化
インストールなしですぐに試したい場合は、以下のコマンドを実行してください。

```bash
# 虎のごとく爆速でマルチエージェント環境を召喚する
curl -sSL https://raw.githubusercontent.com/TEIKOTA/tora/main/install.sh | bash
```

`tora init` (または install.sh) を実行すると：
1. 4つの専門エージェントが配備されます。
2. そのまま自動的に Gemini CLI が起動し、TORA との対話が始まります。

## 📖 使い方（Gemini CLI）

Gemini CLI が起動したら、以下のように「TORA」に話しかけてください。

```bash
レポートを書きましょう
```
AIからのヒアリングがあるのでテーマや課題要件、課題に対する自身の考えを入力してください。(楽なので音声入力を推奨)

## 🛠 動作環境
- [Gemini CLI](https://github.com/google/gemini-cli)
- TeX Live (LuaLaTeX, latexmk, biber がインストールされていること)
- Node.js (Gemini CLI の動作に必要)

## 📄 ライセンス
MIT License
