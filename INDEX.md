# USTF v3.0 Repository Index

**Document Type:** Operational Index  
**Layer:** Repository / Runtime Support  
**Version:** v3.0.0-draft  
**Status:** Draft

---

## 1. Runtime Files

Files intended for ChatGPT Project execution.

```text
runtime/chatgpt-project-instructions.md
runtime/ustf-runtime-quickstart.md
runtime/ustf-minimal-core-pack.md
runtime/campaign-state-pack-standard.md
runtime/USTF_v3.0_runtime_pack.md
```

Use these when the immediate goal is to run a campaign.

---

## 2. Core Specification

Stable engine rules.

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

Core files define the engine. Modules may extend but not override them.

---

## 3. Reference Procedures

Recommended operating procedures.

```text
reference/world-update-cycle.md
reference/organization-turn-procedure.md
reference/long-term-project-procedure.md
reference/investigation-procedure.md
reference/campaign-session-loop.md
```

Reference procedures are executable guidance, not immutable Core.

---

## 4. Genre Modules

Topic-specific implementation layers.

```text
modules/modern-realist/index.md
modules/corporate/index.md
modules/medieval-political/index.md
modules/espionage/index.md
modules/horror-occult/index.md
modules/space-opera/index.md
modules/military-war/index.md
modules/cyberpunk/index.md
modules/module-compatibility-matrix.md
```

Genre modules define additional resources, risks, procedures, and calibration settings.

---

## 5. Templates

Reusable state and procedure templates.

```text
templates/actor-template.md
templates/world-state-template.md
templates/time-log-template.md
templates/knowledge-entry-template.md
templates/resolution-record-template.md
templates/resource-ledger-template.md
templates/organization-state-template.md
templates/conflict-tracker-template.md
templates/investigation-case-template.md
templates/economy-logistics-ledger-template.md
templates/political-social-state-template.md
templates/campaign-operations-checklist.md
templates/session-delta-template.md
templates/knowledge-ledger-template.md
templates/campaign-state-pack-template.md
templates/module-template.md
templates/rule-change-proposal-template.md
templates/playtest-report-template.md
templates/character-template.md
templates/campaign-brief-template.md
templates/open-threads-template.md
```

Templates are intended to reduce drift during long campaigns.

---

## 6. ADRs

Architecture Decision Records.

```text
adr/ADR-0001-actor-model.md
adr/ADR-0002-llm-deployment-layer.md
adr/ADR-0003-world-state-and-knowledge-separation.md
adr/ADR-0004-resolution-as-world-state-change.md
adr/ADR-0005-conflict-is-not-combat.md
adr/ADR-0006-investigation-as-world-evidence.md
adr/ADR-0007-campaign-state-is-canon.md
adr/ADR-0008-modules-extend-not-override-core.md
adr/ADR-0009-playtests-validate-rules-not-world.md
adr/ADR-0010-module-playbooks-are-implementations.md
adr/ADR-0011-genre-scale-parameters.md
adr/ADR-0012-unknown-forces-remain-actors.md
adr/ADR-0013-character-is-actor-subtype.md
adr/ADR-0014-source-first-book-ready.md
adr/ADR-0015-indexes-are-operational-tools.md
adr/ADR-0016-runtime-pack-is-derived-artifact.md
```

ADRs preserve the reasoning behind major architectural choices.

---

## 7. Book and Release Files

```text
book/book-build-plan.md
book/github-release-structure.md
book/core-rulebook-outline.md
book/public-release-readme.md
```

These files support future public GitHub and compiled rulebook releases.

- `adr/ADR-0017-license-policy.md` — license policy decision.
