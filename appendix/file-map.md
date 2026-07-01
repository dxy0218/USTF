# USTF v3.0 File Map

**Document Type:** File Map  
**Layer:** Appendix / Repository Operations  
**Version:** v3.0.0-draft  
**Status:** Draft

---

## 1. Minimum ChatGPT Project Setup

Use this when project file slots are limited.

```text
runtime/USTF_v3.0_runtime_pack.md
campaigns/<campaign>/current-state.md
campaigns/<campaign>/knowledge-ledger.md
campaigns/<campaign>/open-threads.md
modules/<selected-module>/index.md
```

Optional but recommended:

```text
templates/session-delta-template.md
templates/actor-template.md
templates/organization-state-template.md
```

---

## 2. Full Runtime Setup

Use this when file slots and context budget allow.

```text
runtime/chatgpt-project-instructions.md
runtime/ustf-runtime-quickstart.md
runtime/ustf-minimal-core-pack.md
runtime/campaign-state-pack-standard.md
core/02-core-invariants.md
core/03-public-api.md
core/07-knowledge-information-system.md
core/08-resolution-system.md
core/15-campaign-operations.md
modules/<selected-module>/index.md
templates/session-delta-template.md
templates/knowledge-ledger-template.md
```

---

## 3. Core Development Setup

Use this when editing USTF itself.

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

---

## 4. Public Release Setup

Use this for GitHub or public documentation.

```text
README.md
VERSION.md
CHANGELOG.md
INDEX.md
core/
reference/
modules/
templates/
appendix/glossary.md
appendix/rule-id-index.md
book/core-rulebook-outline.md
book/public-release-readme.md
LICENSE.md
```

Campaign folders should be public only after cleaning or fictionalization.

---

## 5. Private Playtest Setup

Use this for actual long campaigns.

```text
campaigns/<campaign>/campaign-brief.md
campaigns/<campaign>/current-state.md
campaigns/<campaign>/actor-registry.md
campaigns/<campaign>/organization-state.md
campaigns/<campaign>/knowledge-ledger.md
campaigns/<campaign>/open-threads.md
campaigns/<campaign>/event-log-summary.md
campaigns/<campaign>/session-deltas/
campaigns/<campaign>/archive/
```

The active state pack should remain compact. Archives may be long.
