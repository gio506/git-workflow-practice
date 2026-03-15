#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

required_files=(
  "README.md"
  "CHEATSHEET.md"
  "FILES_EXPLAINED.md"
  ".gitignore"
  "examples/project-log.txt"
)

for file in "${required_files[@]}"; do
  test -f "$file" || {
    echo "Missing required file: $file" >&2
    exit 1
  }
done

if [[ "${GITHUB_ACTIONS:-false}" != "true" ]]; then
  git show-ref --verify --quiet refs/heads/main || git show-ref --verify --quiet refs/remotes/origin/main || {
    echo "Missing local branch: main" >&2
    exit 1
  }

  git show-ref --verify --quiet refs/heads/dev || git show-ref --verify --quiet refs/remotes/origin/dev || {
    echo "Missing local branch: dev" >&2
    exit 1
  }
fi

grep -Eqi "project|repository|workflow" README.md
grep -q "\[01\]" examples/project-log.txt || grep -q "project log" examples/project-log.txt

echo "Repository validation passed."
