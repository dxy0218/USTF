# USTF v3.0 — Conflict Layer

**File Path:** `core/11-conflict-layer.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Actor Model, Resolution System, Resource System, Organization Layer, Knowledge System

## Summary

The Conflict Layer defines conflict as incompatible Actor goals under constraints. Combat is only one form of conflict. USTF uses a unified conflict framework for violence, war, negotiation, legal disputes, political rivalry, commercial competition, espionage, social pressure, internal factional struggle, and supernatural opposition where applicable.

---

## CON-000: Definition

Conflict exists when two or more Actors pursue incompatible or mutually constraining goals.

Conflict does not require violence.

Conflict does not require hatred.

Conflict does not require both sides to know the conflict exists.

---

## CON-001: Conflict Is Not Combat

Combat is a module or sub-procedure within conflict.

USTF Core MUST NOT treat combat as the default or privileged form of conflict.

Conflict may include:

```text
Armed combat
War
Commercial competition
Contract negotiation
Legal dispute
Political struggle
Succession crisis
Intelligence operation
Media scandal
Regulatory pressure
Religious schism
Boardroom coup
Diplomatic standoff
Covert infiltration
Public opinion battle
Scientific race
```

---

## CON-002: Conflict Fields

Every significant conflict SHOULD track:

```text
Conflict ID
Name
Actors Involved
Stakes
Theater
Visibility
Time Scale
Means Available
Resources Committed
Knowledge Asymmetry
Escalation Level
Constraints
Current Position
Exit Conditions
Potential Consequences
Open Questions
Last Updated
```

---

## CON-003: Stakes

Stakes define what may change if the conflict resolves.

Stakes may include:

```text
Territory
Contract control
Leadership
Reputation
Legal status
Resource access
Survival
Secrecy
Market share
Public legitimacy
Policy outcome
Religious authority
Dynastic claim
Operational freedom
Knowledge exposure
```

Stakes SHOULD be concrete enough to affect World State.

---

## CON-004: Theater

Theater defines where and how the conflict is contested.

Theaters include:

```text
Physical battlefield
Courtroom
Market
Media environment
Boardroom
Parliament
Royal court
Street network
Supply chain
Digital network
Diplomatic channel
Religious institution
Intelligence backchannel
Scientific community
```

A single conflict may involve multiple theaters.

---

## CON-005: Visibility

Conflict visibility may be:

```text
Open
Public but misunderstood
Private
Secret
Compartmentalized
Plausibly deniable
Hidden from one side
Misidentified
Unknown
```

Visibility determines who can react.

Actors MUST NOT react to conflicts they do not know or suspect.

---

## CON-006: Knowledge Asymmetry

Conflict often depends on unequal knowledge.

Track:

```text
Who knows the conflict exists?
Who knows the real stakes?
Who knows the opposing Actor?
Who knows the method being used?
Who misunderstands the situation?
Who has false confidence?
```

Knowledge Asymmetry may be more important than force.

---

## CON-007: Means

Means are the methods available to Actors in conflict.

Means may include:

```text
Violence
Money
Law
Information
Reputation
Access
Negotiation
Delay
Sabotage
Coalition building
Regulation
Propaganda
Mobilization
Technical superiority
Spiritual authority, if module-defined
```

Means are constrained by resources, legitimacy, capability, knowledge, and risk tolerance.

---

## CON-008: Position

Conflict Position describes the current advantage or disadvantage of each Actor.

Position MAY be recorded descriptively:

```text
Dominant
Advantaged
Stable
Pressured
Compromised
Desperate
Defeated but not resolved
```

Or by field:

```text
Legal Position
Military Position
Financial Position
Public Position
Information Position
Operational Position
Political Position
```

The form used SHOULD match the conflict type.

---

## CON-009: Escalation

Escalation occurs when conflict intensity, cost, visibility, stakes, or methods increase.

Escalation may be:

```text
Horizontal: more theaters become involved.
Vertical: stronger means are used.
Public: more Actors become aware.
Institutional: authorities become involved.
Irreversible: options narrow and costs harden.
```

Escalation SHOULD create persistent consequences.

---

## CON-010: De-escalation

Conflict may de-escalate through:

```text
Settlement
Deterrence
Exhaustion
Compromise
Distraction
Mediation
Concealment
Temporary ceasefire
Mutual dependency
Change in leadership
External shock
```

De-escalation does not necessarily resolve the underlying conflict.

---

## CON-011: Conflict Time Scale

Conflicts may operate on different time scales:

```text
Immediate: seconds to minutes
Scene: minutes to hours
Operational: days to weeks
Strategic: months to years
Historical: years to generations
```

The time scale determines how often the conflict updates.

A military firefight and a corporate market-share battle are both conflicts but require different update rhythms.

---

## CON-012: Conflict Resolution

Conflict resolution does not always produce a winner.

Possible results include:

```text
One Actor achieves stakes
Partial settlement
Mutual exhaustion
Frozen conflict
Escalation into larger conflict
Transformation into different conflict
Hidden victory
Pyrrhic victory
Collapse of one party
Third-party capture of benefits
Unresolved continuation
```

A resolved conflict SHOULD update World State and Actor relationships.

---

## CON-013: Hidden Conflict

A conflict can exist even if one side is unaware.

Examples:

```text
A secret investigation targets a company.
A noble house is being undermined by a rival.
An intelligence service monitors an organization.
A disease spreads before being recognized.
A market actor quietly accumulates control.
```

Hidden conflict MUST still follow Actor knowledge limits.

---

## CON-014: Internal Conflict

An Actor may contain internal conflict.

Organizations, states, families, parties, and movements may suffer:

```text
Factional dispute
Succession struggle
Budget rivalry
Ideological split
Command disagreement
Corruption network
Personal rivalry
Policy conflict
```

Internal conflict MAY create sub-Actors.

---

## CON-015: Conflict Costs

Conflict costs may affect:

```text
Resources
Time
Personnel
Legitimacy
Reputation
Attention
Access
Trust
Operational capacity
Morale
Legal exposure
Future options
```

Even a victorious Actor may be weakened.

The assistant SHOULD record costs that persist beyond the scene.

---

## CON-016: Conflict Tracker

Major conflicts SHOULD use a Conflict Tracker.

A Conflict Tracker is not a countdown to predetermined events.

It is a state record showing:

```text
Current positions
Resources committed
Escalation pressure
Known and hidden stakes
Open decisions
Likely next moves
```

The tracker reflects the world; it does not replace the world.

---

## CON-017: Design Note

USTF treats conflict as strategic friction between Actors. This allows the same engine to handle a gunfight, a lawsuit, a coup, a bidding war, a religious schism, and an interstellar blockade without making combat the center of the system.
