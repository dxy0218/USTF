# USTF v3.0 — Book Build Plan

**File Path:** `book/book-build-plan.md`  
**Document Type:** Build Plan  
**Layer:** Publication / Repository Layer  
**Version:** v3.0.0-draft  
**Status:** Draft  
**Priority:** Design / Build Reference  

## Summary

USTF is source-first and book-ready.

The canonical source is the modular Markdown repository.

The public rulebook is a generated or assembled artifact.

This document defines how the GitHub-facing rulebook should be constructed from source files without creating a separate, divergent ruleset.

---

## 1. Build Principle

**BOOK-001:** Source files are canon.

**BOOK-002:** Rulebooks, PDFs, websites, SRDs, and runtime packs are build products.

**BOOK-003:** Public rulebook text MAY expand explanations, but MUST NOT change rule meaning.

**BOOK-004:** Examples MUST remain clearly marked as examples.

---

## 2. Target Publications

USTF should support several publication outputs:

```text
1. USTF Core Specification
2. USTF Runtime Pack for LLM Projects
3. USTF Human Rulebook
4. USTF Module Developer Guide
5. USTF Campaign Operator Guide
6. USTF Templates Pack
7. USTF GitHub Pages / Web Edition
8. USTF PDF Edition
```

The first two are priority outputs for v3.0.

---

## 3. Core Specification Build

The Core Specification should assemble:

```text
core/00-overview.md
core/01-architecture-principles.md
core/02-core-invariants.md
core/03-public-api.md
core/04-actor-model.md
core/05-world-state-model.md
core/06-time-continuity-system.md
core/07-knowledge-information-system.md
core/08-resolution-system.md
core/09-resource-system.md
core/10-organization-layer.md
core/11-conflict-layer.md
core/12-investigation-layer.md
core/13-economy-logistics-layer.md
core/14-political-social-layer.md
core/15-campaign-operations.md
core/16-module-standard.md
core/17-playtest-versioning-protocol.md
core/18-character-layer.md
```

This build should preserve rule IDs and normative keywords.

---

## 4. Runtime Pack Build

The Runtime Pack should include only the minimum needed for repeated ChatGPT Project play.

Recommended files:

```text
runtime/chatgpt-project-instructions.md
runtime/ustf-runtime-quickstart.md
runtime/ustf-minimal-core-pack.md
runtime/campaign-state-pack-standard.md
templates/session-delta-template.md
templates/knowledge-ledger-template.md
templates/campaign-state-pack-template.md
```

Runtime Pack is optimized for execution, not full explanation.

---

## 5. Human Rulebook Build

The Human Rulebook may reorganize source files into a reading order:

```text
Part I — What USTF Is
Part II — Core Engine
Part III — Actors, Time, Knowledge, Resources
Part IV — Conflict, Investigation, Economy, Politics
Part V — Running Campaigns
Part VI — Modules
Part VII — Templates and Examples
Appendix — Versioning, ADR Index, Glossary
```

Human-facing chapters MAY include:

- Expanded rationale
- Examples
- Diagrams
- Designer notes
- Common mistakes
- Setup walkthroughs

These additions MUST NOT become hidden rules.

---

## 6. Module Developer Guide Build

The Module Developer Guide should include:

```text
core/16-module-standard.md
modules/module-compatibility-matrix.md
templates/module-template.md
templates/genre-module-implementation-checklist.md
templates/campaign-module-selection-sheet.md
```

Plus selected example modules.

---

## 7. Campaign Operator Guide Build

The Campaign Operator Guide should include:

```text
runtime/ustf-runtime-quickstart.md
runtime/campaign-state-pack-standard.md
reference/campaign-session-loop.md
reference/world-update-cycle.md
reference/organization-turn-procedure.md
reference/long-term-project-procedure.md
reference/investigation-procedure.md
templates/session-delta-template.md
```

This document is for people running long campaigns.

---

## 8. Build Metadata

Every generated build SHOULD declare:

```text
Build title
Engine version
Build version
Build date
Source commit or source snapshot
Included files
Excluded files
License
Compatibility notes
```

If published publicly, the build SHOULD include a changelog link.

---

## 9. Non-Divergence Rule

Public rulebooks MUST NOT be edited independently as the canonical source.

If an error is found in the book:

```text
1. Fix source file.
2. Record change in CHANGELOG.
3. Rebuild book artifact.
```

Manual book-only edits create rule drift and are prohibited.

---

## 10. Future Tooling

USTF may later support:

```text
Markdown include scripts
Pandoc build
MkDocs / GitHub Pages
PDF export
Versioned website
Rule ID index generation
Glossary generation
Module compatibility matrix generation
```

Tooling is optional for v3.0.

Repository structure should be prepared for it.
