<div align="center">

# OJO Design Skills

**给 AI 编程代理使用的可移植设计判断层。**

[![License: MIT](https://img.shields.io/github/license/touchine-ojo/OJO-Design-Skills?color=0f766e)](../LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/touchine-ojo/OJO-Design-Skills?style=flat&color=d97706)](https://github.com/touchine-ojo/OJO-Design-Skills/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/touchine-ojo/OJO-Design-Skills?color=2563eb)](https://github.com/touchine-ojo/OJO-Design-Skills/commits/main)
[![Clients](https://img.shields.io/badge/clients-7-334155)](#安装)
[![Skills](https://img.shields.io/badge/skills-2-be123c)](#技能)

[English](../README.md) · **简体中文** · [日本語](./README.ja-JP.md) · [한국어](./README.ko-KR.md) · [Español](./README.es-ES.md)

<br>

<a href="#安装"><strong>安装</strong></a>
&nbsp;&nbsp;·&nbsp;&nbsp;
<a href="#效果展示"><strong>查看示例</strong></a>
&nbsp;&nbsp;·&nbsp;&nbsp;
<a href="#技能"><strong>浏览技能</strong></a>
&nbsp;&nbsp;·&nbsp;&nbsp;
<a href="#工作原理"><strong>工作原理</strong></a>

<br>
<br>

<img src="./images/ojo-design-skills-cover-irise.png" alt="OJO Design Skills 封面" width="860">

</div>

---

OJO Design Skills 不是 UI kit。它是一个即插即用的设计判断层，适用于 **Codex**、**Claude Code**、**ZCode**、**DeepCode**、**WorkBuddy**、**OpenCode** 等 AI 编程代理。

它让代理先读懂产品，再开始装饰界面：用户正在做什么、品牌应该产生什么感受、哪种视觉语气是有依据的、哪些熟悉的 AI 习惯应该被拒绝。目标不是生成更好看的默认 UI，而是生成能自证其合理性的设计产出。

安装一次后，代理会获得一套可移植的方法论：视觉方向、设计令牌、组件配方、交互状态、动效规则、真实素材要求，以及严格的反模式护栏。

<table>
  <tr>
    <td width="33%">
      <strong>先读产品</strong><br>
      先根据用户、流程、品牌证据和视觉语气判断方向，再选择颜色或组件。
    </td>
    <td width="33%">
      <strong>把审美变成规则</strong><br>
      把视觉方向转成令牌、组件配方、状态规则、动效和布局决策。
    </td>
    <td width="33%">
      <strong>拒绝通用输出</strong><br>
      阻断假素材、单一色系、空泛高级感、空卡片等 AI 生成痕迹。
    </td>
  </tr>
</table>

## 效果展示

同一份需求，安装与未安装这些技能的对比。

<table>
  <tr>
    <th>已安装 OJO Skills</th>
    <th>未安装 OJO Skills</th>
  </tr>
  <tr>
    <td align="center"><img src="./images/showcase-1-with.gif" alt="已安装时的咖啡 App 首页" width="360"></td>
    <td align="center"><img src="./images/showcase-1-without.gif" alt="未安装时的咖啡 App 首页" width="360"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><sub><b>结果：</b>一个有产品感的咖啡体验，对比一个带占位图的通用 AI 布局。</sub></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><img src="./images/showcase-2-riot.gif" alt="摇滚音乐节落地页" width="720"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><sub><b>范围：</b>工具产品可以安静克制，摇滚音乐节就应该高能、直接、有冲击力。</sub></td>
  </tr>
</table>

## 审美是可执行规则

OJO 把视觉质量当作行为，而不是装饰。一个方向必须能用可观察的方式解释自己：密度、饱和度、间距、材质、动效、层级、图像和状态深度。

| 通用代理习惯 | OJO 的回应 |
| --- | --- |
| 从通用布局习惯开始 | 从产品类型、用户、品牌和使用流程开始 |
| 把风格理解成颜色和阴影 | 把视觉语言连接到信息架构、密度、动效和状态 |
| 使用占位图和装饰素材 | 要求真实、与主题相关的图片；没有可信素材就重构布局 |
| 选择安全但无辨识度的 AI 默认风格 | 在实现前阻断常见 AI 味模式 |
| 组件缺少状态深度 | 覆盖 hover、active、focus、disabled、loading、selected、error、success 等状态 |

最简单的测试很直接：如果别人一眼就相信这个界面是 AI 生成的，那这个设计就失败了。

## 设计样例

安装这些技能后产出的更多设计 - 同一产品，多个界面。

<table>
  <tr>
    <td align="center"><img src="./images/showcase-design-1.png" alt="营销落地页 Hero" width="360"></td>
    <td align="center"><img src="./images/showcase-design.png" alt="落地页完整区块" width="360"></td>
  </tr>
  <tr>
    <td align="center"><img src="./images/showcase-design-3.png" alt="功能区" width="360"></td>
    <td align="center"><img src="./images/showcase-design-4.png" alt="功能区" width="360"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><img src="./images/showcase-design-2.png" alt="数据分析仪表盘" width="720"></td>
  </tr>
</table>

## 安装

用一条命令安装全部技能。将 `<client>` 替换为你的代理。

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

如果客户端没有立即识别到新技能，请重启或重新加载它。

<details>
<summary>高级安装选项</summary>

替换已有副本而不创建备份：

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target codex --force
```

安装到自定义客户端主目录：

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code
```

安装到指定目录：

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills
```

从本地检出安装：

```bash
./scripts/install.sh --target codex
```

预览将要写入的内容而不实际改动文件：

```bash
./scripts/install.sh --target codex --dry-run
```

只安装单个技能：

```bash
./scripts/install.sh --target zcode --skill visual-direction
```

</details>

## 技能

### `app-ui-ux-best-practices`

用于生成完整 UI/UX 规范的核心方法论。

- **常规轨道**：适用于 SaaS、仪表盘、效率工具、开发者工具和工具类 App，重点是清晰、可预期和低认知负担。
- **创新轨道**：适用于消费产品、品牌产品、文化娱乐、生活方式和创意工具，视觉识别本身就是产品价值的一部分。
- 附带 **9 个参考文件**：反模式、视觉令牌、组件配方、图标指南、动效、材质隐喻、设计审计和 Hero 强化等。

### `visual-direction`

用于产品、品牌和界面工作的灵活视觉方向技能。

- 在需要决策时探索 2-3 个真正不同的方向。
- 可基于 URL、截图、Figma 参考或现有产品语言做适配。
- 能评审薄弱设计方案，并给出具体修改建议。
- 可向下游设计系统、信息架构、原型或实现工作交付一份可移植简报。

## 工作原理

```text
产品简报
   |
   |-- 常规轨道 ----> 成熟设计语言 ----> 令牌 ----> 组件 ----> 规范
   |   SaaS / 工具类  Notion, Linear, GitHub...
   |
   `-- 创新轨道 ----> 洞察 + 感受 ----> 方法论 ----> 令牌 ----> 规范
       品牌驱动       材质隐喻 / 原型 / 叙事 / 文化
```

两条轨道在产出令牌或组件前，都需要先经过风格方向确认。代理会提出真正不同的方向，等待选择后，再把选中的方向转成可落地的实现级指导。

## 护栏

OJO 把设计质量当作可执行规则，而不是主观建议。

- 不习惯性使用紫蓝 AI 渐变。
- 不使用灰色图片框或假内容占位。
- 不把单一色系伪装成设计系统。
- 产品需要真实素材时，不用装饰图蒙混过去。
- 没有真实并列目的地时，不默认使用移动端底部 TabBar。
- 没有交互状态的组件配方不算完成。
- 不用“高级感”当理由；每个视觉决策都需要可观察依据。

## 仓库结构

```text
skills/
  app-ui-ux-best-practices/
    SKILL.md
    references/
  visual-direction/
    SKILL.md
scripts/
  install.sh
docs/
  README.zh-CN.md
  README.ja-JP.md
  README.ko-KR.md
  README.es-ES.md
  images/
```

## 贡献

技能是 `skills/<name>/SKILL.md` 下的纯 Markdown 文件，加上可选的 `references/` 文件。要新增或改进技能，编辑这些文件后在本地运行安装脚本验证：

```bash
./scripts/install.sh --dry-run
```

## 许可证

[MIT](../LICENSE)
