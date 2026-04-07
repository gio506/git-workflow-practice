# Git Workflow Guide

This repository demonstrates clean Git habits used in professional DevOps workflows.

## Branch Strategy

```text
main          ← stable, protected — only merged from dev via PR
  └── dev     ← integration branch — features merged here first
        └── feat/* or fix/* ← short-lived feature branches
```

### Branch Lifecycle

```bash
# 1. Start from latest dev
git checkout dev
git pull origin dev

# 2. Create a feature branch
git checkout -b feat/add-ci-badge

# 3. Work, commit with conventional messages
git add .
git commit -m "feat(ci): add GitHub Actions CI status badge to README"

# 4. Push and open a PR to dev
git push origin feat/add-ci-badge
```

---

## Commit Message Convention

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```text
<type>(<scope>): <short description>

[optional body]

[optional footer]
```

### Types

| Type | When to use |
|---|---|
| `feat` | New feature or significant addition |
| `fix` | Bug fix |
| `docs` | Documentation changes only |
| `ci` | CI/CD pipeline changes |
| `chore` | Maintenance tasks (deps, tooling) |
| `refactor` | Code restructure without behavior change |
| `test` | Adding or modifying tests |

### Examples

```bash
git commit -m "feat(scripts): add git log alias installer"
git commit -m "fix(ci): correct shellcheck path for sourced files"
git commit -m "docs: update README with branch diagram"
git commit -m "ci: add concurrency group to GitHub Actions workflow"
```

---

## Tagging Releases

```bash
# Annotated tag (recommended)
git tag -a v1.0.0 -m "Release v1.0.0 — initial stable version"
git push origin v1.0.0

# List all tags
git tag -l

# Delete a local tag (if made by mistake)
git tag -d v1.0.0-wrong
git push origin :refs/tags/v1.0.0-wrong
```

---

## Git Hygiene Checklist

Before pushing any branch:
- [ ] `git diff --staged` — review what you're committing
- [ ] No `.env`, secrets, or credentials in staged files
- [ ] Commit message follows Conventional Commits
- [ ] `git log --oneline -5` — confirm clean history
- [ ] No merge commits on feature branches (`git rebase` instead)
- [ ] Branch name is descriptive (`feat/`, `fix/`, `docs/`)

---

## Useful Aliases

Add to your `~/.gitconfig`:

```ini
[alias]
  lg    = log --oneline --graph --decorate --all
  st    = status -sb
  undo  = reset --soft HEAD~1
  pushf = push --force-with-lease
```
