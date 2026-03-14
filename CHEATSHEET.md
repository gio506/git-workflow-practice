# Git Workflow Cheatsheet

Use this file as the fast command map after reading `README.md`.

## 1) Branch and sync flow

```bash
git switch main
git pull origin main
git switch dev
git pull origin dev
git switch -c feature/short-topic
```

## 2) Daily work

```bash
git status
git add <file>
git commit -m "docs: short smart message"
git push -u origin feature/short-topic
```

## 3) PR flow

- `feature/* -> dev`
- `dev -> main` after review and green CI

## 4) Useful inspection commands

```bash
git log --oneline --decorate -n 12
git diff
git diff --staged
git branch -a
```

## 5) Tags and releases

```bash
git switch main
git pull origin main
git tag -a v0.1.0 -m "first stable practice release"
git push origin v0.1.0
git show v0.1.0
```

## 6) Useful restore commands

- `git restore <file>` -> discard unstaged file changes
- `git restore --staged <file>` -> unstage file but keep local edits
- `git reset --soft HEAD~1` -> undo last commit, keep changes staged
- `git reset --hard HEAD~1` -> undo last commit and discard local changes
- `git stash` -> save uncommitted work temporarily
- `git stash pop` -> restore latest stashed work

## Repo validation

```bash
chmod +x scripts/validate_repo.sh
bash scripts/validate_repo.sh
```
