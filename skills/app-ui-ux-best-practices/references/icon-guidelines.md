# Icon Guidelines

## 🚨 Golden Rule: ONE Library, ONE Style, ZERO Exceptions

**Every icon in the app MUST come from the SAME icon library and use the SAME style.**

| Aspect | Rule | Example |
|--------|------|---------|
| **Library** | Pick ONE and stick to it | Heroicons, Lucide, Phosphor, SF Symbols, Material Symbols |
| **Style** | ALL icons use same style | All Outline OR All Filled — NEVER mix |
| **Stroke Weight** | Consistent across all icons | 1.5px or 2px — pick one |
| **Size Grid** | Same base size | 24×24px (scale proportionally) |
| **Corner Radius** | Match icon library's default | Don't modify individual icons |

---

## ⛔ Banned Patterns (Instant Rejection)

### Consistency Violations

| Pattern | Why It's Wrong | Fix |
|---------|---------------|-----|
| **Mixed styles** (outline + filled) | Looks like random icon dump | Unify to one style |
| **Mixed libraries** (e.g., Lucide + FontAwesome, or Heroicons + Phosphor) | Inconsistent visual weight | Pick one library |
| **Mixed stroke weights** (1px + 2px + 3px) | Visual chaos | Standardize stroke |

### Visual Effects (NEVER Use)

| Pattern | Why It's Wrong |
|---------|---------------|
| **Neon glow effects** | Cheap, dated, "AI-generated" look |
| **Rainbow/multi-color gradients** | Visual noise, unprofessional |
| **Plastic 3D with shiny highlights** | Skeuomorphic relic |
| **Star decorations** (✨) | Decorative clutter |
| **Gradient fills** | Hard to maintain, dated |
| **Colored icons in toolbar** | Breaks visual hierarchy |

### Source Violations

| Pattern | Why It's Wrong |
|---------|---------------|
| **Flaticon/Freepik free icons** | Inconsistent styles, licensing issues |
| **AI-generated icons** | Inconsistent, often broken details |
| **Emoji as functional icons** (🏠 ❤️ ⚙️) | Unprofessional, uncontrollable rendering |

---

## Zero-Emoji UI Rule

Do not use emoji anywhere as visible UI, including:
- stats cards (`❤️`, `✨`, `⭐`)
- settings rows (`👻`, `🔒`, `🛡️`, `🔔`, `❓`)
- tab bars, profile actions, empty states, badges, status indicators, or button labels
- mock data strings that render on screen

Replace emoji with a single coherent icon system. Prefer clean SVG icons (any of Heroicons / Lucide / Phosphor — all equal-tier; choose by aesthetic fit) with consistent stroke width, size, and color token usage. If an icon library is unavailable, use a small matching inline SVG set rather than Unicode emoji or random symbols.

---

## ✅ Recommended Icon Libraries

| Library | Style Options | Best For |
|---------|--------------|----------|
| **Heroicons** | Outline (1.5px), Solid | Tailwind CSS projects |
| **Lucide** | Outline (1.5px default) | Web apps, React projects |
| **Phosphor** | 6 weights (thin→bold) | Flexible design systems |
| **SF Symbols** | Outline, Filled, Hierarchical | iOS/macOS native apps |
| **Material Symbols** | Outline, Rounded, Sharp | Android, Material Design |

> **Heroicons, Lucide, and Phosphor are three equal-tier options** — none is "the default". Choice should be driven by aesthetic fit: Heroicons skews Apple-clean, Lucide skews technical/geometric, Phosphor skews warm/duotone-capable. SF Symbols and Material Symbols are platform-specific and not interchangeable with the web trio.

---

## Icon Color Rules

| Context | Color Rule |
|---------|-----------|
| **Toolbar/Navigation** | Single color, inherit from `text-secondary` or theme |
| **Active state** | Use `primary` color |
| **Disabled state** | Use `text-disabled` with reduced opacity |
| **Decorative/Empty state** | Can use `text-tertiary` or subtle tint |

---

## Quality Standards

| Property | Requirement |
|----------|-------------|
| **Color** | Single color, no effects |
| **Stroke** | 1.5-2px consistent |
| **Size** | 24×24px base grid |
| **Style** | Outline OR Filled (not mixed) |

---

## Pre-Flight Checklist

Before finalizing any UI, verify:

- [ ] All icons from same library?
- [ ] All icons same style (outline/filled)?
- [ ] All icons same stroke weight?
- [ ] No emoji or random Unicode symbols used anywhere in visible UI?
- [ ] No neon/glow/gradient effects?
- [ ] No AI-generated or Flaticon icons?
- [ ] Active/inactive states use consistent color logic?
