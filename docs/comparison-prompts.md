# Showcase Comparison Prompts

The screenshots used in the README **Showcase** section are produced from the prompt pairs below. Each pair uses the **same product brief**; the only variable is whether the agent has the OJO Design Skills installed.

Re-run these in any supported agent (Codex, Claude Code, ZCode, …) to regenerate the visuals. Replace the `docs/images/showcase-*.svg` placeholders with your real screenshots when ready — keep the filenames so the README links stay valid.

---

## 1 · Overall look — Before / After

The headline contrast: a bare agent produces generic "AI-looking" output; an agent with OJO Design Skills produces a brand-driven, intentional design.

### Without OJO Skills (the "before")

```
帮我设计一个"精品咖啡订阅"App 的首页。
要求：Hero 区 + 3 个卖点 + 一个订阅 CTA。
用 React + Tailwind 实现。
```

**Expect:** purple-blue / pink-cyan gradient hero, a centered title-subtitle-button trio, and three gray placeholder boxes labeled "Image". This is exactly the AI-slop the skills are built to forbid.

### With OJO Skills (the "after")

```
帮我设计一个"精品咖啡订阅"App 的首页。
品牌定位：手冲精品咖啡，目标用户是 25–35 岁城市咖啡爱好者，
强调"产地溯源"和"烘焙日期新鲜度"。
要求：Hero 区 + 3 个卖点 + 一个订阅 CTA。
用 React + Tailwind 实现。
```

**Expect:** the agent runs the Innovation Track → Material Metaphor (e.g. "roast paper × warm wooden counter"), bans AI-slop palettes, and requires real coffee imagery with roast-date / origin detail.

**What to look for:** gradient vs. intentional palette; gray "Image" boxes vs. real subject-specific photography; generic copy vs. brand-grounded detail.

---

## 2 · Component detail — prose vs. code-grade specs

Shows the difference in output *granularity*: vague description vs. atomic Tailwind classes with full interaction states.

### Single prompt (run in both)

```
给我一个 Pricing 卡片组件的设计规范。
```

**Without:** a few lines of prose — "make the button blue, rounded corners, add a hover effect." No states defined.

**With:** atomic Tailwind class strings, the full 8-state model (Default / Hover / Active / Focus / Disabled / Loading / Success / Error), and spring-physics motion parameters.

**What to look for:** adjectives vs. implementable tokens; undefined vs. exhaustive interaction states; fixed timing vs. spring physics.

---

## 3 · Two-track coverage — Convention vs. Innovation

Demonstrates the methodology's breadth: one skill, two genuinely different visual worlds.

### Convention Track

```
为一个 SaaS 团队协作工具做设计方向。
```

**Expect:** Convention Track → Linear / Notion-style. Restrained, high-density, neutral palette, utility-first.

### Innovation Track

```
为一个独立设计师的珠宝品牌官网做设计方向，
品牌强调手工锻造和金属质感。
```

**Expect:** Innovation Track → Material Metaphor "liquid metal × dark gallery". Dramatic lighting, sculptural depth, brand-driven.

**What to look for:** both directions are high quality, but they belong to completely different visual worlds — proving the skill adapts to the product, not a single house style.

---

## Producing the screenshots

1. Run each prompt pair in your agent.
2. Capture the rendered result (browser screenshot, design export, or the generated page).
3. Save as `docs/images/showcase-<n>-<label>.{png|jpg}` — keep the base name identical to the existing SVG so the README `![](…)` references stay correct.
4. If you switch extensions (e.g. `.svg` → `.png`), update the five `README*.md` image links accordingly.
