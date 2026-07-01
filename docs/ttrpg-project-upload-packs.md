# TTRPG Project Upload Packs

**Purpose:** Provide recommended file sets for using USTF v3.0 inside a ChatGPT TTRPG Project while preserving spare file slots for campaign saves, Session Delta files, and state updates.

This document describes two runtime upload sets:

- Plus upload set: 20 files, leaving 5 spare slots under a 25-file limit
- Pro upload set: 35 files, leaving 5 spare slots under a 40-file limit

These packs are for ChatGPT Project runtime use. They are not intended to replace the full GitHub source repository.

---

## Why separate upload packs exist

The full USTF repository contains source specifications, templates, ADRs, book-building material, release notes, and public documentation.

A ChatGPT Project should not upload the entire repository for active campaign play.

For active campaign operation, the project needs:

1. Campaign state files
2. Runtime instructions
3. Core invariants and operating systems
4. Relevant genre modules
5. Selected reference procedures and templates
6. Spare file slots for future Session Delta and save-state updates

This keeps retrieval focused, reduces noise during play, and avoids consuming all available project-file capacity.

---

## Reserve-slot policy

Do not fill the project file limit completely.

Long campaigns need spare slots for:

```text
new Session Delta files
updated current-state files
new knowledge-ledger snapshots
new open-threads snapshots
archived event summaries
cross-chat recovery saves
```

Recommended reserve:

```text
Plus: use 20 of 25 slots, keep 5 spare.
Pro: use 35 of 40 slots, keep 5 spare.
```

---

## Plus Upload Set — 20 files

Use this set when the project file limit is 25 files and 5 slots should remain free.

The upload-ready pack uses unique flattened filenames to avoid duplicate `index.md` conflicts when files are uploaded into ChatGPT Projects.

Recommended contents:

```text
campaign-FSS-save-1995-01.md
campaign-01-current-state.md
campaign-02-actor-registry.md
campaign-03-organization-state.md
campaign-04-knowledge-ledger.md
campaign-05-open-threads.md
campaign-06-resource-ledger.md

runtime-USTF-v3-runtime-pack.md

core-02-core-invariants.md
core-04-actor-model.md
core-05-world-state-model.md
core-06-time-continuity-system.md
core-07-knowledge-information-system.md
core-08-resolution-system.md
core-09-resource-system.md
core-10-organization-layer.md

module-modern-realist.md
module-corporate.md
module-espionage.md
module-military-war.md
```

This is the compact recommended operating set for the FSS / modern military-corporate campaign style.

---

## Pro Upload Set — 35 files

Use this set when the project file limit is 40 files and 5 slots should remain free.

The upload-ready pack uses unique flattened filenames to avoid duplicate `index.md` conflicts when files are uploaded into ChatGPT Projects.

Recommended contents:

```text
campaign-FSS-save-1995-01.md
campaign-00-campaign-brief.md
campaign-01-current-state.md
campaign-02-actor-registry.md
campaign-03-organization-state.md
campaign-04-knowledge-ledger.md
campaign-05-open-threads.md
campaign-06-resource-ledger.md
campaign-07-event-log-summary.md
campaign-99-archive-index.md

runtime-USTF-v3-runtime-pack.md
runtime-campaign-state-pack-standard.md
runtime-ustf-runtime-quickstart.md

core-02-core-invariants.md
core-04-actor-model.md
core-05-world-state-model.md
core-06-time-continuity-system.md
core-07-knowledge-information-system.md
core-08-resolution-system.md
core-09-resource-system.md
core-10-organization-layer.md
core-11-conflict-layer.md
core-12-investigation-layer.md
core-13-economy-logistics-layer.md
core-14-political-social-layer.md
core-15-campaign-operations.md

reference-world-update-cycle.md
reference-organization-turn-procedure.md
reference-long-term-project-procedure.md

module-modern-realist.md
module-corporate.md
module-espionage.md
module-military-war.md
module-medieval-political.md

template-session-delta.md
```

This is the recommended full operating set for Pro-tier project limits while preserving spare file slots for long-campaign continuity.

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
