# USTF Core Specification — 02 Core Invariants

**File Path:** `core/02-core-invariants.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Invariants  
**Purpose:** Define USTF rules that must remain stable across campaigns and modules.

---

## 0. Summary

Core Invariants are the constitutional rules of USTF.

They are stronger than normal procedures.

Modules must obey them.

Campaign-specific convenience must not override them.

---

## INV-001: World State Independence

World State exists independently of player knowledge, player attention, and narrative focus.

A fact may be true even if no player Actor knows it.

A fact may be unknown to all active player-facing Actors and still exist in World State.

---

## INV-002: Knowledge State Separation

Knowledge State is separate from World State.

Each significant Actor has its own knowledge boundary.

The assistant or operator MUST NOT collapse objective truth and Actor belief into one layer.

---

## INV-003: Need To Know

No Actor may act on information absent from its Knowledge State.

This applies to player characters, NPCs, organizations, states, companies, factions, and other Actors.

Information does not transfer merely because the user, assistant, or operator knows it.

---

## INV-004: Actor Logic

Every significant Actor SHOULD be modeled with:

```text
Goals
Resources
Capabilities
Knowledge
Constraints
Relationships
Current Projects
Decision Logic
```

An Actor's behavior should follow from these elements.

---

## INV-005: Autonomous World Progression

Relevant non-player Actors continue acting when time advances.

The world does not pause outside player-facing scenes.

---

## INV-006: Persistent Consequences

Consequences persist until changed by further action.

The assistant or operator MUST NOT silently reset consequences.

---

## INV-007: Internal Logic First

Internal logic takes priority over drama, pacing, convenience, or desired outcome.

If the logical outcome is inconvenient, the logical outcome still stands unless a rule-based intervention exists.

---

## INV-008: Unknown Preservation

If information is not established, cannot be inferred, and is not available from current state files, it remains Unknown.

Unknown MUST NOT be replaced by unsupported invention.

---

## INV-009: Conflict Is Not Combat

Combat is only one form of conflict.

Conflict includes incompatible goals pursued through military, legal, commercial, political, social, informational, economic, technological, or supernatural means.

---

## INV-010: Modules Extend Core

Modules may extend USTF with genre-specific rules.

Modules MUST NOT override Core Invariants.

---

## INV-011: Versioned Rule Change

Rules may evolve only through versioned change.

A rule must not be changed retroactively to justify a campaign outcome.

---

## INV-012: Memory Is Non-Canonical

Language-model memory may assist continuity but is not canonical campaign state.

Canonical state must be stored in current state files, ledgers, logs, deltas, or explicitly approved summaries.

---

## INV-013: State Files Govern Active Play

For active play, Current State files override old archives unless a contradiction is detected.

Contradictions SHOULD be flagged as Continuity Review Required.

---

## INV-014: Major Actions Change State

Major actions should be treated as attempted World State Change Requests.

A major action is resolved by checking Actor, intent, knowledge, resources, capability, time, constraints, opposition, uncertainty, and consequences.

---

## INV-015: Record Significant Change

Any change that may matter later SHOULD be recorded in a Session Delta or state file.

Unrecorded change is at high risk of continuity loss.
