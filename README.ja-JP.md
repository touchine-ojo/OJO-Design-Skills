<div align="center">

# OJO Design Skills

**AI コーディングエージェントのための再利用可能な UI/UX デザインスキル —— Codex、Claude Code、ZCode など。**

[![License: MIT](https://img.shields.io/github/license/touchine-ojo/OJO-Design-Skills?color=blue)](./LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/touchine-ojo/OJO-Design-Skills?style=flat&color=yellow)](https://github.com/touchine-ojo/OJO-Design-Skills/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/touchine-ojo/OJO-Design-Skills?color=brightgreen)](https://github.com/touchine-ojo/OJO-Design-Skills/commits/main)
[![Clients](https://img.shields.io/badge/clients-7-success)](#クイックスタート)
[![Skills](https://img.shields.io/badge/skills-2-orange)](#スキル)

[English](./README.md) · [简体中文](./README.zh-CN.md) · **日本語** · [한국어](./README.ko-KR.md) · [Español](./README.es-ES.md)

</div>

---

OJO Design Skills は、AI コーディングエージェントに本当のデザイン判断を行わせるための、組み込み式スキルバンドルです。ありきたりの「AI 臭い」レイアウトではなく、本物の設計を生成します。一度インストールするだけで、エージェントは UI/UX の完全な方法论を獲得します。ブランド主導のビジュアル方向、デザイントークン、コンポーネントレシピ、モーション仕様、そして出力が安っぽくならないようにする厳格なアンチパターンガイドラインです。

特定のエージェントに依存せず、すべての主要クライアントに対応する単一のインストーラーを同梱しています。

---

## 特徴

- **2 つのトラック方法论。** *コンベンショントラック* は SaaS やユーティリティ製品向けに実績のあるデザイン言語を採用します。*イノベーショントラック* はマテリアルメタファー、アーキタイプ、ナラティブ、または文化記号論の手法でブランド主導のアイデンティティを構築します。
- **アンチ AI スロップガードレール。** 禁止された組み合わせ(紫と青のグラデーション、グレーのプレースホルダー、単一色相のパレット)は、提案ではなくルールとして強制されます。
- **リアル画像の要件。** 画像を表示する画面はすべて、実物に即した本物のアセットを使用しなければなりません。装飾的なプレースホルダー、不自然なストック写真の笑顔、グラデーションのブロブは使用しません。
- **コードグレードの出力。** コンポーネントは 8 状態のインタラクションモデルを持つアトミックな Tailwind クラス文字列に解決され、モーションは固定カーブではなくスプリング物理を使用します。

## クイックスタート

1 コマンドで全スキルをインストールします —— `<client>` をお使いのエージェントに置き換えてください:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target <client>
```

| クライアント | `--target` | デフォルトのインストール先 |
| --- | --- | --- |
| Codex | `codex` | `${CODEX_HOME:-~/.codex}/skills` |
| Claude Code | `claude-code` | `${CLAUDE_HOME:-~/.claude}/skills` |
| ZCode | `zcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| DeepCode | `deepcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| WorkBuddy | `workbuddy` | `${WORKBUDDY_HOME:-~/.workbuddy}/skills` |
| OpenCode | `opencode` | `${OPENCODE_CONFIG_DIR:-~/.config/opencode}/skills` |
| 汎用エージェント | `generic` | `${AGENTS_HOME:-~/.agents}/skills` |

新しいスキルが認識されない場合は、クライアントを再起動または再読み込みしてください。

<details>
<summary>高度なインストールオプション</summary>

バックアップを作成せずに既存のコピーを置き換える:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target codex --force
```

カスタムのクライアントホームにインストールする:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code
```

明示的なディレクトリにインストールする:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills
```

ローカルのチェックアウトからインストールする(開発時に便利):

```bash
./scripts/install.sh
```

ファイルを変更せずに書き込まれる内容をプレビューする:

```bash
./scripts/install.sh --target opencode --dry-run
```

単一のスキルをインストールする(`--skill` は繰り返し使用可能):

```bash
./scripts/install.sh --target zcode --skill visual-direction
```

</details>

## スキル

### `app-ui-ux-best-practices`

コアとなる方法论。製品の価値提案に基づいてトラックを選択し、完全なデザイン仕様を生成します。

- **コンベンショントラック** —— SaaS やユーティリティ製品向けに、実績のあるデザイン言語(Notion、Linear、Stripe、Things 3 など)を直接採用します。
- **イノベーショントラック** —— マテリアルメタファー、アーキタイプ、ナラティブ、または文化記号論の手法で、ブランド主導のアイデンティティを構築します。
- **9 つのリファレンスファイル** を同梱: アンチパターン、ビジュアルトークン、コンポーネントレシピ、モーションシステム、マテリアルメタファー、デザイン監査など。

### `visual-direction`

汎用的なビジュアルおよび体験方向のスキル。方向を探求し、リファレンス(URL、スクリーンショット、Figma)を適応させ、提案をレビューし、下流のデザインシステム、IA、実装作業に移植可能なブリーフとして引き継ぎます。固定の出力テンプレートはなく、タスクに必要な形で応答します。

## 仕組み

```
製品ブリーフ
   │
   ├─ コンベンショントラック ──► 実績のあるシステムを採用 ──► トークン ──► コンポーネント ──► 仕様
   │  (SaaS / ユーティリティ)         (Notion、Linear…)
   │
   └─ イノベーショントラック ──► インサイト + 感情 ──► 方法论 ──► トークン ──► 仕様
      (ブランド主導)                (マテリアルメタファー / アーキタイプ / ナラティブ)
```

どちらのトラックも、トークンを生成する前に必須のスタイル方向確認ゲートを要求します —— エージェントは 2〜3 個の真に異なる方向を提示し、選択を待ちます。インストール後、エージェントがデザイン関連の意図("design system"、"视觉设计"、"design tokens" など)を検出すると、スキルは自動的に有効化されます。

## コントリビュート

スキルは `skills/<name>/SKILL.md` 配下のプレーンな Markdown ファイルと、オプションの `references/` ファイルで構成されます。スキルを追加・改良するには、ファイルを編集し、ローカルでインストーラを実行して検証してください:

```bash
./scripts/install.sh --dry-run
```

## ライセンス

[MIT](./LICENSE)
