# USTF v3.0 — Resource System

**File Path:** `core/09-resource-system.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Actor Model, World State Model, Resolution System

## Summary

The Resource System defines what Actors can spend, risk, accumulate, convert, protect, and lose. Resources are not limited to money or equipment. USTF treats influence, attention, legitimacy, time, access, intelligence, infrastructure, personnel, and trust as resources when they can affect world-state change.

---

## RSC-000: Definition

A Resource is anything an Actor can use, consume, risk, convert, defend, accumulate, deny, trade, or expose in order to affect World State.

Resources are not necessarily physical.

A Resource MAY be:

```text
Material
Social
Political
Economic
Legal
Informational
Temporal
Military
Technological
Cultural
Supernatural, if module-defined
```

---

## RSC-001: Core Resource Categories

USTF Core recognizes the following abstract resource categories:

```text
Time
Wealth
Personnel
Access
Legitimacy
Reputation
Trust
Attention Capacity
Operational Capacity
Intelligence
Infrastructure
Technology
Force
Territory
Political Capital
Legal Standing
Supply
```

Modules MAY add specialized resources.

Modules MUST NOT remove Core resource logic.

---

## RSC-002: Resource State

Every significant resource SHOULD be described by:

```text
Name
Category
Holder
Quantity or Level
Quality
Availability
Mobility
Refresh Rate
Vulnerability
Legal Status
Visibility
Known By
Current Commitments
```

A resource can exist without exact numeric quantification.

Use levels when precise numbers are unnecessary:

```text
None
Minimal
Low
Moderate
High
Extensive
Dominant
```

---

## RSC-003: Resource Availability

Possession does not imply availability.

A resource MAY be:

```text
Available
Committed
Restricted
Frozen
Hidden
Contested
Degraded
Delayed
Inaccessible
Unknown
```

Example:

```text
A company may possess money but lack legal authority to spend it.
A military unit may possess vehicles but lack fuel.
A noble house may possess prestige but lack court access.
An intelligence agency may possess information but be unable to reveal the source.
```

---

## RSC-004: Resource Commitment

When a resource is assigned to a project, operation, contract, or obligation, it becomes committed.

Committed resources SHOULD NOT be reused elsewhere without consequence.

Potential consequences include:

```text
Delay
Overextension
Quality reduction
Exposure
Internal friction
Cost increase
Opportunity loss
Relationship damage
```

---

## RSC-005: Resource Conversion

Resources MAY be converted into other resources when plausible.

Examples:

```text
Wealth → Personnel through hiring.
Reputation → Access through introductions.
Intelligence → Leverage through negotiation.
Technology → Operational Capacity through deployment.
Legitimacy → Political Capital through recognition.
Force → Territory through conquest or security.
```

Conversion SHOULD have:

```text
Time cost
Efficiency loss
Risk
Opposition
Visibility
Knowledge trace
```

No conversion is automatic unless established by module or state.

---

## RSC-006: Time as Resource

Time is always a resource.

Time can be:

```text
Spent
Saved
Wasted
Bought
Lost
Delayed
Compressed
Exchanged for quality
Exchanged for secrecy
Exchanged for preparation
```

Actions with no immediate monetary cost may still consume time and attention.

The assistant MUST consider time costs for major actions.

---

## RSC-007: Attention as Resource and Exposure

Attention has two meanings:

```text
Attention Capacity = how much focus an Actor can allocate.
External Attention = how much scrutiny an Actor attracts.
```

External Attention MAY come from:

```text
Media
Law enforcement
Regulators
Intelligence agencies
Rivals
Public opinion
Religious authorities
Markets
Military observers
Supernatural forces, if module-defined
```

Attention is not always negative.

It may create:

```text
Prestige
Deterrence
Investment
Fear
Recruitment
Political leverage
Regulatory risk
Investigation
Targeting
```

---

## RSC-008: Legitimacy

Legitimacy is the recognized right to act.

It may come from:

```text
Law
Tradition
Contract
Rank
Election
Ownership
Religious sanction
Public consent
Military control
Technical authority
Custom
```

An Actor may have capability without legitimacy.

An Actor may have legitimacy without capability.

The distinction MUST be preserved.

---

## RSC-009: Access

Access is the ability to reach people, places, systems, institutions, markets, or information.

Access MAY be:

```text
Physical
Social
Legal
Digital
Institutional
Geographic
Financial
Cultural
Secret
Temporary
```

Access SHOULD be tracked when it determines whether an action is possible.

---

## RSC-010: Intelligence

Intelligence is usable information.

It is both a resource and a Knowledge State object.

Intelligence differs from raw information because it can support decisions.

Intelligence SHOULD record:

```text
Content
Holder
Source
Reliability
Timeliness
Actionability
Sensitivity
Transferability
Risk if exposed
```

---

## RSC-011: Personnel

Personnel includes individuals, teams, staff, agents, soldiers, contractors, experts, retainers, employees, and volunteers.

Personnel are not generic tokens when they are significant.

Important personnel SHOULD be represented as Actors or Assets.

Personnel may be constrained by:

```text
Skill
Loyalty
Morale
Availability
Fatigue
Legal status
Payment
Command structure
Personal goals
Knowledge limits
```

---

## RSC-012: Operational Capacity

Operational Capacity is an Actor's ability to execute work at scale.

It includes:

```text
Management bandwidth
Procedures
Logistics
Communications
Staffing
Institutional memory
Command discipline
Administrative reliability
```

Operational Capacity is often the bottleneck in long campaigns.

An Actor with wealth but low Operational Capacity may fail to execute complex plans.

---

## RSC-013: Resource Degradation

Resources may degrade through:

```text
Use
Neglect
Exposure
Time
Attrition
Corruption
Fatigue
Political pressure
Market movement
Technological obsolescence
Loss of trust
```

The assistant SHOULD degrade resources when established conditions justify it.

Resources MUST NOT remain perfect indefinitely by default.

---

## RSC-014: Resource Recovery

Resources may recover through:

```text
Rest
Repair
Investment
Training
Recruitment
Reputation rebuilding
Political settlement
Legal remediation
Supply replenishment
Institutional reform
```

Recovery SHOULD require time, cost, or opportunity.

---

## RSC-015: Resource Visibility

Not all resources are visible.

Resource visibility may be:

```text
Public
Known to allies
Known to rivals
Classified
Rumored
Hidden
Unknown
Misestimated
```

Actors MUST NOT respond to hidden resources unless their Knowledge State supports awareness or suspicion.

---

## RSC-016: Resource Ledger

Major campaigns SHOULD maintain Resource Ledgers for important Actors and Organizations.

A Resource Ledger SHOULD track:

```text
Resource
Holder
Level
Status
Commitments
Vulnerabilities
Known By
Last Updated
Notes
```

Under limited context, only resources relevant to current Open Threads need active tracking.

---

## RSC-017: Design Note

USTF uses resources to prevent world simulation from becoming pure narration. If an Actor lacks time, access, legitimacy, personnel, or operational capacity, the action should be constrained even if the story would be more convenient otherwise.
