# ADR-0012 — Unknown Forces Remain Actors

**File Path:** `adr/ADR-0012-unknown-forces-remain-actors.md`  
**Status:** Accepted  
**Date:** 2026-07-01  
**Version:** v3.0.0-draft

---

## Context

Some genres include entities or processes that are not fully knowable: cosmic beings, hidden AIs, secret state programs, market crashes, ancient alien systems, curses, plagues, propaganda waves, or autonomous war machines.

A common failure mode is to treat unknown forces as pure narrative authority. This breaks USTF because consequences appear without traceable causes, and Knowledge State loses meaning.

---

## Decision

Unknown forces SHOULD still be represented as Actors, Processes, Conditions, or World State fields.

Their fields may be incomplete.

Unknown fields MUST be marked Unknown rather than invented.

Example:

```text
Actor: Unknown Entity A
Type: Anomalous / Unknown
Goal: Unknown
Observed Effect: Induces shared dreams in exposed witnesses
Propagation: Unknown
Known Trigger: Contact with symbol recovered from Site-17
Resources: Unknown
Attention Pattern: Appears to increase after public discussion
```

---

## Consequences

This preserves mystery without sacrificing simulation.

The assistant can run hidden forces consistently while preserving player ignorance.

Investigation can reveal fields gradually.

Contradictions are easier to detect because unknowns are explicit.

---

## Compatibility

This ADR applies especially to:

```text
Horror / Occult
Space Opera
Cyberpunk AI
Espionage hidden agencies
Political black-box institutions
Economic crises
```

It reinforces the principle:

```text
Unknown is better than fake certainty.
```
