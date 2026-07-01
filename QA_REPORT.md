# USTF v3.0 Repository QA Report — Pass 01

**Repository:** `USTF_v3.0_full_repository_draft_QA1`  
**Date:** 2026-07-01  
**QA Type:** Structural, consistency, runtime-readiness, release-readiness  
**Result:** Pass with notes  

---

## 1. Summary

This QA pass checked the merged USTF v3.0 repository draft for file coverage, numbering continuity, rule ID duplication, metadata path consistency, Runtime Pack readiness, and GitHub release gaps.

The repository is structurally usable as a v3.0 draft. No blocking Core/ADR numbering gaps or duplicate active rule IDs were found.

---

## 2. Automated Checks

| Check | Result | Notes |
|---|---|---|
| Markdown file count | Pass | 110 Markdown files after QA additions. |
| Core numbering | Pass | `core/00` through `core/18` present and continuous. |
| ADR numbering | Pass | `ADR-0001` through `ADR-0016` present and continuous. |
| Active rule ID duplication | Pass | No duplicate active rule IDs outside derived book artifact. |
| File Path metadata | Pass | No mismatches in source files. |
| Required top-level directories | Pass | `runtime`, `core`, `reference`, `modules`, `templates`, `adr`, `appendix`, `book`, `campaigns` present. |
| Runtime Pack presence | Pass | Runtime files and combined Runtime Pack present. |
| Campaign state template presence | Pass | Added `campaigns/_template/` active state file set. |
| GitHub release placeholders | Pass with caution | Added placeholder `LICENSE.md`, `CONTRIBUTING.md`, and `CODE_OF_CONDUCT.md`. License must be selected before public release. |

---

## 3. Fixes Applied in QA1

### QA1-FIX-001 — Runtime path correction

Updated `runtime/ustf-runtime-quickstart.md`:

- Replaced old `core/core-invariants.md` reference with `core/02-core-invariants.md`.
- Replaced generic `campaign/...` references with `campaigns/<campaign-id>/...` references.

### QA1-FIX-002 — Campaign template directory added

Added:

```text
campaigns/_template/
├── 00-campaign-brief.md
├── 01-current-state.md
├── 02-actor-registry.md
├── 03-organization-state.md
├── 04-knowledge-ledger.md
├── 05-open-threads.md
├── 06-resource-ledger.md
├── 07-event-log-summary.md
└── 99-archive-index.md
```

This gives USTF a concrete campaign state pack skeleton instead of only abstract templates.

### QA1-FIX-003 — GitHub release placeholders added

Added:

```text
LICENSE.md
CONTRIBUTING.md
CODE_OF_CONDUCT.md
```

`LICENSE.md` is intentionally marked **Decision Pending**. Do not publish as an open public repository until the license is selected.

### QA1-FIX-004 — Combined core specification generated

Added:

```text
book/USTF-Core-Specification-v3.0.0.md
```

This is a derived artifact generated from `core/*.md`. Source files remain canonical.

### QA1-FIX-005 — Full manifest regenerated

Regenerated:

```text
MANIFEST_FULL.md
```

The manifest now includes file sizes and SHA256 short hashes.

---

## 4. Non-Blocking Notes

### QA1-NOTE-001 — Some source files exceed Runtime Context Budget guidance

Several Core files exceed the recommended compact runtime size. This is acceptable for the full repository, but these files should not all be placed into ChatGPT Project reference files at once.

Use:

```text
runtime/USTF_v3.0_runtime_pack.md
```

for active project deployment.

### QA1-NOTE-002 — License decision required before public release

Recommended candidates:

- CC BY 4.0 if broad reuse is desired.
- CC BY-SA 4.0 if derivatives should remain share-alike.
- CC BY-NC-SA 4.0 if non-commercial use is preferred.

Do not leave `LICENSE.md` as Decision Pending in a public release.

### QA1-NOTE-003 — Combined book is derived, not canonical

The combined book artifact duplicates Core content. Future edits should be made to source files, then the book artifact should be regenerated.

### QA1-NOTE-004 — Examples and placeholder paths remain intentional in templates

Some paths in templates are intentionally relative or placeholder-based. They are not treated as broken references if they describe campaign-specific generated files.

---

## 5. Recommended Next QA Pass

The next pass should be a **semantic consistency review**:

1. Check whether every Core file uses the same definitions of Actor, World State, Knowledge State, Resource, Conflict, and Module.
2. Check whether all modules consistently extend Core rather than override it.
3. Check whether examples accidentally imply exceptions to Core rules.
4. Check whether Runtime Pack contains enough rules to run without loading the full repository.
5. Check whether the public rulebook artifact needs more explanatory prose before GitHub release.

---

## 6. QA Verdict

USTF v3.0 full repository draft is structurally ready for continued design work and private ChatGPT Project deployment.

It is not yet ready for public GitHub release until license, contribution policy, and semantic consistency review are completed.
