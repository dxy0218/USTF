# ADR-0007 — Campaign State Is Canon

**Status:** Accepted  
**Date:** 2026-07-01  
**Version:** v3.0.0-draft  
**Related Files:** `core/15-campaign-operations.md`, `runtime/chatgpt-project-instructions.md`

## Context

USTF is intended for long campaigns run inside ChatGPT Projects. Model memory and chat history are not reliable enough to serve as the sole source of campaign continuity. Long campaigns require stable, compact, explicit state records.

## Decision

USTF defines explicit Campaign State files as canonical.

Memory is non-canonical.

Chat history is archive unless summarized into approved state files or Session Deltas.

Required active state should include Current State, Actor Registry, Organization State, Knowledge Ledger, Open Threads, and Event Log Summary.

## Consequences

- Campaigns can survive context limits.
- State can be audited and migrated.
- Contradictions can be identified rather than hidden.
- Session Deltas serve as patches.
- Full transcripts are not required for every continuation.
- Project reference files become the primary runtime substrate.

## Compatibility Impact

All future USTF campaign modules and playtest campaigns should define a minimum state pack.

Existing campaigns may need a one-time Campaign Freeze to convert chat history into active state files.
