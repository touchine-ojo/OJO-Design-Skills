<div align="center">

# OJO Design Skills

**面向 AI 编程代理的可复用 UI/UX 设计技能包 —— Codex、Claude Code、ZCode 等。**

[![License: MIT](https://img.shields.io/github/license/touchine-ojo/OJO-Design-Skills?color=blue)](./LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/touchine-ojo/OJO-Design-Skills?style=flat&color=yellow)](https://github.com/touchine-ojo/OJO-Design-Skills/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/touchine-ojo/OJO-Design-Skills?color=brightgreen)](https://github.com/touchine-ojo/OJO-Design-Skills/commits/main)
[![Clients](https://img.shields.io/badge/clients-7-success)](#快速开始)
[![Skills](https://img.shields.io/badge/skills-2-orange)](#技能)

[English](../README.md) · **简体中文** · [日本語](./README.ja-JP.md) · [한국어](./README.ko-KR.md) · [Español](./README.es-ES.md)

</div>

---

OJO Design Skills 是一个即插即用的技能包,让你的 AI 编程代理学会做出真正的设计决策,而不是生成千篇一律的"AI 味"界面。安装一次,你的代理就获得一套完整的 UI/UX 方法论:品牌驱动的视觉方向、设计令牌、组件配方、动效规范,以及一套严格的反模式护栏,确保产出的设计不会显得廉价。

它不绑定特定代理,并附带一个支持所有主流客户端的安装脚本。

---

## 特性

- **双轨道方法论。** *常规轨道(Convention Track)* 为 SaaS 和工具类产品直接采用成熟的设计语言;*创新轨道(Innovation Track)* 通过材质隐喻、原型驱动、叙事驱动或文化符号等方法构建品牌驱动的设计语言。
- **反 AI 味护栏。** 硬性禁止的组合(紫蓝渐变、灰块占位、单一色系调色板)被作为规则强制执行,而非建议。
- **真实素材要求。** 任何展示图像的界面必须使用真实、与主题相关的素材 —— 不得使用装饰性占位图、假微笑的图库照片或渐变色块。
- **代码级产出。** 组件直接落地为原子化的 Tailwind 类名字符串,并覆盖 8 种交互状态;动效使用弹簧物理而非固定曲线。

## 效果展示

同一份需求,装与不装这些技能的对比。

<table>
  <tr>
    <th>已安装 OJO Skills</th>
    <th>未安装 OJO Skills</th>
  </tr>
  <tr>
    <td align="center"><img src="../images/showcase-1-with.gif" alt="已安装时的咖啡 App 首页" width="360"></td>
    <td align="center"><img src="../images/showcase-1-without.gif" alt="未安装时的咖啡 App 首页" width="360"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><sub><b>① 整体观感</b> —— 有品牌质感、使用真实摄影的布局 vs. 千篇一律的渐变 Hero 加 "Image" 灰块占位。</sub></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><img src="../images/showcase-2-riot.gif" alt="摇滚音乐节落地页" width="720"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><sub><b>② 摇滚音乐节</b> —— 高能量落地页,配以动感十足的动效(漂浮烟雾、扫光聚光灯、磁性 CTA、无限滚动阵容)。</sub></td>
  </tr>
</table>

## 设计样例

安装这些技能后产出的更多设计 —— 同一产品,多个界面。

<table>
  <tr>
    <td align="center"><img src="../images/showcase-design-1.png" alt="营销落地页 Hero" width="320"></td>
    <td align="center"><img src="../images/showcase-design.png" alt="落地页完整区块" width="320"></td>
    <td align="center"><img src="../images/showcase-design-3.png" alt="功能区" width="320"></td>
  </tr>
  <tr>
    <td align="center"><img src="../images/showcase-design-4.png" alt="功能区" width="320"></td>
    <td align="center" colspan="2"><img src="../images/showcase-design-2.png" alt="数据分析仪表盘" width="640"></td>
  </tr>
</table>

## 快速开始

用一条命令安装全部技能 —— 将 `<client>` 替换为你的代理:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target <client>
```

| 客户端 | `--target` | 默认安装目录 |
| --- | --- | --- |
| Codex | `codex` | `${CODEX_HOME:-~/.codex}/skills` |
| Claude Code | `claude-code` | `${CLAUDE_HOME:-~/.claude}/skills` |
| ZCode | `zcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| DeepCode | `deepcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| WorkBuddy | `workbuddy` | `${WORKBUDDY_HOME:-~/.workbuddy}/skills` |
| OpenCode | `opencode` | `${OPENCODE_CONFIG_DIR:-~/.config/opencode}/skills` |
| 通用代理 | `generic` | `${AGENTS_HOME:-~/.agents}/skills` |

如果客户端没有立即识别到新技能,请重启或重新加载它。

<details>
<summary>高级安装选项</summary>

替换已有副本而不创建备份:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target codex --force
```

安装到自定义的客户端主目录:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code
```

安装到指定目录:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills
```

从本地检出安装(适合开发时使用):

```bash
./scripts/install.sh
```

预览将要写入的内容而不实际改动文件:

```bash
./scripts/install.sh --target opencode --dry-run
```

只安装单个技能(`--skill` 可重复使用):

```bash
./scripts/install.sh --target zcode --skill visual-direction
```

</details>

## 技能

### `app-ui-ux-best-practices`

核心方法论。根据产品的价值主张选择轨道,然后产出完整的设计规范。

- **常规轨道** —— 为 SaaS 和工具类产品直接采用一套成熟的设计语言(Notion、Linear、Stripe、Things 3 等)。
- **创新轨道** —— 通过材质隐喻、原型驱动、叙事驱动或文化符号等方法构建品牌驱动的设计语言。
- 附带 **9 个参考文件**:反模式、视觉令牌、组件配方、动效系统、材质隐喻、设计审计等。

### `visual-direction`

一个通用的视觉与体验方向技能。用于探索方向、适配参考(网址、截图、Figma)、评审方案,并向下游的设计系统、信息架构或实现工作交付一份可移植的简报。它没有固定的输出模板,而是根据任务需要以合适的形态响应。

## 工作原理

```
产品简报
   │
   ├─ 常规轨道 ──────► 采用成熟系统 ──► 令牌 ──► 组件 ──► 规范
   │  (SaaS / 工具类)      (Notion、Linear…)
   │
   └─ 创新轨道 ──────► 洞察 + 感受 ──► 方法论 ──► 令牌 ──► 规范
      (品牌驱动)         (材质隐喻 / 原型 / 叙事)
```

两条轨道在产出令牌前都要求一道强制的风格方向确认关卡 —— 代理会给出 2–3 个真正不同的方向并等待用户选择。安装后,当代理检测到设计相关的意图(例如 "design system"、"视觉设计"、"design tokens")时,技能会自动激活。

## 贡献

技能就是 `skills/<name>/SKILL.md` 下的纯 Markdown 文件,加上可选的 `references/` 文件。要新增或改进技能,编辑这些文件后在本地运行安装脚本进行验证:

```bash
./scripts/install.sh --dry-run
```

## 许可证

[MIT](./LICENSE)
