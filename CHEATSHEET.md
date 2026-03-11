# Git Workflow Cheatsheet

## 1) Branch and sync flow

```bash
# create branches (one-time)
git branch main
git branch dev

# update local branches
git switch main
git pull origin main
git switch dev
git pull origin dev

# start feature work from dev
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

```bash
# PR 1: feature/* -> dev
# PR 2: dev -> main (after review and CI)
```

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

## 6) Quick undo commands

```bash
git restore <file>
git restore --staged <file>
git commit --amend
git reset --soft HEAD~1
```
