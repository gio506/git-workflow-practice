# Git Workflow Practice (Beginner Friendly)

This repository is a tiny, text-based playground to learn practical Git habits.

## Learning goals

- Write short, conventional-ish commit messages.
- Understand branching concepts (we explain them, but this practice stays on `main`).
- Create and use tags for releases.
- Use a simple CI workflow that checks Markdown quality.
- Keep files clean with useful `.gitignore` rules.

## Repository tree (with quick file explanations)

```text
.
├── .github/
│   └── workflows/
│       └── ci.yml                # CI pipeline: runs markdown lint
├── examples/
│   └── project-log.txt           # Tiny text project log used for commit/tag practice
├── .gitignore                    # Ignore common OS/editor/temp files
├── GIT_CHEATSHEET.md             # Popular Git commands with plain-English notes
└── README.md                     # This step-by-step learning guide
```

## Quick command reference

Need a fast command lookup? Open [`GIT_CHEATSHEET.md`](./GIT_CHEATSHEET.md).
It includes popular commands, simple explanations, and where to find full command docs.

## Commit style (short + conventional-ish)

Use this pattern:

```text
<type>: <short summary>
```

Common `type` values:

- `docs`: docs or README changes
- `feat`: new feature
- `fix`: bug fix
- `chore`: tooling or maintenance

Good beginner examples:

- `docs: add git workflow guide`
- `feat: add project log starter`
- `fix: correct typo in release notes`
- `chore: add markdown lint workflow`

Tips:

- Keep it under ~50 characters when possible.
- Use present tense (`add`, not `added`).
- One commit = one clear intent.

## Branching concepts (explained, not used here)

In real projects:

- `main`: stable production-ready history.
- `feature/*`: branch per new change.
- `release/*`: prepare a version before shipping.
- `hotfix/*`: urgent fix from production.

For this practice repo, stay on `main` to focus on core commands first.

## Tags and releases

Tags mark important points in history (often releases):

- Lightweight tag: `git tag v0.1.0`
- Annotated tag (recommended): `git tag -a v0.1.0 -m "Release v0.1.0"`

List tags:

```bash
git tag
```

Show what a tag points to:

```bash
git show v0.1.0 --no-patch
```

## `.gitignore` examples

This repo includes starter rules for common clutter:

- macOS: `.DS_Store`
- Windows: `Thumbs.db`
- Editors: `.vscode/`, `.idea/`
- Logs/temp: `*.log`, `tmp/`, `.env`

Adjust it for your stack (Python, Node, Java, etc.) as needed.

## Reproducible practice: 10 commits + 2 tags

Run these commands from the repo root.

> Goal: make 10 small commits to `examples/project-log.txt` and create 2 tags.

```bash
# 0) Confirm you are on main
git branch --show-current

# 1) Commit 1
printf "- day 1: initialized log\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 1 log entry"

# 2) Commit 2
printf "- day 2: practiced git status\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 2 status practice"

# 3) Commit 3
printf "- day 3: practiced git add\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 3 add practice"

# 4) Commit 4
printf "- day 4: practiced git commit\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 4 commit practice"

# 5) Commit 5
printf "- day 5: practiced git log\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 5 log practice"

# Tag after commit 5
git tag -a v0.1.0 -m "Release v0.1.0"

# 6) Commit 6
printf "- day 6: practiced git diff\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 6 diff practice"

# 7) Commit 7
printf "- day 7: practiced git restore\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 7 restore practice"

# 8) Commit 8
printf "- day 8: practiced git tag\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 8 tag practice"

# 9) Commit 9
printf "- day 9: practiced git show\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 9 show practice"

# 10) Commit 10
printf "- day 10: reviewed workflow\n" >> examples/project-log.txt
git add examples/project-log.txt
git commit -m "docs: add day 10 workflow review"

# Tag after commit 10
git tag -a v0.2.0 -m "Release v0.2.0"

# Verify history and tags
git log --oneline --decorate -n 12
git tag
```

You now have a simple, repeatable history with 10 commits and 2 release tags.
