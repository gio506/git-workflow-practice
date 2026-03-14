# Git Workflow Practice (Beginner Friendly)

![CI](https://img.shields.io/badge/CI-markdown%20lint%20%7C%20links-blue)

This repository helps you practice a clean Git workflow using two long-lived
branches while also keeping the docs understandable for future review.

## What this repo is for

Use this repo to learn:

- clean commit message habits
- local branch and tag basics
- how a `dev -> main` review flow differs from solo practice
- how to explain Git history to another person, not just run commands
- how lightweight docs and templates support a repo workflow

This repository uses:

- `main` -> stable branch
- `dev` -> integration branch for day-to-day changes

## Learning goals

- Write clean, short commit messages.
- Open pull requests with a repeatable flow.
- Use issue templates to report bugs and request features.
- Create tags and releases for milestones.
- Run CI checks before merging.

## Recommended flow (`main` + `dev`)

Follow this order every time:

1. Create or switch to your work branch from `dev`.
2. Sync with the latest `main` and `dev`.
3. Make small, focused commits.
4. Open a PR into `dev`.
5. After review in `dev`, open `dev -> main` PR.

### Example commands

```bash
git switch dev
git pull origin main
git pull origin dev
git switch -c feature/practice-docs

git add .
git commit -m "docs: add review checklist"
git push -u origin feature/practice-docs
```

Then create PRs:

- `feature/practice-docs` -> `dev`
- `dev` -> `main`

## Commit style

Use a short prefix and a clear action:

- `docs: update release checklist`
- `feat: add bug issue template`
- `fix: correct tag command example`
- `chore: tune ci spellcheck`

See `docs/commit-style.md` for the short guide.

## Tags and releases

Use tags when a milestone is stable:

```bash
git switch main
git pull origin main
git tag -a v0.1.0 -m "first workflow milestone"
git push origin v0.1.0
```

See `docs/review-checklist.md` for the release checklist.

## PR and issue templates

- `.github/PULL_REQUEST_TEMPLATE.md`
- `.github/ISSUE_TEMPLATE/bug.md`
- `.github/ISSUE_TEMPLATE/feature.md`

## Local validation

```bash
bash scripts/validate_repo.sh
npx markdownlint-cli "**/*.md"
```

## Repository map

- `CHEATSHEET.md` -> quick Git command reference
- `FILES_EXPLAINED.md` -> what each file is for
- `docs/commit-style.md` -> short commit message guide
- `docs/review-checklist.md` -> lightweight PR and release checklist

## CI basics in this repo

This repo uses four stages:

1. `structure-check`
2. `markdown-lint`
3. `practice-flow-check`
4. `final-status-gate`
