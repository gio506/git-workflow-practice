# Git Workflow Practice (Beginner Friendly)

This repository is a simple learning space for basic Git workflow habits.

## What you will learn

- How to write short, clear commit messages (conventional-ish style)
- What branches are and why teams use them
  (explained here, not required for this practice)
- How tags and releases work together
- How `.gitignore` helps keep your repository clean
- How to follow a repeatable practice flow with 10 commits and 2 tags

## Repository tree (with quick explanations)

```text
git-workflow-practice/
├── .github/
│   └── workflows/
│       └── ci.yml            # CI workflow that checks Markdown formatting
├── examples/
│   └── project-log.txt       # Tiny text-based log used in commit practice
├── .gitignore                # Files/folders Git should ignore
├── CHEATSHEET.md             # Quick "what command is for what" reference
└── README.md                 # Main guide and reproducible instructions
```

## 1) Commit style (short and conventional-ish)

Use this lightweight format:

- `type: short description`
- Keep it short, action-oriented, and lowercase after the `:`

Good `type` values for beginners:

- `feat` -> new feature/content
- `fix` -> bug or correction
- `docs` -> documentation only
- `chore` -> maintenance work

Examples:

- `docs: add beginner git workflow guide`
- `feat: add project log starter`
- `chore: add markdown lint workflow`

## 2) Branching concepts (explained only)

For this repo, practice on `main` only.

Still, you should know the idea:

- `main`: stable/default branch
- `feature/*`: where teams build new work safely
- Pull Request (PR): review step before merging feature work into `main`

So even if you do not use branches here,
this model is how most teams collaborate.

## 3) Tags and releases

A **tag** is a named pointer to a commit (often used for versions).

Common patterns:

- `v0.1.0` -> first practice milestone
- `v1.0.0` -> first stable release-like checkpoint

A **release** on Git hosting platforms
is usually built from a tag and includes notes.

## 4) `.gitignore` examples

This repo includes practical ignore patterns for:

- OS files (`.DS_Store`, `Thumbs.db`)
- Editor settings (`.vscode/`, `.idea/`)
- Logs and temp files (`*.log`, `tmp/`)

If a file should stay local and not be shared,
add a pattern to `.gitignore`.

## 5) Reproducible practice: 10 commits + 2 tags

Follow these exact commands from the repo root:

```bash
# 0) Start clean
git status

# 1) Create first entry
echo "[01] init project log" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 01"

# 2)
echo "[02] describe goal" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 02"

# 3)
echo "[03] write first workflow note" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 03"

# 4)
echo "[04] track progress" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 04"

# 5)
echo "[05] checkpoint before first tag" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 05"

# Tag after commit 5
git tag -a v0.1.0 -m "practice milestone after 5 commits"

# 6)
echo "[06] continue practice" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 06"

# 7)
echo "[07] refine notes" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 07"

# 8)
echo "[08] add review reminder" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 08"

# 9)
echo "[09] prep for final tag" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 09"

# 10)
echo "[10] complete learning cycle" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add project log entry 10"

# Tag after commit 10
git tag -a v1.0.0 -m "practice completion after 10 commits"

# Verify
git log --oneline --decorate -n 12
git tag --list
```

Expected result:

- 10 new commits from the practice flow
- 2 tags: `v0.1.0` and `v1.0.0`

## 6) CI basics in this repo

This repo contains one CI workflow:

- **Markdown Lint**: checks Markdown files on push and pull requests.

The workflow file is at `.github/workflows/ci.yml`.
