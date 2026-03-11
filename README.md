# Git Workflow Practice (Beginner Friendly)

![CI](https://img.shields.io/badge/CI-markdown%20lint%20%7C%20links%20%7C%20templates-blue)

This repository helps you practice a **clean Git workflow** using two long-lived branches:

- `main` → stable branch
- `dev` → integration branch for day-to-day changes

## Learning goals

- Write clean, short commit messages.
- Open pull requests (PRs) with a repeatable flow.
- Use issue templates to report bugs and request features.
- Create tags/releases for milestones.
- Run CI checks before merging.

## Recommended flow (`main` + `dev`)

Follow this order every time:

1. Create/switch to your work branch from `dev`.
2. Sync with the latest `main` and `dev`.
3. Make small, focused commits.
4. Open a PR **into `dev`**.
5. After testing/review in `dev`, open `dev -> main` PR.

### Example commands

```bash
# one-time setup (if branches do not exist yet)
git branch main
git branch dev

# start from dev
# (your team can use names like feature/readme-cleanup)
git switch dev
git pull origin main
git pull origin dev
git switch -c feature/practice-docs

# do your edits
git add .
git commit -m "docs: add review checklist"
git push -u origin feature/practice-docs
```

Then create PRs:

- `feature/practice-docs` -> `dev`
- `dev` -> `main` (after approval + checks)

## Clean commit style (short + smart)

Use a short prefix and a clear action:

- `docs: update release checklist`
- `feat: add bug issue template`
- `fix: correct tag command example`
- `chore: tune ci spellcheck`

More examples and rules: [docs/commit-style.md](docs/commit-style.md)

## PR and issue templates

- PR template: [.github/PULL_REQUEST_TEMPLATE.md](.github/PULL_REQUEST_TEMPLATE.md)
- Bug issue template: [.github/ISSUE_TEMPLATE/bug.md](.github/ISSUE_TEMPLATE/bug.md)
- Feature issue template: [.github/ISSUE_TEMPLATE/feature.md](.github/ISSUE_TEMPLATE/feature.md)

## Release tags (simple process)

Use tags when a milestone is stable:

```bash
git switch main
git pull origin main
git tag -a v0.1.0 -m "first workflow milestone"
git push origin v0.1.0
```

For each release:

1. Confirm CI is green.
2. Confirm review checklist is complete.
3. Tag from `main`.
4. Add release notes.

See: [docs/review-checklist.md](docs/review-checklist.md)

## Local quality checks

Run checks before opening a PR:

```bash
npx markdownlint-cli "**/*.md"
python3 -m pip install --user mdformat-link-checker
python3 -m mdformat_link_check README.md CHEATSHEET.md FILES_EXPLAINED.md docs/*.md .github/*.md .github/ISSUE_TEMPLATE/*.md
codespell
```

If tools are not installed globally, use CI as the fallback validator.

## Repository map

- [CHEATSHEET.md](CHEATSHEET.md) → quick Git command reference
- [FILES_EXPLAINED.md](FILES_EXPLAINED.md) → what each file is for
- [docs/commit-style.md](docs/commit-style.md) → short commit message guide
- [docs/review-checklist.md](docs/review-checklist.md) → lightweight PR/release checklist
