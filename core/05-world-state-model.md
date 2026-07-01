# USTF Core Specification — 05 World State Model

**File Path:** `core/05-world-state-model.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  

## Summary

- World State is the canonical objective condition of the campaign world.
- World State is separate from what any Actor knows.
- All meaningful actions resolve into World State changes, failed change attempts, or opened processes.
- World State must persist until changed by further action or time.
- Current State files are active canon; archives are historical evidence, not active state.

---

## 1. Definition

**WST-001:** World State is the current canonical objective condition of the simulated world.

World State includes:

```text
Actors
Locations
Organizations
Resources
Relationships
Events
Projects
Conflicts
Risks
Knowledge distribution
Political conditions
Economic conditions
Legal conditions
Military conditions
Environmental conditions
Unresolved uncertainties
```

**WST-002:** World State exists independently of player knowledge, Actor knowledge, and assistant narration.

---

## 2. Objective State vs Known State

USTF separates:

```text
Objective World State
Known State by Actor
Player Understanding
Assistant Working Context
```

**WST-003:** Objective World State MUST NOT be treated as universally known.

**WST-004:** Known State MUST be tracked through the Knowledge System.

Example:

```text
Objective State:
  A company is secretly insolvent.

Actor A knows:
  The company has delayed payments.

Actor B knows:
  The company is insolvent.

Public knows:
  The company appears stable.
```

---

## 3. State Categories

World State SHOULD be organized into categories.

Recommended categories:

```text
Global State
Regional State
Local State
Actor State
Organization State
Resource State
Conflict State
Project State
Knowledge State
Timeline State
Risk State
Archive State
```

**WST-005:** Active Current State files SHOULD summarize only relevant state, not complete archives.

---

## 4. State Granularity

USTF uses selective simulation.

**WST-006:** The assistant SHOULD model detail proportional to consequence.

High-consequence elements require explicit state.

Low-consequence elements may remain abstract.

Example:

```text
A major contract: explicit state.
A random meal: abstract unless relevant.
A key witness: explicit state.
A background crowd: abstract unless relevant.
```

**WST-007:** USTF MUST NOT attempt total simulation of all details.

The purpose is coherent consequence, not infinite bookkeeping.

---

## 5. State Change

**WST-008:** Every meaningful action MUST be interpreted as one of the following:

```text
World State Change
Failed World State Change
Partial World State Change
Opened Process
Changed Risk Profile
Changed Knowledge State
No Meaningful Change
```

**WST-009:** State changes SHOULD be explicit.

Example:

```text
Action: Sign mining security contract.
State Changes:
- Contract becomes active obligation.
- FSS revenue projection increases.
- Staffing pressure increases.
- Legal exposure increases.
- Client relationship created.
- Operational planning project opened.
```

---

## 6. Persistence

**WST-010:** Consequences persist until changed by further action, decay, time, repair, replacement, death, institutional change, or other established process.

The assistant MUST NOT silently reset consequences.

Examples:

```text
Spent money remains spent.
Dead NPC remains dead unless genre module permits otherwise.
Leaked information remains potentially circulating.
Damaged infrastructure remains damaged until repaired.
A signed contract creates obligations until fulfilled, renegotiated, breached, expired, or voided.
```

---

## 7. Unknown State

**WST-011:** Unknown is a valid World State value.

Unknown is used when the truth has not been established or is inaccessible.

Unknown MUST NOT be replaced by invented certainty.

Recommended tags:

```text
Unknown
Unverified
Disputed
Contradictory
Hidden
Classified
Not Yet Generated
Requires Review
```

**WST-012:** Hidden state MAY exist without being known to the player.

However, hidden state SHOULD be logically grounded in Actor goals, resources, and prior conditions.

---

## 8. State Confidence

Some state entries may have confidence levels.

Recommended values:

```text
Confirmed
Likely
Possible
Rumored
False
Unknown
```

**WST-013:** Confidence level MUST distinguish objective truth from in-world belief.

Example:

```yaml
ObjectiveState:
  confirmed: The convoy departed.
