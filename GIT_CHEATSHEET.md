# Git Command Cheatsheet (Beginner)

This file lists popular Git commands, what they do, and where to see more details.

## 1) Setup and identity

- `git config --global user.name "Your Name"`  
  Set your commit author name.
- `git config --global user.email "you@example.com"`  
  Set your commit author email.
- `git config --list`  
  Show your current Git configuration.

## 2) Start and connect repositories

- `git init`  
  Start a new Git repository in the current folder.
- `git clone <repo-url>`  
  Download an existing repository locally.
- `git remote -v`  
  Show connected remotes (like `origin`).

## 3) Check current state

- `git status`  
  See changed files, staged files, and branch info.
- `git branch --show-current`  
  Show your current branch name.
- `git log --oneline --decorate -n 10`  
  Show compact recent commit history.
- `git diff`  
  See unstaged code changes.
- `git diff --staged`  
  See staged changes.

## 4) Stage and commit changes

- `git add <file>`  
  Stage one file.
- `git add .`  
  Stage all changes in current directory.
- `git commit -m "docs: add setup notes"`  
  Create a commit with a short message.
- `git commit --amend`  
  Update the most recent commit.

## 5) Branch basics (concepts)

- `git branch`  
  List local branches.
- `git switch -c feature/my-change`  
  Create and switch to a new branch.
- `git switch main`  
  Switch to `main`.
- `git merge feature/my-change`  
  Merge a branch into your current branch.

## 6) Undo and restore safely

- `git restore <file>`  
  Discard unstaged changes in a file.
- `git restore --staged <file>`  
  Unstage a file.
- `git revert <commit-hash>`  
  Create a new commit that undoes a previous commit.

## 7) Tags and releases

- `git tag`  
  List tags.
- `git tag -a v1.0.0 -m "Release v1.0.0"`  
  Create annotated tag.
- `git show v1.0.0 --no-patch`  
  Show what commit a tag points to.

## 8) Push and pull

- `git push origin main`  
  Push local commits to remote `main`.
- `git pull --rebase origin main`  
  Update branch with remote changes using rebase.
- `git fetch --all --tags`  
  Download remote updates without merging.

## Where to find command help

- `git help <command>` (example: `git help commit`)  
  Open the full manual page.
- `git <command> -h` (example: `git commit -h`)  
  Show a short help summary in terminal.
- Official docs: <https://git-scm.com/docs>  
  Search complete documentation for all commands.
