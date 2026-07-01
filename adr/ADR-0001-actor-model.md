# ADR-0001 — Actor Model as Universal Simulation Interface

**Status:** Accepted Draft  
**Date:** v3.0.0-draft phase  
**Affected Files:** Core Actor Model, Organization System, Character System, World Update Cycle

---

## Context

USTF must support characters, organizations, governments, armies, corporations, markets, diseases, crises, AI systems, and supernatural forces across many genres.

Traditional TTRPG systems often separate character rules, faction rules, vehicle rules, monster rules, domain rules, and world event rules.

That separation creates duplication and makes long-form simulation harder to maintain.

---

## Decision

USTF treats any world-affecting entity as an Actor.

Character and Organization are subtypes of Actor.

An Actor exposes a common interface:

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
Status
```

---

## Consequences

Positive:

- Common resolution model.
- Better support for organizations and non-human forces.
- Easier module compatibility.
- Better long-term simulation.

Negative:

- More abstract than traditional character-first systems.
- Requires careful templates to avoid becoming too heavy.

---

## Compatibility

All future modules should build on Actor API.

Modules may add Actor subtypes, but must not replace the Actor interface.
