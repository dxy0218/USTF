# USTF Core Specification — 06 Time & Continuity System

**File Path:** `core/06-time-continuity-system.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  

## Summary

- Time advances for the whole world, not only for the player.
- Different actions use different time scales.
- Long-form campaigns require explicit time tracking, project tracking, and delayed consequence handling.
- Downtime is not empty space; it is a world update window.
- USTF must preserve continuity across sessions, jumps, and parallel threads.

---

## 1. Definition

**TIM-001:** Time is a Core constraint on all Actors and World State changes.

USTF time determines:

```text
What can happen
When it can happen
Who can react
What resources are consumed
Which projects advance
Which consequences mature
Which knowledge becomes outdated
```

**TIM-002:** Time MUST advance for all relevant Actors, not only player-controlled Actors.

---

## 2. Time Scales

USTF uses multiple time scales.

Recommended scales:

```text
Moment Time: seconds to minutes
Scene Time: minutes to hours
Operational Time: hours to days
Strategic Time: weeks to months
Historical Time: years to decades
Epoch Time: centuries or more
```

**TIM-003:** The assistant SHOULD select the minimum time scale that preserves meaningful consequences.

Example:

```text
Gunfight: Moment or Scene Time.
Contract negotiation: Operational or Strategic Time.
Dynastic marriage politics: Strategic or Historical Time.
Interstellar colonization: Historical or Epoch Time.
```

---

## 3. In-World Date

**TIM-004:** Long campaigns SHOULD maintain an explicit In-World Date.

Minimum fields:

```yaml
Campaign:
CurrentDate:
CurrentTime:
CalendarSystem:
LocationReference:
LastUpdated:
```

If exact time is unnecessary, approximate time MAY be used:

```text
Early January 1995
Late Spring 1421
Cycle 44, orbital quarter 3
```

---

## 4. Time Advancement

Time advances when:

```text
A scene ends.
A project requires work.
Travel occurs.
Actors wait.
A deadline approaches.
A world update phase runs.
The campaign skips forward.
```

**TIM-005:** When time advances significantly, the assistant SHOULD update relevant non-player Actors.

Significant advancement depends on campaign scale.

Examples:

```text
A few minutes: relevant in combat or chase.
A few days: relevant in business, military operations, investigations.
A few months: relevant in politics, construction, research, war, succession.
```

---

## 5. World Update Window

**TIM-006:** Downtime is a World Update Window.

During a World Update Window, the assistant SHOULD check:

```text
Player projects
NPC projects
Organization projects
Ongoing conflicts
Resource decay
Attention changes
Knowledge propagation
Deadlines
Random but grounded external developments
```

Downtime MUST NOT mean the world pauses.

---

## 6. Parallel Threads

Long campaigns often contain parallel threads.

Examples:

```text
Headquarters negotiation
Field deployment
Legal setup
Enemy preparation
Market movement
Political election
Religious schism
Secret investigation
```

**TIM-007:** Parallel threads SHOULD advance when time passes, even if off-screen.

**TIM-008:** Off-screen advancement MUST follow Actor goals, resources, knowledge, constraints, and time scale.

---

## 7. Deadlines

Deadlines represent time-sensitive pressure.

Deadline fields:

```yaml
DeadlineID:
Name:
AppliesTo:
DueDate:
ConsequenceIfMet:
ConsequenceIfMissed:
KnownBy:
Flexibility:
```

**TIM-009:** Deadlines MUST NOT disappear unless resolved, renegotiated, missed, or invalidated.

---

## 8. Process Trackers

USTF may use Process Trackers to record progress.

Process Trackers are indicators, not causes.

**TIM-010:** A Process Tracker records the advancement of a process but does not by itself create events.

Example:

```yaml
Project: Establish legal compliance structure
Progress: 2/6
Requirements:
  - Counsel retained
  - Jurisdiction review
  - Contract templates
  - Insurance framework
  - Compliance policy
  - Board approval
