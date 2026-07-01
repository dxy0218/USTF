# TTRPG Project Upload Packs

**Purpose:** Provide recommended file sets for using USTF v3.0 inside a ChatGPT TTRPG Project under different project-file limits.

This document describes two runtime upload sets:

- Plus upload set: up to 25 files
- Pro upload set: up to 40 files

These packs are for ChatGPT Project runtime use. They are not intended to replace the full GitHub source repository.

---

## Why separate upload packs exist

The full USTF repository contains source specifications, templates, ADRs, book-building material, release notes, and public documentation.

A ChatGPT Project should not necessarily upload the entire repository.

For active campaign operation, the project needs:

1. Campaign state files
2. Runtime instructions
3. Core invariants and operating systems
4. Relevant genre modules
5. Selected reference procedures and templates

This keeps retrieval focused and reduces noise during play.

---

## Plus Upload Set — 25 files

Use this set when the project file limit is 25 files.

Recommended contents:

```text
00-campaign-brief.md
01-current-state.md
02-actor-registry.md
03-organization-state.md
04-knowledge-ledger.md
05-open-threads.md
06-resource-ledger.md
07-event-log-summary.md
99-archive-index.md

runtime/USTF_v3.0_runtime_pack.md
runtime/campaign-state-pack-standard.md
runtime/ustf-runtime-quickstart.md
runtime/chatgpt-project-instructions.md

core/02-core-invariants.md
core/04-actor-model.md
core/05-world-state-model.md
core/06-time-continuity-system.md
core/07-knowledge-information-system.md
core/08-resolution-system.md
core/09-resource-system.md
core/10-organization-layer.md

modules/modern-realist/index.md
modules/corporate/index.md
modules/espionage/index.md
modules/military-war/index.md
```

This is the minimum recommended operating set for the FSS / modern military-corporate campaign style.

---

## Pro Upload Set — 40 files

Use this set when the project file limit is 40 files.

Recommended contents:

```text
00-campaign-brief.md
01-current-state.md
02-actor-registry.md
03-organization-state.md
04-knowledge-ledger.md
05-open-threads.md
06-resource-ledger.md
07-event-log-summary.md
99-archive-index.md

runtime/USTF_v3.0_runtime_pack.md
runtime/campaign-state-pack-standard.md
runtime/ustf-runtime-quickstart.md
runtime/chatgpt-project-instructions.md
runtime/ustf-minimal-core-pack.md

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
core/18-character-layer.md

reference/world-update-cycle.md
reference/organization-turn-procedure.md
reference/long-term-project-procedure.md

modules/modern-realist/index.md
modules/corporate/index.md
modules/espionage/index.md
modules/military-war/index.md
modules/medieval-political/index.md
modules/module-compatibility-matrix.md

templates/session-delta-template.md
```

This is the recommended full operating set for Pro-tier project limits.

---

## Files intentionally excluded from runtime upload packs

The following repository areas are useful for development and public documentation but usually not needed in active project runtime:

```text
adr/
appendix/
book/
README.md
VERSION.md
CHANGELOG.md
LICENSE.md
CONTRIBUTING.md
CODE_OF_CONDUCT.md
PUBLISH_TO_GITHUB.md
publish_to_github.sh
QA_REPORT.md
```

They should remain in GitHub but usually should not consume ChatGPT Project file slots.

---

## Project instruction reminder

The TTRPG project should state that USTF v3.0 is the default campaign runtime and that current campaign state files override chat memory.

Recommended priority order:

```text
1. System safety rules
2. TTRPG project instructions
3. USTF Runtime Pack
4. Current campaign state files
5. Knowledge ledger / open threads / resource ledger
6. Relevant genre modules
7. Older TTRPG Core v2.2 files
8. Historical chat context and model memory
```

---

## Update policy

When USTF source changes, regenerate the upload packs from the canonical repository source.

The upload packs are derived runtime artifacts.

The GitHub source repository remains canonical.
