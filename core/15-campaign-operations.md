# USTF v3.0 — Campaign Operations

**File Path:** `core/15-campaign-operations.md`  
**Document Type:** Core Specification  
**Layer:** Core / Runtime Operations  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Runtime Instructions, Core Invariants, World State Model, Knowledge System, Time System

## Summary

Campaign Operations defines how USTF campaigns are started, continued, paused, summarized, archived, updated, and audited. It exists because long-form campaigns cannot rely on memory, chat history, or improvisational continuity alone.

---

## OPS-000: Design Principle

A long-form USTF campaign is not a sequence of scenes.

It is a maintained simulation state.

The campaign survives only if state is recorded, summarized, versioned, and updated.

---

## OPS-001: Canonical State

Canonical campaign state MUST be stored in explicit files or approved summaries.

Canonical state SHOULD include:

```text
Current Campaign State
Actor Registry
Organization State
Knowledge Ledger
Open Threads
World State
Event Log Summary
Session Deltas
Version Notes
```

Chat history may provide context, but it is not authoritative unless summarized into state.

Memory is non-canonical.

---

## OPS-002: Active State vs Archive

USTF distinguishes Active State from Archive.

```text
Active State: Current facts required to continue the campaign.
Archive: Historical record not normally loaded unless needed.
```

Active State SHOULD remain compact.

Archive MAY be long.

A session transcript is Archive by default.

A Session Delta is Active State until merged.

---

## OPS-003: Minimum Campaign State Pack

A campaign SHOULD maintain a Minimum Campaign State Pack:

```text
00-campaign-brief.md
01-current-state.md
02-actor-registry.md
03-organization-state.md
04-knowledge-ledger.md
05-open-threads.md
06-event-log-summary.md
07-module-notes.md
```

For ChatGPT Project deployment, prioritize the files most relevant to active play.

---

## OPS-004: Session Start Procedure

At session start, the assistant SHOULD identify or load:

```text
Campaign Name
Current In-World Date
Current Location / Theater
Active Player Actor
Relevant Non-Player Actors
Current State
Open Threads
Relevant Knowledge Constraints
Relevant Module
Immediate Pending Decisions
```

If critical state is missing, mark it Unknown or request the specific missing file only when necessary.

Do not reconstruct canon from memory if a state file should exist.

---

## OPS-005: Session Continuation

When continuing a campaign, the assistant SHOULD:

```text
1. Read or infer Current State from active files.
2. Identify unresolved threads.
3. Check recent Session Delta.
4. Confirm current time and location.
5. Check Knowledge Ledger for active Actors.
6. Resume from the last stable state.
```

The assistant MUST NOT restart, reset, or overwrite consequences unless explicitly instructed and versioned.

---

## OPS-006: During-Session State Tracking

During play, the assistant SHOULD track:

```text
Player decisions
World state changes
Actor state changes
Organization changes
Knowledge changes
Resource changes
Time advancement
Open threads
Resolved threads
New risks
Continuity issues
```

For long or complex sessions, the assistant MAY provide interim state summaries.

---

## OPS-007: Session Delta

At the end of a meaningful session, create a Session Delta.

A Session Delta is a patch file containing only changes since last stable state.

It SHOULD include:

```text
Session ID
In-world time advanced
Player decisions
World state changes
Actor state changes
Organization state changes
Knowledge changes
Resource changes
Open threads added
Open threads resolved
Risks added
Risks reduced
Files recommended for update
Continuity issues detected
```

Session Delta SHOULD NOT duplicate the entire campaign archive.

---

## OPS-008: State Merge

A State Merge is the process of updating active state files from a Session Delta.

Before merging:

```text
Check contradiction
Check timeline consistency
Check Knowledge Ledger updates
Check Actor state updates
Check Organization state updates
Check unresolved risks
Check whether archive references are needed
```

After merging, the Session Delta may be archived.

---

## OPS-009: Open Threads

An Open Thread is an unresolved situation, risk, project, opportunity, investigation, conflict, or pending decision.

Open Threads SHOULD record:

```text
Thread ID
Title
Type
Status
Actors Involved
Known To
Opened Date
Current Pressure
Possible Outcomes
Next Trigger
Relevant Files
```

