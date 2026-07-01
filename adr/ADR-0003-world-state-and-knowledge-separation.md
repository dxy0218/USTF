# ADR-0003 — Separate World State and Knowledge State

**File Path:** `adr/ADR-0003-world-state-and-knowledge-separation.md`  
**Document Type:** Architecture Decision Record  
**Version:** v3.0.0-draft  
**Status:** Accepted Draft  
**Date:** 2026-07-01  

## Context

Long-form campaigns frequently fail when objective facts, player knowledge, character knowledge, NPC knowledge, and GM/assistant knowledge blend together.

This causes:

- NPCs acting on impossible information.
- Players benefiting from out-of-character knowledge.
- Secrets leaking without causal path.
- Investigations collapsing into narration.
- Organizations responding to threats they have not detected.
- Continuity drift across sessions.

USTF requires long-term simulation across campaigns involving business, politics, military operations, investigation, horror, medieval intrigue, corporate management, and future science fiction. These modes all require strict information boundaries.

## Decision

USTF separates:

```text
Objective World State
Actor Knowledge State
Player Understanding
Assistant Working Context
Archive Records
```

World State records what is objectively true in the campaign.

Knowledge State records what each Actor knows, believes, suspects, misunderstands, or does not know.

Actors may act only on their Knowledge State or reasonable inferences from it.

## Consequences

Positive consequences:

- Stronger Need To Know enforcement.
- More reliable investigations.
- Better espionage, politics, and organizational play.
- Reduced continuity drift.
- Clearer Session Delta updates.
- Better compatibility with ChatGPT Project reference files.

Negative consequences:

- More bookkeeping.
- Some scenes require explicit knowledge checks.
- The assistant must resist dramatic shortcuts.

Mitigation:

- Use Knowledge Ledger only for meaningful information.
- Do not track trivial facts.
- Summarize active secrets in Current State files.
- Archive old knowledge records when no longer active.

## Compatibility

This ADR affects all Core and Module design.

Modules may add special information rules, such as magic detection, psychic communication, hacking, surveillance, or cosmic revelation, but they must not erase the distinction between World State and Knowledge State.

## Status

Accepted for USTF v3.0 draft.
