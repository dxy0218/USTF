# Publish USTF to GitHub

Recommended public repository name:

```text
USTF
```

Recommended full name:

```text
dxy0218/USTF
```

Description:

```text
Universal Strategic TTRPG Framework — a source-first, LLM-executable campaign engine specification for persistent fictional worlds.
```

## Option A: GitHub CLI

```bash
gh auth login
unzip USTF_v3.0_full_repository_draft_QA1_license_selected.zip
cd USTF_v3.0_full_repository_draft_QA1
git init
git add .
git commit -m "Initial USTF v3.0 draft"
git branch -M main
gh repo create dxy0218/USTF \
  --public \
  --source=. \
  --remote=origin \
  --push \
  --description "Universal Strategic TTRPG Framework — a source-first, LLM-executable campaign engine specification for persistent fictional worlds."
```

## Option B: Create the repo on GitHub first

1. Create a new public repository named `USTF` under `dxy0218`.
2. Do not initialize it with README, license, or gitignore, because this package already includes them.
3. Run:

```bash
unzip USTF_v3.0_full_repository_draft_QA1_license_selected.zip
cd USTF_v3.0_full_repository_draft_QA1
git init
git add .
git commit -m "Initial USTF v3.0 draft"
git branch -M main
git remote add origin git@github.com:dxy0218/USTF.git
git push -u origin main
```

## Initial release tag

After pushing:

```bash
git tag v3.0.0-draft.1
git push origin v3.0.0-draft.1
```
