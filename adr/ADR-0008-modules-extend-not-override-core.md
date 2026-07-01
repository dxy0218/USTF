# ADR-0008 — Modules Extend, Not Override Core

**Status:** Accepted  
**Date:** Draft  
**Related Files:** `core/16-module-standard.md`

## Context

USTF must support many genres and campaign types. Without a strict boundary, modules could introduce exceptions that silently break Core assumptions, especially Knowledge State, Time Continuity, and persistent consequences.

## Decision

Modules may extend Core interfaces but must not override Core invariants.

Any desired Core exception must be submitted as a rule change proposal.

## Consequences

- Modules remain portable.
- Core stays stable.
- Genre-specific rules cannot silently corrupt the engine.
- Some genre conventions may require explicit modeling rather than handwaving.