KnowledgeState:
  ActorA believes: The convoy is delayed.
  confidence: False
```

---

## 9. State Scope

World State entries SHOULD declare scope.

Common scopes:

```text
Personal
Team
Local
Regional
National
International
Planetary
Interstellar
Cosmic
Systemic
```

**WST-014:** Scope affects who may notice, influence, or be affected by a state change.

Example:

```text
A local scandal may affect one town.
A sovereign debt crisis may affect global markets.
An interstellar route collapse may affect multiple systems.
```

---

## 10. State Ownership

Some state belongs primarily to an Actor.

Examples:

```text
Actor resources
Actor injuries
Organization projects
Private knowledge
Legal obligations
Internal faction tensions
```

**WST-015:** State ownership does not imply exclusive knowledge.

An Actor may own a secret but another Actor may know it.

---

## 11. State Dependencies

State entries may depend on other entries.

Example:

```text
Operational expansion depends on legal framework.
Military campaign depends on supply line.
Research project depends on laboratory access.
Dynastic claim depends on recognized legitimacy.
```

**WST-016:** The assistant SHOULD check dependencies before resolving major actions.

---

## 12. State Decay and Drift

Some state changes over time without direct action.

Examples:

```text
Reputation decays.
Wounds heal or worsen.
Market attention shifts.
Political coalitions weaken.
Supplies spoil.
Rumors mutate.
Technology becomes obsolete.
```

**WST-017:** Decay SHOULD be handled through Time System and relevant procedures.

Decay MUST be logical, not arbitrary.

---

## 13. Current State vs Archive

**WST-018:** Current State files are active canon for runtime.

**WST-019:** Archive files are historical evidence.

Archives may be used to investigate continuity, but should not override Current State without review.

If conflict exists:

```text
Current State prevails provisionally.
Conflict is marked for Continuity Review.
```

---

## 14. State File Minimum Structure

A Current State file SHOULD include:

```yaml
Campaign:
Version:
InWorldDate:
LastUpdated:
ActivePremise:
CurrentSituation:
MajorActors:
MajorOrganizations:
ActiveProjects:
OpenConflicts:
ResourcePressures:
KnowledgeIssues:
OpenThreads:
RecentConsequences:
ContinuityFlags:
```

---

## 15. World State Change Request

**WST-020:** Major actions SHOULD be framed as World State Change Requests.

Request fields:

```yaml
RequestID:
ActingActor:
Intent:
ProposedChange:
RequiredKnowledge:
RequiredCapabilities:
RequiredResources:
TimeRequired:
Opposition:
Risks:
PossibleOutcomes:
StateEntriesAffected:
```

This structure prevents action resolution from becoming purely narrative.

---

## 16. Runtime Requirements

Before resolving a major action, the assistant SHOULD ask internally:

```text
What is the current objective state?
What does the acting Actor know?
What state change is being attempted?
What dependencies exist?
What consequences follow if successful?
What consequences follow if failed?
What other Actors may react?
What must be recorded afterward?
```

---

## 17. Non-Binding Example

```yaml
StateEntryID: WST-FSS-Contract-CanadianMining-001
Category: Project State
Scope: International / Corporate
ObjectiveState: Contract opportunity under evaluation; not signed.
KnownBy:
  - Francis
  - Legal Counsel
  - Canadian Mining Representatives
NotKnownBy:
  - General FSS staff
  - Public
Dependencies:
  - Legal framework assessment
  - Staffing availability
  - Risk evaluation
ConsequencesIfAdvanced:
  - New revenue opportunity
  - Staffing pressure
  - Legal obligations
  - Expanded operational footprint
Status: Active
LastUpdated: 1995-01 current campaign window
```

This example is illustrative and non-binding.
