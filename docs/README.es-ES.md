<div align="center">

# OJO Design Skills

**Habilidades de diseño UI/UX reutilizables para agentes de código IA — Codex, Claude Code, ZCode y más.**

[![License: MIT](https://img.shields.io/github/license/touchine-ojo/OJO-Design-Skills?color=blue)](./LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/touchine-ojo/OJO-Design-Skills?style=flat&color=yellow)](https://github.com/touchine-ojo/OJO-Design-Skills/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/touchine-ojo/OJO-Design-Skills?color=brightgreen)](https://github.com/touchine-ojo/OJO-Design-Skills/commits/main)
[![Clients](https://img.shields.io/badge/clients-7-success)](#inicio-rápido)
[![Skills](https://img.shields.io/badge/skills-2-orange)](#habilidades)

[English](../README.md) · [简体中文](./README.zh-CN.md) · [日本語](./README.ja-JP.md) · [한국어](./README.ko-KR.md) · **Español**

</div>

---

OJO Design Skills es un paquete de habilidades integrable que enseña a tu agente de código IA a tomar decisiones de diseño reales, no a generar interfaces genéricas con "aspecto de IA". Instálalo una vez y tu agente obtiene una metodología completa de UI/UX: dirección visual basada en la marca, tokens de diseño, recetas de componentes, especificaciones de movimiento y una guía estricta de antipatrones que evita que el resultado parezca de mala calidad.

Es agnóstico al agente e incluye un único instalador compatible con todos los clientes principales.

---

## Características

- **Metodología de dos vías.** La *Vía Convencional* adopta un lenguaje de diseño probado para productos SaaS y de utilidad; la *Vía Innovadora* construye una identidad basada en la marca mediante Metáfora Material, arquetipo, narrativa o enfoques semiótico-culturales.
- **Guías anti-AI-slop.** Las combinaciones prohibidas (degradados morado-azul, marcadores de posición grises, paletas de un solo tono) se aplican como reglas, no como sugerencias.
- **Requisito de imágenes reales.** Cualquier pantalla que muestre imágenes debe usar activos reales y específicos del tema: sin marcadores de posición decorativos, sonrisas falsas de banco de imágenes ni blobs de degradado.
- **Salida de calidad de código.** Los componentes se resuelven en cadenas de clases atómicas de Tailwind con un modelo de interacción de 8 estados; el movimiento usa física de resortes, no curvas fijas.

## Vitrina

El mismo brief, con y sin estas habilidades instaladas. *(Las filas ②③ son marcadores de posición — ver [`comparison-prompts.md`](./comparison-prompts.md) para regenerarlos.)*

<table>
  <tr>
    <th>Con OJO Skills</th>
    <th>Sin OJO Skills</th>
  </tr>
  <tr>
    <td align="center"><img src="../images/showcase-1-with.gif" alt="Inicio de app de café con OJO Skills" width="360"></td>
    <td align="center"><img src="../images/showcase-1-without.gif" alt="Inicio de app de café sin OJO Skills" width="360"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><sub><b>① Aspecto general</b> — un diseño con identidad de marca y fotografía real vs. un Hero con degradado genérico y cajas "Image" de marcador.</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="../images/showcase-2-with.svg" alt="Especificación de componente con OJO Skills" width="390"></td>
    <td align="center"><img src="../images/showcase-2-without.svg" alt="Especificación de componente sin OJO Skills" width="390"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><sub><b>② Detalle de componente</b> — clases atómicas de Tailwind con el modelo completo de 8 estados y física de resortes vs. prosa vaga.</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="../images/showcase-3-innovation.svg" alt="Salida de la Vía Innovadora" width="390"></td>
    <td align="center"><img src="../images/showcase-3-convention.svg" alt="Salida de la Vía Convencional" width="390"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><sub><b>③ Cobertura de dos vías</b> — la misma habilidad produce una tienda de marca dramática (Innovadora) y una utilidad SaaS contenida (Convencional).</sub></td>
  </tr>
</table>

## Inicio rápido

Instala todas las habilidades con un solo comando — sustituye `<client>` por tu agente:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target <client>
```

| Cliente | `--target` | Directorio de instalación por defecto |
| --- | --- | --- |
| Codex | `codex` | `${CODEX_HOME:-~/.codex}/skills` |
| Claude Code | `claude-code` | `${CLAUDE_HOME:-~/.claude}/skills` |
| ZCode | `zcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| DeepCode | `deepcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| WorkBuddy | `workbuddy` | `${WORKBUDDY_HOME:-~/.workbuddy}/skills` |
| OpenCode | `opencode` | `${OPENCODE_CONFIG_DIR:-~/.config/opencode}/skills` |
| Agente genérico | `generic` | `${AGENTS_HOME:-~/.agents}/skills` |

Reinicia o recarga el cliente si no reconoce las nuevas habilidades.

<details>
<summary>Opciones avanzadas de instalación</summary>

Reemplazar copias existentes sin copias de seguridad:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target codex --force
```

Instalar en un directorio principal de cliente personalizado:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code
```

Instalar en un directorio explícito:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills
```

Instalar desde una copia local de trabajo (útil para desarrollo):

```bash
./scripts/install.sh
```

Previsualizar lo que se escribiría sin modificar archivos:

```bash
./scripts/install.sh --target opencode --dry-run
```

Instalar una sola habilidad (`--skill` se puede repetir):

```bash
./scripts/install.sh --target zcode --skill visual-direction
```

</details>

## Habilidades

### `app-ui-ux-best-practices`

La metodología central. Elige una vía según la propuesta de valor del producto y luego produce especificaciones de diseño completas.

- **Vía Convencional** — adopta directamente un lenguaje de diseño probado (Notion, Linear, Stripe, Things 3, …) para productos SaaS y de utilidad.
- **Vía Innovadora** — construye una identidad basada en la marca mediante Metáfora Material, arquetipo, narrativa o métodos semiótico-culturales.
- Incluye **9 archivos de referencia**: antipatrones, tokens visuales, recetas de componentes, sistema de movimiento, metáfora material, auditoría de diseño y más.

### `visual-direction`

Una habilidad general de dirección visual y de experiencia. Explora direcciones, adapta referencias (URL, captura de pantalla, Figma), critica propuestas y entrega un brief portátil para el trabajo posterior de sistema de diseño, IA o implementación. No tiene una plantilla de salida fija: responde en la forma que la tarea requiera.

## Cómo funciona

```
Brief del producto
   │
   ├─ Vía Convencional ──► adoptar sistema probado ──► tokens ──► componentes ──► specs
   │  (SaaS / utilidad)          (Notion, Linear…)
   │
   └─ Vía Innovadora ───► insight + sentimiento ─► metodología ──► tokens ──► specs
      (basada en marca)         (Metáfora Material / arquetipo / narrativa)
```

Ambas vías requieren una puerta obligatoria de confirmación de dirección de estilo antes de producir tokens — el agente presenta 2–3 direcciones genuinamente distintas y espera la selección. Una vez instaladas, las habilidades se activan automáticamente cuando el agente detecta una intención relacionada con el diseño (p. ej. "design system", "视觉设计", "design tokens").

## Contribuir

Las habilidades son archivos Markdown simples en `skills/<name>/SKILL.md` más archivos opcionales en `references/`. Para añadir o perfeccionar una habilidad, edita los archivos y ejecuta el instalador localmente para verificarlo:

```bash
./scripts/install.sh --dry-run
```

## Licencia

[MIT](./LICENSE)
