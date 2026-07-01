# ADR-0004 — Resolution as World State Change Request

**Status:** Accepted  
**Date:** v3.0.0-draft  
**Related Files:** `core/08-resolution-system.md`, `core/05-world-state-model.md`

## Context

Traditional RPG resolution often treats actions as success/failure events. This is insufficient for USTF because long-form campaigns require persistent consequences, knowledge updates, resource costs, and time advancement.

## Decision

USTF will define resolution as a World State Change Request.

Every major action asks:

```text
What change is attempted?
Who attempts it?
What do they know?
What resources and capabilities support it?
What constraints oppose it?
What changes after resolution?
```

Randomization may occur only after logical, procedural, and state-based constraints have been evaluated.

## Consequences

Benefits:

- Stronger continuity
- Clearer consequence tracking
- Better compatibility with organizations and strategic play
- Less dependence on binary success/failure
- Better LLM execution under long campaign conditions

Costs:

- More structure than traditional scene-level resolution
- Requires state records for major actions
- May feel slower if overused for minor actions

## Compatibility

This decision affects all future modules. Modules may define special resolution methods, but they must still output World State changes, costs, risks, and knowledge updates.
