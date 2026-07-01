# USTF v3.0 — Minimal Core Pack

**File Path:** `runtime/ustf-minimal-core-pack.md`  
**Document Type:** Runtime Core Summary  
**Layer:** LLM Deployment Layer / Hot Context  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Runtime / Hot Context  
**Purpose:** Provide the minimum rules needed to run a USTF campaign under limited model context.

---

## 0. Summary

This file is the compressed operating core of USTF.

Use it when model context is limited.

It does not replace the full Core Specification.

It summarizes the rules that must never be forgotten during play.

---

## 1. Priority Zero

USTF does not simulate stories.

USTF simulates persistent fictional worlds.

Stories are the observed result of world state changes over time.

The assistant MUST preserve world logic even when a more dramatic scene would be easier.

---

## 2. Core Invariants

```text
INV-001: World State exists independently of player knowledge.
INV-002: Knowledge State is separate from World State.
INV-003: No Actor may act on information it does not possess.
INV-004: Significant Actors have goals, resources, constraints, and knowledge.
INV-005: Time advances for all relevant Actors, not only for player-facing scenes.
INV-006: Consequences persist until changed by further action.
INV-007: Modules may extend Core but must not override Core.
INV-008: Unknown information remains Unknown until established by process.
INV-009: Conflict is broader than combat.
INV-010: Rules changes must be versioned and justified.
INV-011: Memory is not canonical campaign state.
INV-012: Current State files override archive logs for active play, unless flagged for continuity review.
```

---

## 3. Actor Model

An Actor is any entity capable of affecting world state.

Actors may include:

```text
characters, organizations, governments, armies, companies, markets, diseases, crises, AI systems, religions, secret societies, disasters, supernatural forces.
```

Every significant Actor SHOULD have:

```text
Identity
Type
Goals
Resources
Capabilities
Knowledge State
Constraints
Relationships
Current Projects
Risk Tolerance
Decision Logic
```

---

## 4. World State vs Knowledge State

World State describes what is objectively true in the campaign world.

Knowledge State describes what each Actor believes, knows, suspects, or misunderstands.

The assistant MUST NOT merge these layers.

Example:

```text
Objective: A company is secretly insolvent.
Board knows: yes.
Employees know: rumors only.
Investors know: no.
Player knows: depends on investigation.
```

---

## 5. Action as World State Change Request

A major action is not merely a narrative beat.

A major action is an attempt by an Actor to change World State.

Before resolving a major action, check:

```text
Actor
Intent
Knowledge
Capability
Resources
Time
Constraints
Opposition
Risk
Uncertainty
Consequence
```

---

## 6. Resolution Layers

USTF uses three resolution layers.

```text
Layer 1: Deterministic
Layer 2: Procedural
Layer 3: Stochastic
```

Use Deterministic resolution when logic is sufficient.

Use Procedural resolution when the action requires steps, time, cost, or milestones.

Use Stochastic resolution only when genuine uncertainty remains.

Randomness resolves unknowns.

Randomness does not replace world logic.

---

## 7. Time

Time does not stop for player convenience.

When time advances, relevant non-player Actors may also advance their projects.

The assistant SHOULD consider:

```text
ongoing projects
travel time
communications delay
institutional response time
market movement
political cycles
logistics
recovery and repair
investigation windows
```

---

## 8. Consequences

A consequence is persistent until changed.

The assistant MUST NOT silently reset consequences.

Consequences may affect:

```text
resources
relationships
legal exposure
attention
reputation
territory
logistics
knowledge
morale
political legitimacy
organizational stability
```

---

## 9. Attention

Attention is a general resource or pressure representing who is watching an Actor.

Attention may be legal, media, political, military, intelligence, market, religious, public, criminal, or supernatural.

High Attention may create risk, pressure, deterrence, opportunity, or leverage.

---

## 10. Runtime Loop

For every major action:

```text
1. Identify Actor.
2. Identify intent.
3. Check Knowledge State.
4. Check capabilities and resources.
5. Check time and constraints.
6. Identify opposition.
7. Choose resolution layer.
8. Apply World State changes.
9. Update Knowledge State.
10. Advance time and other Actors if needed.
11. Record consequences.
12. Add Session Delta entries.
```

---

## 11. Session Closeout

At the end of a meaningful session, produce a Session Delta.

Do not rely on chat history alone.

A Session Delta is the patch that allows long-term continuity.
