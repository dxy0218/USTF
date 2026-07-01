# USTF v3.0 — Campaign State Pack Standard

**File Path:** `runtime/campaign-state-pack-standard.md`  
**Document Type:** Runtime Standard  
**Layer:** LLM Deployment Layer  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Runtime Instruction  

## Summary

The Campaign State Pack is the canonical active memory of a USTF campaign.

It is designed for ChatGPT Project usage.

It replaces reliance on chat history or model memory.

A campaign may have extensive archives, but only the current state pack should be treated as active state during normal play.

---

## 1. Purpose

Long-form campaigns cannot rely on conversation history alone.

A Campaign State Pack provides a compact, structured, updatable state layer.

It exists to preserve:

- Current world state
- Current actors
- Current organizations
- Knowledge separation
- Open threads
- Recent consequences
- Active risks
- In-world time
- Continuity anchors

---

## 2. Canon Rule

**CSP-001:** Current Campaign State files are canonical active state.

**CSP-002:** Model memory is non-canonical.

**CSP-003:** Full session logs are archive, not active state.

**CSP-004:** Session Deltas become canonical only after being approved or incorporated into current state files.

---

## 3. Recommended Folder Structure

```text
campaigns/<campaign-id>/
├── 00-campaign-brief.md
├── 01-current-state.md
├── 02-actor-registry.md
├── 03-organization-state.md
├── 04-knowledge-ledger.md
├── 05-open-threads.md
├── 06-resource-ledger.md
├── 07-event-log-summary.md
├── 08-session-deltas/
└── 99-archive/
```

Small campaigns MAY use a single combined state file.

Long campaigns SHOULD separate the files.

---

## 4. Required Active Files

A campaign intended for repeated ChatGPT Project play SHOULD maintain at least:

```text
00-campaign-brief.md
01-current-state.md
02-actor-registry.md
04-knowledge-ledger.md
05-open-threads.md
```

Optional but recommended:

```text
03-organization-state.md
06-resource-ledger.md
07-event-log-summary.md
```

---

## 5. Campaign Brief

The Campaign Brief defines the campaign identity.

It SHOULD include:

```text
Campaign title
Campaign ID
Genre module(s)
In-world start date
Current in-world date
Premise
Scope
Tone constraints
Primary player-facing Actor(s)
Major known Actors
Core conflicts
Module assumptions
Canon sources
Last updated
```

The Campaign Brief should be short.

It is not a complete history.

---

## 6. Current State

Current State records the present condition of the world.

It SHOULD include:

```text
Current date / time
Current location focus
Current situation summary
Recent major consequences
Active pressures
Known public events
Hidden active events
Immediate decision points
Continuity warnings
```

Current State overrides archive logs for runtime purposes unless clearly erroneous.

---

## 7. Actor Registry

Actor Registry records significant Actors.

It SHOULD include:

```text
Actor ID
Name
Type
Status
Location
Goals
Capabilities
Resources
Knowledge summary
Relationships
Current projects
Constraints
Last updated
```

Actors that no longer affect the campaign may be moved to archive.

---

## 8. Organization State

Organization State records significant organizational Actors.

It SHOULD include:

```text
Organization ID
Name
Type
Scale
Stability
Leadership
Structure
Resources
Capabilities
Internal factions
External relationships
Current projects
Known constraints
Risk exposure
Knowledge summary
Last updated
```

---

## 9. Knowledge Ledger

Knowledge Ledger enforces Need To Know.

It SHOULD record:

```text
Knowledge ID
Content
Holder
Source
Time acquired
Reliability
Confidence
Transferability
Secrecy level
Misinterpretation
Related world fact
```

If the Knowledge Ledger is missing, the assistant MUST avoid assuming knowledge transfer.

---

## 10. Open Threads

Open Threads records unresolved matters.

Each thread SHOULD include:

```text
Thread ID
Title
Type
Actors involved
Current status
Pressure level
Next likely development
Known to whom
Relevant files
Last updated
```

Open Threads prevent long campaigns from losing important unresolved consequences.

---

## 11. Resource Ledger

Resource Ledger records important resources only.

It SHOULD NOT attempt to track every coin, bullet, meal, or minor object unless the campaign scale requires it.

It MAY track:

```text
Wealth
Personnel
Legitimacy
Attention
Access
Infrastructure
Technology
Force
Political capital
Intelligence
Supply
Time
```

---

## 12. Event Log Summary

Event Log Summary records major historical anchors.

It SHOULD be chronological.

It SHOULD NOT become a full transcript.

Recommended format:

```text
Date
Event
Actors affected
State change
Knowledge change
Source session
```

---

## 13. Session Delta Workflow

At the end of a session:

```text
1. Produce Session Delta.
2. Review major changes.
3. Incorporate accepted changes into active state files.
4. Move full narrative transcript to archive if needed.
5. Update Last Updated fields.
```

Session Delta is a patch.

Current State is the compiled runtime state.

---

## 14. Context Budget

Campaign State Pack files SHOULD be concise.

Recommended limits:

```text
Campaign Brief: 500–1,500 Chinese characters
Current State: 1,000–3,000 Chinese characters
Actor Registry: as compact as possible
Knowledge Ledger: structured entries, not prose
Open Threads: compact list
```

Long campaigns SHOULD maintain archive files separately.

---

## 15. Contradictions

When state files conflict:

```text
1. Apply file priority.
2. Prefer more recent active state over archive.
3. Check Session Delta if needed.
4. Mark unresolved issues as Continuity Review Required.
```

Do not silently merge contradictory histories.
