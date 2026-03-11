# Commit Style Guide

Keep commits **small, focused, and readable**.

## Format

Use:

```text
type: short description
```

Examples:

- `docs: add pr flow section`
- `feat: add issue templates`
- `fix: update broken link`
- `chore: adjust ci checks`

## Rules

- Use lowercase after `:`.
- Keep subject around 50 characters when possible.
- One logical change per commit.
- Prefer many small commits over one huge commit.

## Good vs bad

Good:

- `docs: clarify dev to main flow`
- `fix: correct release tag example`

Bad:

- `Update stuff`
- `final`
- `many changes`

## Helpful workflow

```bash
git status
git add <file>
git commit -m "docs: improve checklist wording"
```
