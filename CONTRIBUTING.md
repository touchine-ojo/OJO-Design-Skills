# Contributing to OJO Design Skills

Thanks for helping make AI-assisted interface work more intentional, specific, and usable.

## Before you start

- Search existing [issues](https://github.com/touchine-ojo/OJO-Design-Skills/issues) and pull requests before opening a new one.
- For a significant new skill, methodology change, or new client target, open an issue first so maintainers and contributors can agree on the direction.
- Keep changes focused. Separate unrelated fixes into separate pull requests.

## What belongs here

Contributions are especially useful when they improve one of these areas:

- a reusable UI/UX decision-making workflow;
- clear, testable guidance for a supported AI coding client;
- reference material that makes a skill more concrete without copying proprietary work; or
- installer reliability and documentation.

Please do not add client-specific credentials, private product information, copyrighted design assets, or generic prompt collections that do not produce a repeatable design outcome.

## Making a change

1. Fork the repository and create a branch with a descriptive name.
2. Make the smallest change that solves the problem.
3. For a skill, update `skills/<skill-name>/SKILL.md` and any directly relevant references.
4. For installer or packaging changes, run a dry run such as:

   ```bash
   ./scripts/install.sh --target codex --dry-run
   ```

5. Check that Markdown links, file paths, and examples are accurate.
6. Open a pull request using the provided template.

## Writing guidelines

- State the decision a skill should help an agent make, not just a list of fashionable UI traits.
- Use concrete inputs, constraints, and expected outputs.
- Keep advice client-agnostic unless a client difference is material and documented.
- Prefer original examples and openly licensed assets. Attribute third-party material where required.
- Preserve the project's anti-placeholder and real-imagery principles when working on visual guidance.

## Pull request review

Maintainers review contributions for clarity, practical value, scope, compatibility with the installer, and consistency with the existing methodology. A pull request may be asked to split unrelated changes or add an example before it is merged.

By contributing, you agree that your work is provided under this repository's [MIT License](./LICENSE).
