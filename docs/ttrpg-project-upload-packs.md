# TTRPG Project Upload Packs

**Purpose:** Provide recommended file sets for using USTF v3.0 inside a ChatGPT TTRPG Project while preserving spare file slots for campaign saves, Session Delta files, and state updates.

This document describes two runtime upload approaches:

- Universal Plus upload set: exactly 20 files, leaving 5 spare slots under a 25-file limit
- Pro upload set: 35 files, leaving 5 spare slots under a 40-file limit

These packs are for ChatGPT Project runtime use. They are not intended to replace the full GitHub source repository.

---

## Why separate upload packs exist

The full USTF repository contains source specifications, templates, ADRs, book-building material, release notes, and public documentation.

A ChatGPT Project should not upload the entire repository for active campaign play.

For active campaign operation, the project needs:

1. campaign state files;
2. runtime instructions;
3. Core invariants and operating systems;
4. relevant genre modules;
5. selected reference procedures and templates;
6. spare file slots for future Session Delta and save-state updates.

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

## Universal Plus Upload Set — 20 files

Use this set when the project file limit is 25 files and 5 slots should remain free.

This is now a universal USTF runtime set rather than an FSS-specific set. It increases individual file length by merging related source documents, preserving cross-genre functionality while keeping the file count exactly 20.

The upload-ready pack uses unique flattened filenames to avoid duplicate `index.md` conflicts when files are uploaded into ChatGPT Projects.

Recommended contents:

```text
01-project-instructions-and-runtime-policy.md
02-runtime-quickstart-minimal-core.md
03-campaign-state-pack-and-save-templates.md
04-core-foundation-overview-architecture-api.md
05-core-actor-world-character.md
06-core-time-knowledge-resolution.md
07-core-resource-organization.md
08-core-conflict-investigation.md
09-core-economy-politics-campaign-ops.md
10-core-module-standard-playtest-versioning.md
11-reference-operating-procedures.md
12-modules-modern-corporate-espionage.md
13-modules-military-medieval.md
14-modules-horror-space-cyberpunk.md
15-module-compatibility-selection.md
16-templates-actors-state-ledgers.md
17-templates-conflict-investigation-economy-politics.md
18-templates-session-delta-playtest-rule-change.md
19-appendix-glossary-rule-index-file-map.md
20-upload-save-continuity-policy.md
```

The 20 files should be uploaded as the universal engine layer.

Use the 5 spare project-file slots for current campaign state, for example:

```text
current-state.md
knowledge-ledger.md
open-threads.md
resource-ledger.md
session-delta-or-campaign-save.md
```

For organization-heavy campaigns, replace one spare slot with `organization-state.md`.

For investigation-heavy campaigns, replace one spare slot with an active `investigation-case-file.md`.

---

## Pro Upload Set — 35 files

Use this set when the project file limit is 40 files and 5 slots should remain free.

The Pro set may remain more granular because it has more file slots available. It is suitable when the project can keep separate files for campaign state, Core layers, reference procedures, and selected modules.

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

In the Universal Plus 20 set, selected appendix material is merged into `19-appendix-glossary-rule-index-file-map.md` because glossary and rule IDs help cross-genre operation.

---

## Project instruction reminder

The TTRPG project should state that USTF v3.0 is the default campaign runtime and that current campaign state files override chat memory.

Recommended priority order:

```text
1. System safety rules
2. TTRPG project instructions
3. Current campaign state files
4. USTF runtime/upload pack files
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
