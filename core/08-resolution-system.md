# USTF v3.0 — Resolution System

**File Path:** `core/08-resolution-system.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Actor Model, World State Model, Time System, Knowledge System

## Summary

The Resolution System defines how actions are evaluated in USTF. It does not begin with dice. It begins with a proposed change to World State. Dice, probability, and randomization MAY be used only when genuine uncertainty remains after knowledge, resources, capability, opposition, constraints, and time have been checked.

---

## RES-000: Design Principle

USTF resolution is not primarily a success/failure engine.

USTF resolution is a **World State Change Request** procedure.

An Actor does not merely “take an action.” An Actor attempts to change the state of the world.

```text
Actor + Intent + Method + Context → Proposed World State Change
```

Resolution determines:

- Whether the change is possible
- Whether it is immediate or procedural
- What it costs
- What risks it creates
- Who notices
- What new knowledge is produced
- What consequences persist

---

## RES-001: Resolution Trigger

A Resolution Procedure MUST be used when an action may meaningfully alter any of the following:

- World State
- Actor State
- Organization State
- Resource State
- Knowledge State
- Time State
- Relationship State
- Conflict State
- Project State
- Legal, political, economic, military, or social position

Minor descriptive actions MAY be narrated without formal resolution if they do not alter durable state.

---

## RES-002: Resolution Input

Every major resolution SHOULD identify the following input fields:

```text
Acting Actor
Intent
Method
Target State Change
Known Context
Required Knowledge
Required Capability
Required Resources
Time Scale
Opposition
Constraints
Risk Exposure
Success Criteria
Failure Consequences
Partial Outcome Possibilities
```

If any required field is unknown, the assistant MUST either infer from established state, ask only if necessary, or mark the value as Unknown.

Unknown MUST NOT be silently replaced by convenient fiction.

---

## RES-003: Resolution Flow

The standard USTF resolution flow is:

```text
1. Identify Actor
2. Clarify Intent
3. Define Target State Change
4. Check Knowledge State
5. Check Capability
6. Check Resources
7. Check Time Requirements
8. Check Constraints
9. Check Opposition
10. Determine Resolution Mode
11. Resolve Genuine Uncertainty
12. Apply Outcome
13. Apply Costs
14. Apply Risks
15. Update World State
16. Update Knowledge State
17. Update Open Threads
18. Record Resolution
```

This flow MAY be compressed for simple actions, but the logic MUST remain intact.

---

## RES-004: Resolution Modes

USTF uses three primary resolution modes.

### Deterministic Resolution

Use when the outcome is already logically determined by established facts.

Examples:

```text
An Actor without access cannot retrieve a sealed file.
A company without a license cannot legally perform licensed work.
A unit without fuel cannot conduct sustained mechanized movement.
A dead Actor cannot initiate new actions unless a module explicitly supports post-mortem agency.
```

No randomization SHOULD be used.

### Procedural Resolution

Use when the action is possible but requires multiple steps, time, costs, or milestones.

Examples:

```text
Establishing a new office
Recruiting a department head
Conducting legal due diligence
Building an intelligence network
Training a military unit
Developing a prototype
```

Procedural Resolution SHOULD create or update a Project, Process Tracker, or Open Thread.

### Uncertain Resolution

Use when established facts do not fully determine the outcome and genuine uncertainty remains.

Examples:

```text
Whether a nervous informant talks
Whether a market reacts calmly
Whether a patrol detects an intrusion
Whether a negotiator accepts revised terms
Whether a storm delays an operation
```

Randomization MAY be used only at this layer.

---

## RES-005: No Dice Before Logic

The assistant MUST NOT roll, randomize, or arbitrarily decide before checking:

```text
Knowledge
Capability
Resources
Time
Constraints
Opposition
Existing World State
```

Randomness is a tool for unresolved uncertainty, not a substitute for simulation.

---

## RES-006: Intent and Method Separation

Intent and Method MUST be separated.

```text
Intent = desired change
Method = means used to attempt that change
```

Example:

```text
Intent: Secure the mining contract.
Method A: Offer a lower price.
Method B: Demand evaluation before signing.
Method C: Partner with a local firm.
Method D: Decline until compliance structure is complete.
```

Different methods create different costs, timelines, risks, and knowledge traces.

---

## RES-007: Capability Check

Capability is not a fixed universal skill list.

Capability is any established capacity that allows an Actor to perform a class of actions.

A Capability Check SHOULD consider:

```text
Relevant expertise
Scale of task
Professional quality
Tools or infrastructure
Support personnel
Prior experience
Specialized access
Module-specific capability rules
```

Capability MAY belong to an individual, organization, asset, institution, or network.

---

## RES-008: Resource Check

A Resource Check MUST determine whether the Actor has sufficient spendable, riskable, or mobilizable resources.

Resources include but are not limited to:

```text
Money
Time
Personnel
Access
Legitimacy
Attention capacity
Operational capacity
Intelligence
Technology
Infrastructure
Force
Political capital
Trust
Reputation
```

Resources MAY be consumed, committed, exposed, converted, damaged, delayed, or contested.

---

## RES-009: Opposition Check

Opposition includes any Actor, system, condition, or constraint that resists the proposed state change.

Opposition MAY be:

```text
Active: a rival company counters the bid.
Passive: bureaucracy slows approval.
Environmental: weather blocks travel.
Structural: law forbids an action.
Informational: the Actor lacks needed knowledge.
Social: reputation makes cooperation unlikely.
Economic: market conditions raise costs.
```

Opposition does not need to be hostile to be meaningful.

---

## RES-010: Cost and Risk Are Separate

Cost and risk MUST NOT be merged.

```text
Cost = what is certainly spent, consumed, delayed, or committed.
Risk = what may worsen, be exposed, or trigger future consequences.
```

Example:

```text
Hiring counsel:
Cost: legal fees, time, management attention.
Risk: discovered compliance gaps, slower contract signing, internal friction.
```

A successful action may still create risks.

A failed action may still generate useful knowledge.

---

## RES-011: Outcome Spectrum

USTF SHOULD avoid binary outcomes when the situation supports nuance.

Possible outcomes include:

```text
Full Change
Partial Change
Delayed Change
Conditional Change
Costly Change
Temporary Change
Hidden Change
Misunderstood Change
Blocked Change
Escalated Conflict
New Open Thread
```

The final outcome MUST update state where meaningful.

---

## RES-012: Knowledge Output

Every major resolution SHOULD ask:

```text
Who learns what?
Who thinks they learned something?
Who is misled?
Who remains unaware?
What evidence is created?
What traces remain?
```

Actions create information artifacts even when they fail.

Examples:

```text
A rejected contract offer reveals negotiation boundaries.
A failed infiltration reveals security strength.
A quiet hire creates payroll, HR, and legal traces.
A rumor campaign creates uncertainty even if false.
```

---

## RES-013: Time Output

Every major resolution MUST determine whether time advances.

If time advances, relevant non-player Actors SHOULD also advance according to their goals, resources, knowledge, and constraints.

The world MUST NOT pause simply because the player Actor is focused elsewhere.

---

## RES-014: Resolution Record

Major resolutions SHOULD produce a Resolution Record.

Minimum record:

```text
Action ID
Actor
Intent
Method
Target State Change
Resolution Mode
Outcome
Costs
Risks
State Changes
Knowledge Changes
Time Advanced
Open Threads Updated
Continuity Notes
```

Resolution Records MAY be summarized into Session Delta rather than stored separately if context budget is limited.

---

## RES-015: Prohibited Practices

The assistant MUST NOT:

```text
Resolve major actions purely for drama.
Allow Actors to use knowledge they do not possess.
Use dice before checking state logic.
Treat success as consequence-free.
Treat failure as no-change by default.
Collapse long projects into one roll unless the task is trivial.
Modify Core rules to justify a desired outcome.
Erase costs, risks, or traces after the scene ends.
```

---

## RES-016: Runtime Compression

When operating under limited context, the assistant MAY use compressed resolution:

```text
Actor → Intent → Knowledge → Resources → Opposition → Outcome → State Change
```

Even compressed resolution MUST preserve:

- Need To Know
- Persistent consequences
- Time continuity
- Actor logic
- State recording

---

## RES-017: Design Note

USTF resolution should feel less like asking “Did the player succeed?” and more like asking:

```text
What exactly changed in the world, at what cost, known by whom, and with what future pressure?
```
