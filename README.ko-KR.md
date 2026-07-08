<div align="center">

# OJO Design Skills

**AI 코딩 에이전트를 위한 재사용 가능한 UI/UX 디자인 스킬 —— Codex, Claude Code, ZCode 등.**

[![License: MIT](https://img.shields.io/github/license/touchine-ojo/OJO-Design-Skills?color=blue)](./LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/touchine-ojo/OJO-Design-Skills?style=flat&color=yellow)](https://github.com/touchine-ojo/OJO-Design-Skills/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/touchine-ojo/OJO-Design-Skills?color=brightgreen)](https://github.com/touchine-ojo/OJO-Design-Skills/commits/main)
[![Clients](https://img.shields.io/badge/clients-7-success)](#퀵-스타트)
[![Skills](https://img.shields.io/badge/skills-2-orange)](#스킬)

[English](./README.md) · [简体中文](./README.zh-CN.md) · [日本語](./README.ja-JP.md) · **한국어** · [Español](./README.es-ES.md)

</div>

---

OJO Design Skills는 AI 코딩 에이전트에게 진짜 디자인 결정을 내리는 법을 가르치는 즉시 적용 가능한 스킬 번들입니다. 뻔한 "AI 느낌"의 레이아웃이 아니라 실질적인 설계를 만들어냅니다. 한 번 설치하면 에이전트는 완전한 UI/UX 방법론을 갖게 됩니다. 브랜드 중심의 시각적 방향, 디자인 토큰, 컴포넌트 레시피, 모션 사양, 그리고 결과물이 싸구려처럼 보이지 않도록 막아주는 엄격한 안티 패턴 가이드입니다.

특정 에이전트에 종속되지 않으며, 모든 주요 클라이언트를 지원하는 단일 인스톨러를 함께 제공합니다.

---

## 특징

- **두 가지 트랙 방법론.** *컨벤션 트랙*은 SaaS 및 유틸리티 제품을 위해 검증된 디자인 언어를 채택합니다. *이노베이션 트랙*은 매터리얼 메타포, 아키타입, 내러티브, 또는 문화 기호학적 접근을 통해 브랜드 중심의 아이덴티티를 구축합니다.
- **안티 AI 슬롭 가이드라인.** 금지된 조합(보라-파랑 그라데이션, 회색 박스 플레이스홀더, 단일 색상 팔레트)은 제안이 아닌 규칙으로 강제됩니다.
- **실제 이미지 요구사항.** 이미지를 표시하는 모든 화면은 실제 주제에 맞는 에셋을 사용해야 합니다. 장식용 플레이스홀더, 어색한 스톡 사진의 미소, 그라데이션 블롭은 사용하지 않습니다.
- **코드 수준의 출력.** 컴포넌트는 8상태 상호작용 모델을 갖춘 원자적 Tailwind 클래스 문자열로 해결되며, 모션은 고정 곡선이 아닌 스프링 물리를 사용합니다.

## 퀵 스타트

단 한 명령어로 모든 스킬을 설치하세요 —— `<client>`를 사용 중인 에이전트로 바꾸세요:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target <client>
```

| 클라이언트 | `--target` | 기본 설치 디렉터리 |
| --- | --- | --- |
| Codex | `codex` | `${CODEX_HOME:-~/.codex}/skills` |
| Claude Code | `claude-code` | `${CLAUDE_HOME:-~/.claude}/skills` |
| ZCode | `zcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| DeepCode | `deepcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| WorkBuddy | `workbuddy` | `${WORKBUDDY_HOME:-~/.workbuddy}/skills` |
| OpenCode | `opencode` | `${OPENCODE_CONFIG_DIR:-~/.config/opencode}/skills` |
| 범용 에이전트 | `generic` | `${AGENTS_HOME:-~/.agents}/skills` |

새 스킬이 인식되지 않으면 클라이언트를 다시 시작하거나 다시 로드하세요.

<details>
<summary>고급 설치 옵션</summary>

백업을 만들지 않고 기존 복사본을 교체하려면:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target codex --force
```

사용자 지정 클라이언트 홈에 설치하려면:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code
```

명시적 디렉터리에 설치하려면:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills
```

로컬 체크아웃에서 설치하려면(개발 시 편리):

```bash
./scripts/install.sh
```

파일을 변경하지 않고 기록될 내용을 미리 보려면:

```bash
./scripts/install.sh --target opencode --dry-run
```

단일 스킬을 설치하려면(`--skill`은 반복 사용 가능):

```bash
./scripts/install.sh --target zcode --skill visual-direction
```

</details>

## 스킬

### `app-ui-ux-best-practices`

핵심 방법론. 제품의 가치 제안에 따라 트랙을 선택한 뒤, 완전한 디자인 사양을 생성합니다.

- **컨벤션 트랙** —— SaaS 및 유틸리티 제품을 위해 검증된 디자인 언어(Notion, Linear, Stripe, Things 3 등)를 직접 채택합니다.
- **이노베이션 트랙** —— 매터리얼 메타포, 아키타입, 내러티브, 또는 문화 기호학적 방법으로 브랜드 중심의 아이덴티티를 구축합니다.
- **9개의 레퍼런스 파일**을 포함: 안티 패턴, 비주얼 토큰, 컴포넌트 레시피, 모션 시스템, 매터리얼 메타포, 디자인 감사 등.

### `visual-direction`

범용 시각 및 경험 방향 스킬. 방향을 탐색하고, 레퍼런스(URL, 스크린샷, Figma)를 적용하며, 제안을 검토하고, 하위 작업인 디자인 시스템, IA 또는 구현 작업에 이식 가능한 브리프를 전달합니다. 고정된 출력 템플릿이 없으며, 작업에 필요한 형태로 응답합니다.

## 작동 방식

```
제품 브리프
   │
   ├─ 컨벤션 트랙 ─────► 검증된 시스템 채택 ──► 토큰 ──► 컴포넌트 ──► 사양
   │  (SaaS / 유틸리티)        (Notion, Linear…)
   │
   └─ 이노베이션 트랙 ──► 인사이트 + 감성 ──► 방법론 ──► 토큰 ──► 사양
      (브랜드 중심)           (매터리얼 메타포 / 아키타입 / 내러티브)
```

두 트랙 모두 토큰을 생성하기 전에 필수적인 스타일 방향 확인 게이트를 요구합니다 —— 에이전트는 2~3개의 진정으로 다른 방향을 제시하고 선택을 기다립니다. 설치 후, 에이전트가 디자인 관련 의도("design system", "视觉设计", "design tokens" 등)를 감지하면 스킬이 자동으로 활성화됩니다.

## 기여

스킬은 `skills/<name>/SKILL.md` 아래의 일반 Markdown 파일과 선택적 `references/` 파일로 구성됩니다. 스킬을 추가하거나 개선하려면 파일을 편집한 뒤 로컬에서 인스톨러를 실행하여 검증하세요:

```bash
./scripts/install.sh --dry-run
```

## 라이선스

[MIT](./LICENSE)
