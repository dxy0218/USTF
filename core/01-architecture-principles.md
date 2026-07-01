# USTF Core Specification — 01 Architecture Principles

**File Path:** `core/01-architecture-principles.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Purpose:** Define the engineering principles that govern all USTF design.

---

## 0. Summary

Architecture Principles define how USTF rules should be designed.

They are not setting lore.

They are not optional advice.

They are constraints for maintaining USTF as a long-term, modular, language-model-executable campaign engine.

---

## AP-001: Source Is Canon

USTF source files are the canonical rule authority.

Generated rulebooks, PDFs, websites, summaries, and runtime packs are derived products.

Derived products MUST NOT change rule meaning.

---

## AP-002: Engine Before Content

USTF Core defines how the engine works before defining genre content.

Core SHOULD define interfaces, procedures, and invariants.

Core SHOULD NOT define setting-specific equipment, powers, classes, species, spell lists, or weapon catalogs.

---

## AP-003: Interface First

Each major system SHOULD expose a stable interface.

Examples:

```text
Actor API
Knowledge API
World State API
Resolution API
Resource API
Conflict API
Versioning API
```

Modules interact with Core through these interfaces.

Modules MUST NOT bypass them.

---

## AP-004: World Autonomy

The world runs independently of player attention.

Non-player Actors SHOULD continue pursuing goals according to their resources, knowledge, constraints, and decision logic.

The world MUST NOT pause merely because the player is not looking at a location, organization, or conflict.

---

## AP-005: Every Entity Can Be an Actor

Any entity that can affect World State MAY be modeled as an Actor.

This includes individuals, organizations, governments, armies, companies, markets, disasters, diseases, AI systems, and supernatural forces.

Actor is the universal action interface.

Character and Organization are Actor subtypes.

---

## AP-006: Information Is a Resource

Information is not merely narration.

Information may be acquired, hidden, stolen, sold, leaked, corrupted, misunderstood, or made obsolete.

Knowledge State MUST be tracked separately from World State.

---

## AP-007: Time Never Stops

Time advances for all relevant Actors.

Downtime, travel, research, negotiation, recovery, and administration are not empty gaps.

They are world update windows.

---

## AP-008: Simulation Before Randomness

USTF resolves world logic before invoking random uncertainty.

If an outcome follows clearly from established state, do not randomize it.

If an action requires process, model the process.

If uncertainty remains, resolve uncertainty.

Randomness is a tool for unknowns, not a substitute for causality.

---

## AP-009: Unknown Is Better Than Fake

If a fact has not been established and cannot be inferred, mark it as Unknown.

The assistant or operator MUST NOT fabricate continuity merely to fill a gap.

Unknown facts may later become established through investigation, world update, or state review.

---

## AP-010: Consequences Persist

Meaningful consequences remain part of World State until changed by further action.

USTF MUST NOT silently reset damage, death, exposure, debts, promises, reputation shifts, lost resources, or revealed secrets.

---

## AP-011: Modules Extend, Not Override

Genre modules MAY add specialized rules.

Modules MUST NOT override Core Invariants or Core interfaces.

A magic system, cybernetic system, cosmic horror system, or advanced technology system must still obey knowledge, time, consequence, and actor logic unless the Core itself is versioned.

---

## AP-012: Runtime Must Be Executable by Language Models

USTF must be readable by humans, but executable by language models.

Runtime-facing rules SHOULD use:

- stable identifiers;
- short paragraphs;
- explicit fields;
- templates;
- MUST / SHOULD / MAY language;
- clear priority order;
- low ambiguity.

Long essays belong in public rulebook or design notes, not hot-context runtime files.

---

## AP-013: Version History Is Canon

Rule changes are part of USTF history.

A rule change MUST record:

```text
Version
Date
Affected files
Reason
Change
Compatibility impact
Migration guidance
Playtest source if applicable
```

USTF MUST NOT modify rules retroactively merely to justify a campaign outcome.

---

## AP-014: Playtests Validate Rules

Campaigns are not only stories.

Campaigns are playtests of the engine.

After a campaign exposes a rules problem, USTF MAY be revised through versioned change.

The world should not be modified merely to protect flawed rules.

---

## AP-015: Rulebook Is Generated

The public rulebook should be generated or assembled from canonical source files.

The public book may expand explanations, examples, and teaching material.

It MUST remain rule-compatible with the source.
