# Files Explained

This file gives a quick purpose for each key file and folder in this repo.

## Root files

- `README.md`
  - Main learning guide for workflow, PR flow, tags, and CI.
- `CHEATSHEET.md`
  - Fast command reference for daily Git use.
- `FILES_EXPLAINED.md`
  - This map of repository content.
- `.gitignore`
  - Common ignore rules for OS, editor, and temporary files.
- `.markdownlint.json`
  - Markdown lint configuration.

## Documentation folder

- `docs/commit-style.md`
  - Rules and examples for short smart commits.
- `docs/review-checklist.md`
  - Small checklist for PR review and release readiness.

## GitHub templates and config

- `.github/PULL_REQUEST_TEMPLATE.md`
  - Default PR structure.
- `.github/ISSUE_TEMPLATE/bug.md`
  - Bug report form.
- `.github/ISSUE_TEMPLATE/feature.md`
  - Feature request form.
- `.github/workflows/ci.yml`
  - CI pipeline for structure checks, Markdown linting, practice validation,
    and final status gating.
- `.github/link-check-config.json`
  - Link-check settings retained for future docs checks.

## Example and validation content

- `examples/project-log.txt`
  - Tiny sample file for commit practice.
- `scripts/validate_repo.sh`
  - Checks key repo files and the example practice content.
