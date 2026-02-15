# Git Beginner Cheatsheet

Quick reference for what each command is for.

## Setup & status

- `git status` -> show changed files and branch state
- `git add <file>` -> stage file(s) for next commit
- `git add .` -> stage all current changes

## Commiting

- `git commit -m "docs: add guide"` -> save staged changes with a short message
- `git log --oneline --decorate -n 10` -> view recent compact commit history

## Branch concepts (for later)

- `git branch` -> list branches
- `git checkout -b feature/my-change` -> create and switch to a feature branch
- `git switch main` -> move back to main branch

## Tags & release checkpoints

- `git tag -a v0.1.0 -m "milestone"` -> create annotated tag
- `git tag --list` -> list tags
- `git show v0.1.0` -> inspect tagged commit

## Remote basics

- `git push` -> push commits to remote
- `git push --tags` -> push tags to remote

## Ignore rules

- Edit `.gitignore` to keep local-only files out of Git tracking.