Open Threads prevent long campaigns from losing unresolved consequences.

---

## OPS-010: Event Log Summary

The Event Log Summary is a compact chronological record of significant events.

Each entry SHOULD include:

```text
Date
Event
Actors Involved
State Change
Knowledge Impact
Reference
```

The Event Log Summary is not a full transcript.

It is a continuity tool.

---

## OPS-011: Continuity Audit

A Continuity Audit SHOULD be performed when:

- A long campaign resumes after a gap
- A contradiction appears
- A major arc ends
- A new module is added
- A state file is updated from old logs
- The campaign changes scale
- Rules are upgraded

Audit categories:

```text
Timeline
Actor status
Organization status
Knowledge state
Resource state
Open threads
Deaths / removals
Contracts / obligations
Legal / political exposure
Version compatibility
```

---

## OPS-012: Handling Missing State

If state is missing, the assistant SHOULD classify the gap:

```text
Unknown but recoverable
Unknown and unrecoverable
Contradictory
Unrecorded but inferable
Requires user decision
Requires archive review
```

The assistant MUST NOT silently invent a missing canonical fact.

When play must continue, use provisional state and flag Continuity Review Required.

---

## OPS-013: Scale Management

Long campaigns may operate at several scales:

```text
Character
Team
Organization
City
Region
Nation
International
Planetary
Interstellar
Historical
```

When scale increases, the assistant SHOULD compress lower-level details into state summaries.

When scale decreases, the assistant SHOULD retrieve relevant details only as needed.

---

## OPS-014: Context Management

When context is limited, prioritize:

```text
Core Invariants
Current State
Knowledge Ledger
Open Threads
Relevant Actor / Organization files
Relevant Module
Recent Session Delta
```

Do not load full archives by default.

Do not rely on chat history when state files are available.

If the current conversation becomes overloaded, produce a continuation summary.

---

## OPS-015: Project File Hygiene

Campaign files SHOULD use stable names and clear layers.

Recommended naming:

```text
current-state.md
actor-registry.md
organization-state.md
knowledge-ledger.md
open-threads.md
event-log-summary.md
session-delta-YYYY-MM-DD.md
```

Avoid ambiguous names such as:

```text
notes.md
stuff.md
latest.md
important.md
```

---

## OPS-016: Rule Change During Campaign

Rules MUST NOT be changed to justify a desired campaign outcome.

If a rule is changed during a campaign, record:

```text
Rule ID
Old version
New version
Reason
Playtest source
Compatibility impact
Migration rule
Affected campaign state
```

A rule change may be applied prospectively, retrospectively, or not applied to an existing campaign depending on compatibility.

---

## OPS-017: Campaign Freeze

A Campaign Freeze is a stable snapshot of active state.

Use a Campaign Freeze before:

- Major version upgrade
- Long break
- Public archive
- Forking campaign timeline
- Switching to another assistant/project
- Converting playtest into public example

A freeze SHOULD include all Minimum Campaign State Pack files.

---

## OPS-018: Campaign Fork

A Campaign Fork creates an alternate continuation from a known state.

Forks MUST record:

```text
Fork ID
Base state
Fork reason
Divergence point
Rules version
Files copied
Files modified
```

Forked campaigns are separate canon unless explicitly merged.

---

## OPS-019: Campaign Closeout

At the end of an arc or campaign, create a closeout report:

```text
Final state
Major decisions
Major consequences
Unresolved threads
Actor outcomes
Organization outcomes
World changes
Rules stress-tested
Rules failures detected
Recommended USTF changes
```

Campaign closeout is a Playtest input.

---

## OPS-020: Playtest Feedback

Every serious campaign is a USTF playtest.

Feedback SHOULD identify:

```text
Which rules worked
Which rules were too heavy
Which rules were unclear
Which rules caused drift
Which state files were missing
Which templates need revision
Which module rules should be promoted, changed, or retired
```

Playtest feedback MAY generate ADRs or version proposals.

---

## Runtime Summary

```text
Campaign state is canon.
Memory is not canon.
Active state must remain compact.
Archives preserve history but are not always loaded.
Session Delta patches state after play.
Continuity Audit prevents drift.
Every campaign is also a playtest.
```