```

The project completes when requirements are met or when the procedure logically resolves, not because a marker arbitrarily fills.

---

## 9. Time Cost

Actions may require time.

Time cost types:

```text
Immediate
Scene-length
Hours
Days
Weeks
Months
Years
Open-ended
```

**TIM-011:** Time cost SHOULD be checked before resolving major actions.

Example:

```text
Hiring one guard may take days.
Building a professional department may take months.
Changing public legitimacy may take years.
```

---

## 10. Reaction Time

Actors cannot react instantly unless they have:

```text
Knowledge
Communication channel
Authority
Available resources
Physical or organizational ability to respond
Sufficient time
```

**TIM-012:** Reaction time MUST respect communication and decision constraints.

Example:

```text
A medieval lord may take weeks to learn of a border raid.
A modern intelligence agency may react within hours if monitoring exists.
A corporate board may require scheduled approval.
```

---

## 11. Communication Delay

Communication delay depends on genre, technology, distance, secrecy, and infrastructure.

Fields:

```yaml
Sender:
Receiver:
Message:
Channel:
SentAt:
ReceivedAt:
Delay:
InterceptionRisk:
DistortionRisk:
```

**TIM-013:** Slow communication SHOULD materially affect medieval, exploration, war, horror, and space campaigns.

---

## 12. Knowledge Aging

Knowledge may become outdated.

**TIM-014:** The assistant SHOULD consider whether old information remains valid after time passes.

Examples:

```text
A guard schedule may expire after one day.
A treaty may remain valid for years.
A market rumor may decay within hours.
A prophecy may remain relevant for centuries, depending on module.
```

---

## 13. Delayed Consequences

Some consequences do not appear immediately.

Examples:

```text
Legal liability
Disease incubation
Political backlash
Supply shortage
Debt accumulation
Revenge plot
Market reaction
Succession crisis
```

**TIM-015:** Delayed consequences SHOULD be tracked as pending state entries or open risks.

---

## 14. Time Skip Procedure

When skipping forward, the assistant SHOULD perform:

```text
1. Identify duration skipped.
2. Identify active player projects.
3. Identify active non-player projects.
4. Resolve deadlines within skipped period.
5. Advance processes logically.
6. Apply resource changes.
7. Apply knowledge propagation or decay.
8. Update relationships and conflicts.
9. Record major events.
10. Present new current situation.
```

**TIM-016:** Major time skips SHOULD produce a Session Delta or State Update.

---

## 15. Timeline Integrity

**TIM-017:** USTF campaigns SHOULD maintain a timeline of major events.

Timeline entries SHOULD include:

```yaml
Date:
Event:
ActorsInvolved:
StateChange:
KnowledgeChange:
Consequences:
Source:
```

**TIM-018:** If timeline contradiction occurs, mark Continuity Review Required.

---

## 16. Temporal Uncertainty

Exact dates may be unknown.

Acceptable temporal states:

```text
Exact
Approximate
Before
After
During
Unknown
Disputed
RetconnedWithRecord
```

**TIM-019:** Approximate time is acceptable when exact time is unnecessary.

**TIM-020:** Uncertainty MUST be marked rather than silently resolved.

---

## 17. Runtime Requirements

Before advancing time significantly, the assistant SHOULD check:

```text
How much time passes?
Which Actors can act during this time?
Which projects advance?
Which deadlines occur?
Which resources are consumed or restored?
Which knowledge spreads, decays, or becomes outdated?
Which consequences mature?
What must be logged?
```

---

## 18. Non-Binding Example

```yaml
TimeAdvance:
  Campaign: FSS
  From: 1995-01-10
  To: 1995-01-14
  Scale: Operational Time
  PlayerFocus: Francis returns to headquarters for legal and contract discussions.
  ParallelThreads:
    - Sierra Leone field team continues first contract.
    - Canadian mining company waits for evaluation response.
    - Legal counsel begins institutional setup discussion.
    - Stone begins office expansion research.
  DelayedConsequences:
    - Staffing bottleneck remains unresolved.
    - Legal exposure reduced only if compliance project advances.
  LogRequired: true
```

This example is illustrative and non-binding.
