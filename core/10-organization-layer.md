# USTF v3.0 — Organization Layer

**File Path:** `core/10-organization-layer.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Actor Model, Resource System, Knowledge System, Time System, Resolution System

## Summary

The Organization Layer defines how organizations operate as Actors. A company, state, army, church, noble house, intelligence service, gang, research institute, movement, or secret society can all be represented through the same organizational interface. Organizations are not passive backdrops; they possess goals, resources, knowledge, internal structure, projects, constraints, and decision logic.

---

## ORG-000: Organization as Actor

Every significant Organization is an Actor.

An Organization MUST be able to hold:

```text
Goals
Resources
Capabilities
Knowledge State
Constraints
Relationships
Projects
Risk Tolerance
Decision Logic
```

An Organization MAY contain other Actors.

---

## ORG-001: Organization Definition

An Organization is a coordinated structure that can persist beyond any single individual and can act through members, assets, procedures, authority, or shared identity.

Examples:

```text
Corporation
Government agency
Military unit
Intelligence service
Noble house
Religious institution
Political party
Merchant guild
Criminal network
Research institute
Rebel movement
Secret society
AI-managed system
```

---

## ORG-002: Required Organization Fields

Every significant Organization SHOULD track:

```text
Name
Type
Scale
Purpose
Primary Goals
Leadership
Internal Structure
Resources
Capabilities
Knowledge State
Legal or Social Status
Relationships
Internal Factions
Current Projects
Constraints
Stability
Risk Exposure
Public Profile
Last Updated
```

The detail level SHOULD match campaign relevance.

---

## ORG-003: Scale

Scale describes the organization's size, reach, and ability to affect the world.

Suggested scale levels:

```text
0: Individual cell or micro-group
1: Local group
2: Regional organization
3: National organization
4: Transnational organization
5: Major state or megacorporate actor
6: Great power / civilizational actor
7+: Module-defined extraordinary scale
```

Scale is not competence.

A large organization can be inefficient.

A small organization can be highly capable in a narrow field.

---

## ORG-004: Stability

Stability describes how well an organization maintains coherence under stress.

Suggested levels:

```text
Collapsing
Fragile
Unstable
Functional
Stable
Entrenched
Highly Resilient
```

Stability may be affected by:

```text
Leadership disputes
Cash flow
Morale
Legal pressure
Operational losses
Public scandal
External attack
Internal factionalism
Succession crisis
Ideological fracture
```

---

## ORG-005: Leadership

Leadership defines who can make binding decisions for the organization.

Leadership SHOULD track:

```text
Formal leader
Informal power centers
Decision authority
Succession rules
Delegation limits
Internal legitimacy
Knowledge access
Personal goals
```

A leader's knowledge is not automatically identical to organization-wide knowledge.

Organization knowledge MUST still be tracked through Knowledge State.

---

## ORG-006: Internal Structure

Organizations SHOULD have enough internal structure to explain how they act.

Possible structures include:

```text
Centralized hierarchy
Bureaucracy
Board-led corporation
Military command
Feudal network
Cellular conspiracy
Loose coalition
Market network
Religious order
Clan or family structure
AI-coordinated system
```

Structure determines speed, secrecy, reliability, and internal friction.

---

## ORG-007: Internal Factions

Organizations MAY contain internal factions.

An internal faction SHOULD be tracked when it can affect decisions or outcomes.

Internal factions may differ by:

```text
Goal
Ideology
Leader loyalty
Risk tolerance
Resource control
External relationships
Knowledge access
Preferred strategy
```

Internal factions MAY be modeled as sub-Actors.

---

## ORG-008: Organizational Knowledge

Organization Knowledge is not automatically shared by all members.

USTF distinguishes:

```text
Leadership Knowledge
Department Knowledge
Cell Knowledge
Field Knowledge
Institutional Record
Rumor
Compartmentalized Secret
Public Position
```

The assistant MUST enforce Need To Know inside organizations.

A field operative may know facts unknown to headquarters.

Headquarters may know strategy unknown to field staff.

A compartment may act independently based on partial knowledge.

---

## ORG-009: Organizational Capability

Organizational Capability describes what the organization can reliably do.

Examples:

```text
Legal compliance
Armed security
Heavy logistics
Research and development
Political lobbying
Media management
Financial engineering
Counterintelligence
Recruitment
Construction
Diplomacy
Covert action
Mass mobilization
```

Capability SHOULD consider:

```text
Personnel
Procedures
Experience
Infrastructure
Leadership
Legal authority
Operational capacity
Resource availability
Cultural competence
Institutional memory
```

---

## ORG-010: Organizational Projects

Organizations pursue Projects over time.

Projects SHOULD track:

```text
Project Name
Owner
Goal
Status
Resources Committed
Time Scale
Milestones
Dependencies
Risks
Opposition
Knowledge Visibility
Expected Consequences
```

Projects continue advancing when time passes, unless blocked or deprioritized.

---

## ORG-011: Organizational Turn

When the world advances at an operational or strategic timescale, relevant Organizations SHOULD take turns.

A compressed Organization Turn:

```text
1. Review goals.
2. Review constraints.
3. Update active projects.
4. Allocate resources.
5. React to new knowledge.
6. Manage internal pressure.
7. Act externally if justified.
8. Update state and open threads.
```

Not every organization needs a full turn every session.

Only relevant organizations should receive active processing.

---

## ORG-012: Overextension

Organizations can overextend.

Overextension occurs when commitments exceed available capacity.

Potential symptoms:

```text
Delayed projects
Lower quality
Staff fatigue
Financial strain
Command confusion
Information gaps
Legal mistakes
Operational failures
Internal conflict
Reputation damage
```

The assistant SHOULD apply overextension pressure when an organization expands faster than its capacity supports.

---

## ORG-013: Organizational Inertia

Organizations do not change instantly.

Structural reforms, culture shifts, compliance upgrades, personnel screening, expansion, and reorganization SHOULD require time and attention.

An order from leadership may create a project, not immediate completion.

---

## ORG-014: Public Profile and Legitimacy

Organizations exist in social and political environments.

Public Profile MAY include:

```text
Reputation
Legal status
Public trust
Brand recognition
Fear
Scandal
Political alignment
Regulatory scrutiny
Market perception
Cultural standing
```

Public Profile affects access, recruitment, contracts, risk, and conflict.

---

## ORG-015: Relationships

Organization relationships SHOULD track more than friend/enemy.

Suggested relationship fields:

```text
Relationship Type
Trust
Dependence
Hostility
Leverage
Competition
Shared interests
Legal obligations
Historical baggage
Knowledge asymmetry
```

Organizations may cooperate in one arena and compete in another.

---

## ORG-016: Organization Failure

Organization failure does not always mean destruction.

Failure modes include:

```text
Collapse
Fragmentation
Capture by internal faction
Bankruptcy
Legal shutdown
Loss of legitimacy
Operational paralysis
Leadership decapitation
Mission drift
Absorption by another actor
Transformation into new organization
```

Failure SHOULD create successor consequences.

---

## ORG-017: Design Note

The Organization Layer is central to USTF. Long campaigns often break when organizations behave like scenery. In USTF, organizations are living Actors with limited knowledge, limited capacity, internal politics, and persistent obligations.
