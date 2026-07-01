# USTF v3.0 — Character Layer

**File Path:** `core/18-character-layer.md`  
**Document Type:** Core Specification  
**Layer:** Core / Actor Subtype Layer  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  

## Summary

The Character Layer defines how individual persons are represented in USTF.

A Character is not the center of the engine.

A Character is an Actor subtype.

Characters use the same core interfaces as organizations, states, factions, crises, and other Actors, but operate at individual scale.

The Character Layer MUST NOT override the Actor Model.

---

## 1. Design Purpose

The Character Layer exists to represent individual persons as persistent world entities.

It supports:

- Player characters
- NPCs
- Agents
- Leaders
- Specialists
- Family members
- Witnesses
- Rivals
- Informants
- Soldiers
- Executives
- Nobles
- Investigators
- Civilians

USTF does not assume that characters are protagonists.

A character matters because of their position, capability, access, relationships, knowledge, obligations, and consequences.

---

## 2. Character as Actor

**CHAR-001:** A Character MUST be treated as an Actor subtype.

A Character inherits the Actor interface:

```text
Identity
Type
Goals
Resources
Capabilities
Knowledge State
Constraints
Relationships
Current Projects
Risk Tolerance
Decision Logic
```

A Character MAY have additional individual-scale fields:

```text
Condition
Role
Status
Reputation
Personal Assets
Obligations
Loyalties
Vulnerabilities
Habits
History
```

---

## 3. Characters Are Not Attribute Containers

**CHAR-002:** USTF Core MUST NOT require universal fixed attributes such as Strength, Dexterity, Intelligence, Sanity, Charisma, or Class.

Specific campaigns or modules MAY define such traits.

The Core only requires functional descriptors.

Examples:

```text
Capability: Corporate Law
Capability: Close Protection
Capability: Court Diplomacy
Capability: Field Surgery
Capability: Intelligence Analysis
Capability: Zero-G Operations
```

A module MAY map these descriptors into numerical ratings, tags, dice pools, ranks, or narrative tiers.

---

## 4. Character Capability

**CHAR-003:** Character capability describes what the character can plausibly do under given conditions.

Capability SHOULD be interpreted through:

```text
Training
Experience
Tools
Physical condition
Mental condition
Access
Local knowledge
Time pressure
Opposition
Environmental constraints
```

Capability MUST NOT be evaluated in isolation.

A trained surgeon without equipment, a general without command authority, or a hacker without network access may lack practical capability in the current situation.

---

## 5. Character Position

**CHAR-004:** Position represents the character's social, legal, organizational, or institutional place in the world.

Position may include:

```text
Rank
Office
Title
Employment
Citizenship
Family role
Security clearance
Legal status
Religious standing
Military command
Corporate authority
```

Position affects:

- Access
- Legitimacy
- Obligation
- Risk exposure
- Available actions
- How other Actors respond

Position is often more important than personal skill.

---

## 6. Access

**CHAR-005:** Access is the character's ability to reach people, places, systems, institutions, records, tools, or audiences.

Access MAY be physical, social, legal, digital, economic, symbolic, or covert.

Examples:

```text
Can enter the boardroom.
Can request classified files.
Can speak to the king.
Can access the hospital database.
Can command a platoon.
Can contact a smuggler network.
```

Access MUST be tracked when it affects major actions.

---

## 7. Relationships

**CHAR-006:** Significant character relationships SHOULD be tracked as world-state elements.

Relationships may include:

```text
Trust
Fear
Debt
Love
Loyalty
Rivalry
Patronage
Family obligation
Political alignment
Professional dependency
Blackmail leverage
```

Relationships are not flavor text when they influence action.

They can be spent, damaged, strengthened, hidden, exposed, inherited, or weaponized.

---

## 8. Knowledge State

**CHAR-007:** A Character MUST NOT act on knowledge absent from their Knowledge State.

The assistant MUST distinguish between:

```text
What the user knows
What the player character knows
What the NPC knows
What the organization knows
What the public knows
```

Character knowledge SHOULD record:

```text
Content
Source
Time acquired
Reliability
Confidence
Transferability
Misinterpretation risk
```

---

## 9. Condition and Vulnerability

**CHAR-008:** Character condition SHOULD be tracked when it affects actions or consequences.

Condition may include:

```text
Healthy
Injured
Exhausted
Stressed
Compromised
Imprisoned
Sick
Addicted
Watched
Discredited
Traumatized
Protected
Hidden
```

Vulnerability describes exploitable weakness.

Examples:

```text
Debt
Scandal
Family hostage risk
Medical dependency
Legal exposure
Ideological rigidity
Poor discipline
Unstable loyalty
Known movement pattern
```

Vulnerabilities MUST NOT be invented retroactively for convenience.

---

## 10. Character Motivation

**CHAR-009:** Important NPCs SHOULD have motivations sufficient to drive independent action.

Motivations may include:

```text
Survival
Profit
Loyalty
Faith
Ambition
Revenge
Duty
Fear
Ideology
Love
Status
Security
Legacy
```

NPCs SHOULD act from their own motivation, not from narrative need.

---

## 11. Player Character Handling

**CHAR-010:** Player characters are Characters but do not receive world-central privileges by default.

Player characters MAY have unusual influence due to position, resources, or historical consequences.

They MUST still obey:

- Time constraints
- Knowledge constraints
- Resource constraints
- Physical and social limits
- Consequence persistence

The world MUST NOT pause because a player character is absent from a scene.

---

## 12. Character Change

**CHAR-011:** Meaningful character changes MUST be recorded.

Examples:

```text
Changed allegiance
Acquired new knowledge
Lost legal status
Suffered injury
Gained office
Made enemy
Inherited assets
Became compromised
Was promoted
Was exposed
Died
```

Death, disappearance, disgrace, exile, imprisonment, injury, and succession are persistent state changes.

---

## 13. Character Scale

Characters usually operate at personal scale.

However, some characters act as command nodes for larger Actors.

Examples:

```text
CEO acting through corporation
General acting through army
King acting through crown
Cult prophet acting through sect
AI avatar acting through distributed system
```

When a character acts through an organization, the assistant MUST distinguish:

```text
Personal action
Official action
Delegated organizational action
Unauthorized action
Symbolic action
```

---

## 14. Minimal Character Record

A minimal USTF character record SHOULD include:

```text
Name
Actor ID
Type: Character
Current location
Current status
Role / position
Goals
Capabilities
Resources
Knowledge summary
Relationships
Constraints
Open threads
Last updated
```

Detailed character sheets are optional.

---

## 15. Runtime Rule

Before resolving a major character action, check:

```text
1. Is this character the acting Actor?
2. What does the character intend?
3. Does the character know enough to act?
4. Does the character have capability?
5. Does the character have access?
6. Does the character have resources?
7. What constraints apply?
8. What opposition exists?
9. What state changes may follow?
```

Character action is always a World State Change Request.
