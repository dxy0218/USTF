#!/usr/bin/env bash
set -euo pipefail

REPO_FULL_NAME="dxy0218/USTF"
DESCRIPTION="Universal Strategic TTRPG Framework — a source-first, LLM-executable campaign engine specification for persistent fictional worlds."

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI 'gh' is not installed. Install it first: https://cli.github.com/"
  exit 1
fi

gh auth status >/dev/null

if [ ! -d .git ]; then
  git init
fi

git add .
if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "Initial USTF v3.0 draft"
fi

git branch -M main

gh repo create "$REPO_FULL_NAME" \
  --public \
  --source=. \
  --remote=origin \
  --push \
  --description "$DESCRIPTION"

git tag -f v3.0.0-draft.1
git push -f origin v3.0.0-draft.1

echo "Published: https://github.com/$REPO_FULL_NAME"
