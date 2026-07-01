# ADR-0010 — Module Playbooks Are Implementations, Not Core

**File Path:** `adr/ADR-0010-module-playbooks-are-implementations.md`  
**Document Type:** Architecture Decision Record  
**Status:** Accepted  
**Date:** v3.0.0-draft  
**Related Files:** `core/16-module-standard.md`, `modules/*/index.md`

## Context

USTF must support many campaign domains: modern realism, corporate management, medieval politics, espionage, horror, space opera, cyberpunk, fantasy, and more. If all domain-specific assumptions are placed into Core, Core will become too large, contradictory, and difficult for language models to execute reliably.

At the same time, modules must be strong enough to shape play. A module cannot merely be flavor text; it must expose usable resources, Actors, procedures, constraints, and compatibility notes.

## Decision

USTF will treat genre and domain documents as module playbooks.

A module playbook is an implementation layer that adapts Core to a domain. It may add procedures, resources, constraints, examples, and domain-specific Actor patterns. It may not override Core invariants.

## Consequences

Positive:

```text
Core remains stable.
Modules can evolve independently.
Campaigns can load only needed modules.
ChatGPT Project context remains smaller.
GitHub public rulebook can include richer module chapters later.
```

Negative:

```text
Some campaigns require explicit module selection.
Overlapping modules may require priority decisions.
Module quality must be controlled through Playtest and Versioning Protocol.
```

## Compatibility Impact

No breaking change to Core. This ADR formalizes the relationship between Core and modules.

## Future Work

Future modules should follow the same structure and include:

```text
Scope
Assumptions
Resource extensions
Actor patterns
Procedures
Constraints
Compatibility
Runtime checklist
```
