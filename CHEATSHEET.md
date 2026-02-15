# Git Beginner Cheatsheet

Quick reference for what each command is for.

## Most popular commands (daily use)

### Check status and history

- `git status` -> show changed files and branch state
- `git log --oneline --decorate -n 10` -> show compact recent history
- `git diff` -> show unstaged changes
- `git diff --staged` -> show staged changes

### Stage and commit

- `git add <file>` -> stage one file for next commit
- `git add .` -> stage all current changes
- `git commit -m "docs: add guide"` -> create commit with short message
- `git commit --amend` -> update most recent commit

### Branch basics

- `git branch` -> list local branches
- `git switch -c feature/my-change` -> create and switch to new branch
- `git switch main` -> return to main branch
- `git merge feature/my-change` -> merge branch into current branch

### Remote basics

- `git remote -v` -> list remote URLs
- `git pull` -> fetch and merge latest remote updates
- `git push` -> push commits to remote
- `git push --tags` -> push local tags to remote

### Tags and release checkpoints

- `git tag -a v0.1.0 -m "milestone"` -> create annotated tag
- `git tag --list` -> list all tags
- `git show v0.1.0` -> inspect tagged commit details

## Less common but useful commands

### Undo and restore

- `git restore <file>` -> discard unstaged file changes
- `git restore --staged <file>` -> unstage file but keep local edits
- `git reset --soft HEAD~1` -> undo last commit, keep changes staged
- `git reset --hard HEAD~1` -> undo last commit and discard local changes

### Temporary save (stash)

- `git stash` -> save uncommitted work temporarily
- `git stash list` -> show stashed entries
- `git stash pop` -> reapply latest stash and remove it from stash list

### Investigation and cleanup

- `git blame <file>` -> show who changed each line last
- `git reflog` -> show local HEAD movement history
- `git clean -fd` -> remove untracked files and folders

### Ignore rules

- Edit `.gitignore` to keep local-only files out of Git tracking.
