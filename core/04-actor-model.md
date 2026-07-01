# USTF Core Specification — 04 Actor Model

**File Path:** `core/04-actor-model.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  

## Summary

- Actor is the universal simulation entity in USTF.
- Any entity capable of changing World State may be modeled as an Actor.
- Characters, organizations, governments, armies, markets, crises, diseases, AIs, and supernatural forces are Actor types.
- Actor actions are resolved as World State Change Requests.
- Actor behavior MUST be constrained by goals, resources, capabilities, knowledge, time, and risk tolerance.

---

## 1. Definition

**ACT-001:** An Actor is any entity that can meaningfully affect World State.

An Actor MAY be:

```text
Individual Character
Organization
Government
Military Unit
Corporation
Religious Institution
Noble House
Secret Society
Market
Crisis
Disease
Natural Disaster
AI System
Supernatural Force
Social Movement
```

**ACT-002:** USTF does not privilege player characters as the only meaningful actors.

Player characters are Actors, but not all Actors are player characters.

**ACT-003:** If an entity cannot affect World State, it MAY be treated as background instead of a full Actor.

---

## 2. Actor Minimum Interface

Every significant Actor SHOULD expose the following fields:

```yaml
ActorID:
Name:
Type:
Scale:
Status:
Goals:
Resources:
Capabilities:
KnowledgeState:
Constraints:
Relationships:
CurrentProjects:
RiskTolerance:
DecisionLogic:
LastUpdated:
```

**ACT-004:** Significant Actors MUST have at least:

```text
Identity
Goal
Capability
Knowledge State
Constraint
```

Without these fields, the Actor cannot be reliably simulated.

---

## 3. Actor Identity

**ACT-005:** Each Actor MUST have a stable identifier.

Recommended format:

```text
ACT-FSS-Francis-001
ACT-ORG-FSS-001
ACT-STATE-France-001
ACT-CRISIS-Plague-BlackDeath-001
```

Stable identifiers prevent confusion when names change, organizations split, aliases appear, or NPCs are replaced.

---

## 4. Actor Type

Actor Type defines the simulation expectations for an Actor.

Common types:

```text
Character
Organization
Faction
State
MilitaryUnit
Institution
Market
Crisis
Environment
AI
Supernatural
AbstractPressure
```

**ACT-006:** Actor Type MAY define additional fields, but MUST NOT bypass Core requirements.

Example:

```yaml
Type: Organization
Additional Fields:
  InternalFactions:
  Leadership:
  LegalStatus:
  OperationalCapacity:
