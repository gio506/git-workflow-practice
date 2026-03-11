# Review Checklist

Use this checklist before approving a PR and before tagging a release.

## PR review checklist

- [ ] PR targets the correct base branch (`dev` for feature work).
- [ ] Commits are short, clear, and scoped.
- [ ] Changes are easy to understand.
- [ ] README/docs are updated if behavior changed.
- [ ] CI checks are green (lint, links, templates/spellcheck).
- [ ] No obvious typos or broken links.

## Release checklist (`dev` -> `main`)

- [ ] `dev` branch is stable and reviewed.
- [ ] Final PR from `dev` to `main` is approved.
- [ ] Merge completed successfully.
- [ ] Tag created on `main` (e.g., `v0.1.0`).
- [ ] Release notes written.