```

---

## 5. Actor Scale

Scale describes the level at which an Actor operates.

Recommended levels:

```text
0: Individual
1: Small Team
2: Local Organization
3: Regional Organization
4: National Organization
5: Transnational Organization
6: Major State / Global Institution
7: Civilizational / Planetary Actor
8: Interstellar / Systemic Actor
9: Cosmic / Existential Actor
```

**ACT-007:** Scale is descriptive, not absolute power.

A small Actor may influence a larger Actor through access, knowledge, leverage, or timing.

---

## 6. Goals

**ACT-008:** Every significant Actor SHOULD have one or more Goals.

Goals represent desired World State changes.

Goal examples:

```text
Secure contract.
Preserve regime stability.
Expand market access.
Suppress scandal.
Investigate missing person.
Protect dynasty.
Prevent military encirclement.
Spread infection.
Reduce regulatory exposure.
```

Goals SHOULD be classified:

```text
Primary Goal
Secondary Goal
Survival Goal
Hidden Goal
Short-Term Goal
Long-Term Goal
```

**ACT-009:** Actor goals MAY conflict internally.

Example:

```text
A corporation may seek profit while also avoiding regulatory attention.
A noble house may seek royal favor while preparing betrayal.
A government may seek peace while military factions seek escalation.
```

---

## 7. Resources

Resources are anything an Actor can spend, risk, accumulate, defend, convert, or lose.

Core resource categories:

```text
Time
Wealth
Personnel
Legitimacy
Attention
Knowledge
Access
Trust
Reputation
Infrastructure
Technology
Force
Territory
PoliticalCapital
OperationalCapacity
```

**ACT-010:** An Actor cannot spend or rely on resources it does not possess, control, access, or credibly borrow.

**ACT-011:** Resource access MUST be distinguished from resource ownership.

Example:

```text
A minister may access state funds without owning them.
A field commander may command troops but not control national strategy.
A consultant may influence a corporation without owning shares.
```

---

## 8. Capabilities

Capabilities describe what an Actor can plausibly do.

Capabilities MAY include:

```text
Negotiation
Violence
Research
Logistics
Espionage
Legal Action
Administration
Manufacturing
Finance
Propaganda
Magic
Cyberwarfare
Fleet Command
Religious Authority
```

**ACT-012:** Capabilities MUST be interpreted within genre and scale.

Example:

```text
"Logistics" for a medieval noble house differs from "Logistics" for a space navy.
```

**ACT-013:** Capability does not imply permission, resources, opportunity, or knowledge.

An Actor may be capable of an action but unable to perform it due to missing access, time, resources, legal authority, or information.

---

## 9. Knowledge State

**ACT-014:** Actors MUST act only on their Knowledge State.

An Actor's Knowledge State is not identical to objective World State.

Knowledge may be:

```text
Accurate
Partial
False
Outdated
Classified
Misinterpreted
Unverified
Compromised
```

**ACT-015:** Player knowledge MUST NOT automatically become character knowledge.

**ACT-016:** Assistant knowledge MUST NOT automatically become NPC knowledge.

---

## 10. Constraints

Constraints limit Actor choices.

Constraint types:

```text
Legal
Financial
Logistical
Political
Social
Moral
Religious
Technological
Geographical
Temporal
Organizational
Psychological
Informational
```

**ACT-017:** Constraints SHOULD be enforced even when inconvenient.

Example:

```text
A company without legal authority cannot legally perform regulated work.
A medieval army without food cannot campaign indefinitely.
A spy agency cannot act on intelligence it has not received.
```

---

## 11. Relationships

Relationships describe standing between Actors.

Relationship fields MAY include:

```yaml
TargetActor:
Status:
Trust:
Leverage:
Hostility:
Dependency:
Obligation:
KnownBy:
LastContact:
```

Recommended status values:

```text
Ally
Partner
Neutral
Rival
Enemy
Patron
Client
Dependent
Unknown
Compromised
```

**ACT-018:** Relationships SHOULD be directional.

Example:

```text
Actor A trusts Actor B.
Actor B secretly distrusts Actor A.
```

---

## 12. Current Projects

Current Projects are ongoing attempts to change World State.

Examples:

```text
Negotiate contract.
Build office.
Raise army.
Prepare coup.
Research cure.
Investigate cult.
Repair bridge.
Expand factory.
Contain scandal.
```

**ACT-019:** Significant ongoing projects SHOULD record:

```yaml
ProjectID:
OwnerActor:
Goal:
Progress:
Requirements:
ResourcesCommitted:
Risks:
Opposition:
ExpectedCompletion:
Visibility:
```

---

## 13. Risk Tolerance

Risk Tolerance shapes Actor decisions.

Suggested values:

```text
Avoidant
Cautious
Balanced
Aggressive
Reckless
Desperate
Fanatical
```

**ACT-020:** Actor Risk Tolerance SHOULD influence choices under uncertainty.

A desperate Actor may accept costs that a cautious Actor would avoid.

---

## 14. Decision Logic

Decision Logic describes how an Actor chooses actions.

It may be simple:

```text
Preserve survival first, then expand influence.
```

Or detailed:

```text
Prioritize legal protection, avoid media attention, accept short-term profit loss to secure long-term license stability.
```

**ACT-021:** Decision Logic SHOULD be stable unless changed by events.

Events that may change Decision Logic:

```text
Leadership change
Resource collapse
Major scandal
Military defeat
Ideological shift
External coercion
Revelation of new knowledge
Trauma or betrayal
```

---

## 15. Actor Action as World State Change Request

**ACT-022:** Actor actions MUST be interpreted as attempted World State changes.

Example:

```text
Action: Hire legal counsel.
Requested State Change:
- Add Legal Counsel as Asset or Actor.
- Increase Legal Capability.
- Reduce available funds.
- Open compliance project.
- Update Knowledge State for involved Actors.
```

This prevents actions from resolving as vague narration only.

---

## 16. Actor Lifecycle

Actors MAY enter, change, merge, split, become inactive, or exit the campaign.

Lifecycle states:

```text
Active
Dormant
Unknown
Destroyed
Merged
Split
Retired
Deceased
Disbanded
Transformed
```

**ACT-023:** Actor removal MUST preserve consequences.

Example:

```text
A dead king may still affect succession.
A disbanded company may leave debts.
A destroyed cult may leave surviving doctrine.
```

---

## 17. Runtime Requirements

When resolving a major action, the assistant MUST identify:

```text
Acting Actor
Intent
Knowledge available
Capabilities used
Resources used
Constraints
Opposition
Risks
Time required
Expected World State change
```

If these cannot be determined, the assistant SHOULD mark missing fields as Unknown rather than invent them.

---

## 18. Non-Binding Example

```yaml
ActorID: ACT-ORG-FSS-001
Name: FSS
Type: Organization
Scale: 3
Status: Active
Goals:
  - Secure profitable security contracts.
  - Build legal and corporate infrastructure.
  - Avoid overextension.
Resources:
  Wealth: Moderate
  Personnel: Limited senior staff
  Reputation: Emerging
  LegalCapacity: Developing
Capabilities:
  - Field security operations
  - Contract negotiation
  - Limited administrative expansion
KnowledgeState:
  - Knows current Sierra Leone deployment constraints.
  - Knows Canadian mining opportunity exists.
Constraints:
  - Senior staff currently deployed.
  - Legal framework incomplete.
CurrentProjects:
  - Canadian contract evaluation
  - Legal compliance structure
  - Office expansion
RiskTolerance: Cautious-Balanced
DecisionLogic: Expand only when legal and staffing risks are controlled.
```

This example is illustrative and non-binding.
