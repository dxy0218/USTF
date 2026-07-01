# USTF v3.0 Core Specification — Combined Draft

**Build Type:** Derived Artifact  
**Source:** `core/*.md`  
**Version:** v3.0.0-draft  

> This file is generated from source core files. Edit source files, not this combined document.

---

<!-- Source: core/00-overview.md -->

# USTF Core Specification — 00 Overview

**File Path:** `core/00-overview.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Purpose:** Define what USTF is, what it is not, and how its documents should be interpreted.

---

## 0. Summary

USTF is a universal campaign engine specification for persistent fictional worlds.

It is designed for long-form narrative campaigns in which world state, information, organizations, resources, and consequences must remain coherent over time.

USTF is not genre-bound.

USTF is not player-centered by default.

USTF is not a plot-generation system.

---

## 1. Definition

USTF stands for Universal Strategic TTRPG Framework.

The word TTRPG remains historically useful, but USTF is more accurately described as:

```text
A source-first, LLM-executable, book-ready campaign engine specification for persistent fictional worlds.
```

USTF defines how a fictional world changes over time.

It does not define a fixed setting, fixed genre, fixed character sheet, fixed dice mechanic, or fixed campaign structure.

---

## 2. Primary Use Cases

USTF is designed to support:

- modern realist campaigns;
- political campaigns;
- military campaigns;
- corporate and organization-management campaigns;
- medieval dynastic campaigns;
- espionage and investigation campaigns;
- horror and hidden-world campaigns;
- science-fiction and space-opera campaigns;
- long campaigns lasting months or years in real time;
- campaigns run with language-model assistance.

---

## 3. What USTF Optimizes For

USTF optimizes for:

```text
continuity
causality
information boundaries
strategic consequences
world autonomy
organization behavior
long-term maintainability
```

USTF does not primarily optimize for:

```text
fast tactical combat
cinematic pacing
balanced encounters
class-based advancement
scene-by-scene drama
```

These may be added by modules, but they are not Core goals.

---

## 4. Design Sentence

USTF does not create stories.

USTF defines how persistent fictional worlds change over time.

Stories are the observed result of world simulation.

---

## 5. Core Objects

USTF Core uses the following primary objects:

```text
Actor
World State
Knowledge State
Resource
Capability
Constraint
Project
Consequence
Conflict
Module
Session Delta
```

These objects form the minimum vocabulary for campaign operation.

---

## 6. Source and Deliverables

USTF is source-first.

The Markdown source files are canonical.

Generated products may include:

```text
ChatGPT Project Runtime Pack
Public GitHub Rulebook
PDF Rulebook
Web Documentation
Module Packs
Campaign Templates
```

Generated products MUST NOT change rule meaning relative to the source.

---

## 7. Reading Order

For runtime use, read:

```text
runtime/chatgpt-project-instructions.md
runtime/ustf-runtime-quickstart.md
runtime/ustf-minimal-core-pack.md
core/02-core-invariants.md
```

For design use, read:

```text
core/00-overview.md
core/01-architecture-principles.md
core/02-core-invariants.md
core/03-public-api.md
```

For campaign use, also read campaign state files and relevant modules.

---

## 8. Normative Language

USTF uses the following normative terms:

```text
MUST: absolute requirement.
MUST NOT: absolute prohibition.
SHOULD: expected default, with justified exceptions.
SHOULD NOT: discouraged default, with possible exceptions.
MAY: optional permission.
OPTIONAL: fully optional feature.
```

Examples are non-binding unless explicitly marked as normative.

---

## 9. Compatibility

A campaign, module, or tool may claim USTF compatibility only if it respects:

- Core Invariants;
- Core / Module boundary;
- Knowledge State separation;
- persistent consequences;
- versioned rule changes;
- canonical state files for long-term play.

---

<!-- Source: core/01-architecture-principles.md -->

# USTF Core Specification — 01 Architecture Principles

**File Path:** `core/01-architecture-principles.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Purpose:** Define the engineering principles that govern all USTF design.

---

## 0. Summary

Architecture Principles define how USTF rules should be designed.

They are not setting lore.

They are not optional advice.

They are constraints for maintaining USTF as a long-term, modular, language-model-executable campaign engine.

---

## AP-001: Source Is Canon

USTF source files are the canonical rule authority.

Generated rulebooks, PDFs, websites, summaries, and runtime packs are derived products.

Derived products MUST NOT change rule meaning.

---

## AP-002: Engine Before Content

USTF Core defines how the engine works before defining genre content.

Core SHOULD define interfaces, procedures, and invariants.

Core SHOULD NOT define setting-specific equipment, powers, classes, species, spell lists, or weapon catalogs.

---

## AP-003: Interface First

Each major system SHOULD expose a stable interface.

Examples:

```text
Actor API
Knowledge API
World State API
Resolution API
Resource API
Conflict API
Versioning API
```

Modules interact with Core through these interfaces.

Modules MUST NOT bypass them.

---

## AP-004: World Autonomy

The world runs independently of player attention.

Non-player Actors SHOULD continue pursuing goals according to their resources, knowledge, constraints, and decision logic.

The world MUST NOT pause merely because the player is not looking at a location, organization, or conflict.

---

## AP-005: Every Entity Can Be an Actor

Any entity that can affect World State MAY be modeled as an Actor.

This includes individuals, organizations, governments, armies, companies, markets, disasters, diseases, AI systems, and supernatural forces.

Actor is the universal action interface.

Character and Organization are Actor subtypes.

---

## AP-006: Information Is a Resource

Information is not merely narration.

Information may be acquired, hidden, stolen, sold, leaked, corrupted, misunderstood, or made obsolete.

Knowledge State MUST be tracked separately from World State.

---

## AP-007: Time Never Stops

Time advances for all relevant Actors.

Downtime, travel, research, negotiation, recovery, and administration are not empty gaps.

They are world update windows.

---

## AP-008: Simulation Before Randomness

USTF resolves world logic before invoking random uncertainty.

If an outcome follows clearly from established state, do not randomize it.

If an action requires process, model the process.

If uncertainty remains, resolve uncertainty.

Randomness is a tool for unknowns, not a substitute for causality.

---

## AP-009: Unknown Is Better Than Fake

If a fact has not been established and cannot be inferred, mark it as Unknown.

The assistant or operator MUST NOT fabricate continuity merely to fill a gap.

Unknown facts may later become established through investigation, world update, or state review.

---

## AP-010: Consequences Persist

Meaningful consequences remain part of World State until changed by further action.

USTF MUST NOT silently reset damage, death, exposure, debts, promises, reputation shifts, lost resources, or revealed secrets.

---

## AP-011: Modules Extend, Not Override

Genre modules MAY add specialized rules.

Modules MUST NOT override Core Invariants or Core interfaces.

A magic system, cybernetic system, cosmic horror system, or advanced technology system must still obey knowledge, time, consequence, and actor logic unless the Core itself is versioned.

---

## AP-012: Runtime Must Be Executable by Language Models

USTF must be readable by humans, but executable by language models.

Runtime-facing rules SHOULD use:

- stable identifiers;
- short paragraphs;
- explicit fields;
- templates;
- MUST / SHOULD / MAY language;
- clear priority order;
- low ambiguity.

Long essays belong in public rulebook or design notes, not hot-context runtime files.

---

## AP-013: Version History Is Canon

Rule changes are part of USTF history.

A rule change MUST record:

```text
Version
Date
Affected files
Reason
Change
Compatibility impact
Migration guidance
Playtest source if applicable
```

USTF MUST NOT modify rules retroactively merely to justify a campaign outcome.

---

## AP-014: Playtests Validate Rules

Campaigns are not only stories.

Campaigns are playtests of the engine.

After a campaign exposes a rules problem, USTF MAY be revised through versioned change.

The world should not be modified merely to protect flawed rules.

---

## AP-015: Rulebook Is Generated

The public rulebook should be generated or assembled from canonical source files.

The public book may expand explanations, examples, and teaching material.

It MUST remain rule-compatible with the source.

---

<!-- Source: core/02-core-invariants.md -->

# USTF Core Specification — 02 Core Invariants

**File Path:** `core/02-core-invariants.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Invariants  
**Purpose:** Define USTF rules that must remain stable across campaigns and modules.

---

## 0. Summary

Core Invariants are the constitutional rules of USTF.

They are stronger than normal procedures.

Modules must obey them.

Campaign-specific convenience must not override them.

---

## INV-001: World State Independence

World State exists independently of player knowledge, player attention, and narrative focus.

A fact may be true even if no player Actor knows it.

A fact may be unknown to all active player-facing Actors and still exist in World State.

---

## INV-002: Knowledge State Separation

Knowledge State is separate from World State.

Each significant Actor has its own knowledge boundary.

The assistant or operator MUST NOT collapse objective truth and Actor belief into one layer.

---

## INV-003: Need To Know

No Actor may act on information absent from its Knowledge State.

This applies to player characters, NPCs, organizations, states, companies, factions, and other Actors.

Information does not transfer merely because the user, assistant, or operator knows it.

---

## INV-004: Actor Logic

Every significant Actor SHOULD be modeled with:

```text
Goals
Resources
Capabilities
Knowledge
Constraints
Relationships
Current Projects
Decision Logic
```

An Actor's behavior should follow from these elements.

---

## INV-005: Autonomous World Progression

Relevant non-player Actors continue acting when time advances.

The world does not pause outside player-facing scenes.

---

## INV-006: Persistent Consequences

Consequences persist until changed by further action.

The assistant or operator MUST NOT silently reset consequences.

---

## INV-007: Internal Logic First

Internal logic takes priority over drama, pacing, convenience, or desired outcome.

If the logical outcome is inconvenient, the logical outcome still stands unless a rule-based intervention exists.

---

## INV-008: Unknown Preservation

If information is not established, cannot be inferred, and is not available from current state files, it remains Unknown.

Unknown MUST NOT be replaced by unsupported invention.

---

## INV-009: Conflict Is Not Combat

Combat is only one form of conflict.

Conflict includes incompatible goals pursued through military, legal, commercial, political, social, informational, economic, technological, or supernatural means.

---

## INV-010: Modules Extend Core

Modules may extend USTF with genre-specific rules.

Modules MUST NOT override Core Invariants.

---

## INV-011: Versioned Rule Change

Rules may evolve only through versioned change.

A rule must not be changed retroactively to justify a campaign outcome.

---

## INV-012: Memory Is Non-Canonical

Language-model memory may assist continuity but is not canonical campaign state.

Canonical state must be stored in current state files, ledgers, logs, deltas, or explicitly approved summaries.

---

## INV-013: State Files Govern Active Play

For active play, Current State files override old archives unless a contradiction is detected.

Contradictions SHOULD be flagged as Continuity Review Required.

---

## INV-014: Major Actions Change State

Major actions should be treated as attempted World State Change Requests.

A major action is resolved by checking Actor, intent, knowledge, resources, capability, time, constraints, opposition, uncertainty, and consequences.

---

## INV-015: Record Significant Change

Any change that may matter later SHOULD be recorded in a Session Delta or state file.

Unrecorded change is at high risk of continuity loss.

---

<!-- Source: core/03-public-api.md -->

# USTF Core Specification — 03 Public API

**File Path:** `core/03-public-api.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Draft  
**Priority:** Core Specification  
**Purpose:** Define the stable interfaces through which modules, procedures, and campaigns interact with USTF Core.

---

## 0. Summary

USTF uses a public API concept inspired by software engineering.

The API is not computer code.

It is a stable rule interface.

Modules should interact with Core through these interfaces instead of redefining Core behavior.

---

## API-001: Actor API

The Actor API defines what any world-affecting entity must expose to the engine.

Minimum fields:

```text
Actor ID
Name
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
Status
```

The Actor API is used by:

- Resolution System;
- Organization System;
- Conflict System;
- Investigation System;
- World Update Cycle;
- Campaign State files.

---

## API-002: World State API

The World State API defines objective campaign reality.

Minimum fields:

```text
Current Date / Era
Locations
Active Actors
Active Organizations
Known Objective Events
Resource Conditions
Political Conditions
Economic Conditions
Conflict Conditions
Open World Processes
Continuity Flags
```

World State MUST remain distinct from Knowledge State.

---

## API-003: Knowledge API

The Knowledge API tracks what each Actor knows, believes, suspects, or misunderstands.

Minimum fields:

```text
Knowledge ID
Content
Holder
Source
Time Acquired
Reliability
Confidence
Transferability
Classification / Secrecy
Related World State
Notes
```

The Knowledge API enforces Need To Know.

---

## API-004: Resolution API

The Resolution API processes an attempted World State Change Request.

Minimum inputs:

```text
Actor
Intent
Method
Knowledge
Capability
Resources
Time
Constraints
Opposition
Risk
Uncertainty
Desired State Change
```

Minimum outputs:

```text
Outcome
World State Changes
Knowledge State Changes
Resource Changes
Consequences
Time Advanced
Open Threads Added or Resolved
Session Delta Entries
```

---

## API-005: Resource API

The Resource API defines anything an Actor can spend, risk, convert, defend, accumulate, or lose.

Core resource categories include:

```text
Wealth
Personnel
Time
Legitimacy
Attention
Intelligence
Access
Infrastructure
Technology
Force
Reputation
Trust
Territory
Political Capital
Operational Capacity
```

Modules MAY add additional resources.

---

## API-006: Conflict API

The Conflict API defines incompatible goals pursued under constraints.

Minimum fields:

```text
Conflict ID
Actors
Stakes
Means
Theater
Visibility
Escalation Level
Time Scale
Costs
Exit Conditions
Current State
Consequences
```

Combat is one possible conflict module, not the Core conflict model.

---

## API-007: Project API

The Project API defines long-term efforts.

Minimum fields:

```text
Project ID
Owner Actor
Goal
Requirements
Resources Assigned
Time Scale
Milestones
Opposition
Risks
Progress State
Completion Conditions
Failure Conditions
```

Projects may be visible or hidden depending on Knowledge State.

---

## API-008: Session Delta API

The Session Delta API records changes between stable campaign states.

Minimum fields:

```text
Session ID
In-world Time Advanced
Player Decisions
World State Changes
Actor State Changes
Organization State Changes
Knowledge Changes
Resource Changes
Open Threads Added
Open Threads Resolved
Risks Added
Risks Reduced
Files To Update
Continuity Issues
```

Session Delta is a patch, not a complete archive.

---

## API-009: Module API

A module may add setting-specific implementations.

A module SHOULD declare:

```text
Module Name
Version
Compatible USTF Version
Scope
Added Resources
Added Capabilities
Added Actor Types
Added Procedures
Core Interfaces Used
Core Rules Extended
Limitations
```

A module MUST NOT override Core Invariants.

---

## API-010: Versioning API

Any rule change SHOULD record:

```text
Version
Date
Affected File
Affected Rule ID
Reason
Change
Compatibility Impact
Migration Guidance
Playtest Source
```

Breaking Core API changes require a MAJOR version increase.

---

<!-- Source: core/04-actor-model.md -->

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

---

<!-- Source: core/05-world-state-model.md -->

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

---

<!-- Source: core/06-time-continuity-system.md -->

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

---

<!-- Source: core/07-knowledge-information-system.md -->

# USTF Core Specification — 07 Knowledge & Information System

**File Path:** `core/07-knowledge-information-system.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  

## Summary

- Knowledge State is separate from World State.
- Actors may act only on information they possess or can reasonably infer.
- Information has source, reliability, timing, transferability, and interpretation.
- Unknown is a valid and preferred state when facts are not established.
- Knowledge management is mandatory for long-form USTF play.

---

## 1. Definition

**KNO-001:** Knowledge State is the set of information available to an Actor at a specific time.

Knowledge State includes:

```text
Facts known
Beliefs held
Rumors heard
Secrets possessed
False assumptions
Classified information
Inferences
Suspicions
Ignorance
```

**KNO-002:** Knowledge State MUST be separated from objective World State.

---

## 2. Need To Know Principle

**KNO-003:** No Actor may act on information absent from its Knowledge State.

Actors may act on:

```text
Known facts
Reasonable inferences
Orders received
Rumors believed
False information believed true
Institutional procedures
Habitual assumptions
```

Actors MUST NOT act on:

```text
Player-only knowledge
Assistant-only knowledge
Archive-only information not accessible to them
Future events
Secrets they have not learned
Hidden state without access
```

---

## 3. Knowledge Entry Minimum Fields

Every significant knowledge entry SHOULD include:

```yaml
KnowledgeID:
Content:
Holder:
Source:
TimeAcquired:
Reliability:
Confidence:
Transferability:
Classification:
Interpretation:
Status:
LastUpdated:
```

**KNO-004:** For major secrets, investigations, conspiracies, contracts, betrayals, or hidden threats, Knowledge Entries SHOULD be explicit.

---

## 4. Knowledge Holder

A Holder may be:

```text
Individual Actor
Organization Actor
Faction inside organization
Public
Rumor network
Archive
Unknown holder
```

**KNO-005:** Organizational knowledge MUST distinguish between institution-level access and individual awareness where relevant.

Example:

```text
A file exists in an agency archive.
Only two analysts have read it.
The director has not been briefed.
The field team does not know it exists.
```

---

## 5. Source

Knowledge should have a source.

Source types:

```text
Direct observation
Document
Witness
Report
Interrogation
Rumor
Sensor
Divination
Inference
Memory
Archive
Order
Media
Market signal
```

**KNO-006:** Source affects reliability and transferability.

Example:

```text
A notarized contract is more transferable than a private hunch.
A battlefield observation may be accurate but local.
A rumor may spread widely but be unreliable.
```

---

## 6. Reliability and Confidence

Reliability describes the information's objective accuracy.

Confidence describes the Holder's belief in it.

Recommended values:

```text
Reliability:
  True
  MostlyTrue
  Partial
  Misleading
  False
  Unknown

Confidence:
  Certain
  High
  Medium
  Low
  Suspicious
  Unknown
```

**KNO-007:** Reliability and Confidence SHOULD NOT be conflated.

Example:

```text
An Actor may be highly confident in false information.
An Actor may doubt true information.
```

---

## 7. Transferability

Transferability describes whether knowledge can be shared.

Recommended values:

```text
FreelyShareable
ShareableWithRisk
Classified
PersonalSecret
NonVerbal
HardToExplain
RequiresProof
BoundByOath
Compartmentalized
Untransferable
```

**KNO-008:** Sharing information SHOULD require a plausible channel, time, and willingness.

---

## 8. Classification

Classification describes access limitation.

Suggested values:

```text
Public
Private
Internal
Confidential
Secret
TopSecret
NeedToKnow
OccultHidden
UnknownClassification
```

**KNO-009:** Classification does not guarantee secrecy.

Classified information may leak.

Public information may remain unnoticed.

---

## 9. Interpretation

Actors may interpret information incorrectly.

Interpretation states:

```text
CorrectlyUnderstood
PartiallyUnderstood
Misunderstood
Overestimated
Underestimated
Ignored
Denied
Weaponized
```

**KNO-010:** The assistant SHOULD track misinterpretation when it may affect decisions.

Example:

```text
A noble interprets a diplomatic delay as insult.
A company interprets regulatory silence as approval.
An investigator interprets cult symbolism as ordinary vandalism.
```

---

## 10. Inference

Actors may infer information they do not directly know.

**KNO-011:** Inference MUST be grounded in available Knowledge State and Actor capability.

Valid inference example:

```text
A logistics officer sees fuel shipments stop and infers operational delay.
```

Invalid inference example:

```text
An NPC instantly knows a secret meeting occurred because the plot needs pressure.
```

---

## 11. Knowledge Propagation

Knowledge spreads through channels.

Channels include:

```text
Conversation
Documents
Radio
Letters
Media
Leaks
Markets
Battlefield observation
Spy networks
Religious confession
Academic publication
Dreams or visions, if module permits
```

Propagation fields:

```yaml
From:
To:
Channel:
SentAt:
ReceivedAt:
DistortionRisk:
InterceptionRisk:
ProofAttached:
```

**KNO-012:** Knowledge propagation requires time and channel unless a module explicitly defines otherwise.

---

## 12. Information Decay

Knowledge may become outdated.

Decay causes:

```text
Time passes
Situation changes
Source dies
Documents become obsolete
Rumors mutate
Technology changes
Political conditions shift
Memory becomes unreliable
```

**KNO-013:** The assistant SHOULD review knowledge validity after major time advancement.

---

## 13. Information Pollution

Information may be polluted.

Pollution types:

```text
Disinformation
Misinformation
Forgery
Propaganda
False flag
Misleading omission
Corrupted archive
Hostile interpretation
Supernatural distortion
```

**KNO-014:** Polluted information MAY be treated as Knowledge State if an Actor believes or uses it.

False information can produce real consequences.

---

## 14. Secrets

A Secret is knowledge intentionally restricted.

Secret fields:

```yaml
SecretID:
Content:
TrueState:
KnownBy:
SuspectedBy:
ProtectedBy:
ExposureRisk:
ConsequenceIfRevealed:
```

**KNO-015:** Secrets SHOULD have exposure risk if active in play.

A secret with no possible exposure is usually archive detail, not active state.

---

## 15. Public Knowledge

Public Knowledge is available to broad groups but not necessarily noticed.

**KNO-016:** Public availability does not imply every Actor knows it.

Example:

```text
A court filing is public.
Most villagers have never read it.
A journalist may find it.
A spy agency may index it.
```

---

## 16. Knowledge Ledger

Long campaigns SHOULD maintain a Knowledge Ledger.

The ledger tracks important information distribution.

Minimum structure:

```yaml
KnowledgeID:
Content:
ObjectiveTruth:
KnownBy:
NotKnownBy:
Source:
TimeAcquired:
Reliability:
ConfidenceByHolder:
Transferability:
Consequences:
LastUpdated:
```

**KNO-017:** Knowledge Ledger is mandatory for campaigns involving secrets, investigation, espionage, politics, horror, military operations, or organizational management.

---

## 17. Unknown

**KNO-018:** Unknown is a valid Knowledge value.

The assistant MUST use Unknown when:

```text
The fact is not established.
The Actor has no access.
The source is unreliable.
The archive is missing.
The timeline is contradictory.
The player has not investigated.
```

Unknown is preferable to invented certainty.

---

## 18. Runtime Requirements

Before an Actor acts on information, the assistant SHOULD check:

```text
Does this Actor know this?
How did they learn it?
When did they learn it?
Do they believe it?
Is it accurate?
Can they share it?
Could they infer it?
Is it outdated?
```

If the answer is unclear, mark as Unknown or require investigation.

---

## 19. Non-Binding Example

```yaml
KnowledgeID: KNO-FSS-Zeta-Existence-001
Content: Zeta-related internal context exists.
ObjectiveTruth: True within campaign state.
KnownBy:
  - Francis
NotKnownBy:
  - Canadian mining company
  - General FSS staff
  - External legal counsel unless explicitly briefed
Source: Prior internal campaign events
TimeAcquired: Before current contract negotiation
Reliability: True
ConfidenceByHolder:
  Francis: High
Transferability: Classified / NeedToKnow
Consequences:
  - Must not leak into Canadian contract negotiation unless disclosed.
  - NPCs cannot act on Zeta information without acquisition path.
Status: Active
```

This example is illustrative and non-binding.

---

<!-- Source: core/08-resolution-system.md -->

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

---

<!-- Source: core/09-resource-system.md -->

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

---

<!-- Source: core/10-organization-layer.md -->

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

---

<!-- Source: core/11-conflict-layer.md -->

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

---

<!-- Source: core/12-investigation-layer.md -->

# USTF v3.0 — Investigation Layer

**File Path:** `core/12-investigation-layer.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Actor Model, World State Model, Knowledge System, Resolution System, Conflict Layer

## Summary

The Investigation Layer defines how facts, evidence, inquiry, uncertainty, interpretation, concealment, and discovery operate in USTF. Investigation is not a plot gate. Investigation is the structured process by which Actors attempt to update their Knowledge State about an Objective World State.

---

## INV-000: Design Principle

Investigation in USTF does not exist to reveal a predetermined story.

Investigation exists to connect three layers:

```text
Objective World State
Evidence State
Knowledge State
```

The truth may exist even if no Actor discovers it.

Evidence may exist even if it is misunderstood.

An Actor may reach a false conclusion and still act on it.

---

## INV-001: Investigation Trigger

The Investigation Layer SHOULD be used when an Actor attempts to learn, verify, infer, expose, conceal, reconstruct, or interpret information about:

- Past events
- Hidden Actors
- Unknown motives
- Secret projects
- Crimes
- Conspiracies
- Financial conditions
- Legal exposure
- Military dispositions
- Political alignments
- Supernatural or anomalous phenomena
- Market or social trends
- Operational risks

Routine perception MAY be handled without formal investigation if it does not affect durable state or significant decisions.

---

## INV-002: Investigation Is a World State Change Request

An investigative action is a request to change an Actor's Knowledge State.

```text
Actor attempts to convert Unknown, Suspected, or False Knowledge into more reliable Knowledge.
```

The target state change SHOULD be expressed as:

```text
Current Knowledge State → Desired Knowledge State
```

Examples:

```text
Unknown supplier ownership → Identified beneficial owner
Rumored coup plot → Corroborated political conspiracy
Unverified witness statement → Reliable timeline segment
Missing accounting record → Reconstructed financial trail
```

---

## INV-003: Core Fact vs Evidence vs Interpretation

USTF MUST distinguish:

```text
Core Fact: What is objectively true in the world.
Evidence: A trace, document, witness, pattern, signal, object, or testimony produced by or related to the fact.
Interpretation: What an Actor believes the evidence means.
```

An Actor may possess evidence without understanding it.

An Actor may understand part of the truth from incomplete evidence.

An Actor may form a false interpretation from real evidence.

---

## INV-004: Evidence Properties

Every significant Evidence item SHOULD record:

```text
Evidence ID
Related Fact or Unknown Fact
Physical / Digital / Social / Testimonial / Financial / Institutional / Anomalous Form
Location or Holder
Creation Time
Discovery Time
Source
Reliability
Completeness
Tamper Risk
Chain of Custody
Accessibility
Required Capability
Risk of Acquisition
Knowledge Produced
```

Evidence MUST NOT automatically become Knowledge for all Actors.

Evidence becomes Knowledge only when an Actor obtains, perceives, analyzes, or receives it through a valid process.

---

## INV-005: Reliability Ratings

Evidence reliability SHOULD use a small, runtime-friendly scale:

```text
Confirmed
Strong
Moderate
Weak
False
Compromised
Unknown
```

Reliability is not the same as truth.

A truthful witness may be unreliable.

A forged document may contain true information.

A weak signal may point to a real hidden structure.

---

## INV-006: Investigation Inputs

An investigative resolution SHOULD identify:

```text
Investigating Actor
Question Asked
Existing Knowledge
Available Leads
Method
Access
Capability
Resources
Time Available
Opposition or Concealment
Risk Exposure
Desired Knowledge Update
```

If the question is vague, the assistant SHOULD convert it into one or more answerable investigation questions.

Example:

```text
Vague: Find out what is going on with the company.
Structured:
- Who owns the company?
- What are its active contracts?
- What legal risks are visible?
- Who benefits from the transaction?
```

---

## INV-007: Investigation Methods

Common investigation methods include:

```text
Interview
Observation
Surveillance
Document Review
Financial Audit
Technical Analysis
Forensic Analysis
Open Source Research
Human Intelligence
Signals Intelligence
Legal Discovery
Social Mapping
Market Research
Historical Research
Occult / Anomalous Inquiry
```

Genre Modules MAY add methods.

Modules MUST NOT bypass Knowledge State rules.

---

## INV-008: Access Before Discovery

An Actor generally cannot discover evidence without access.

Access may be:

```text
Physical Access
Social Access
Legal Access
Technical Access
Institutional Access
Financial Access
Cultural Access
Temporal Access
Supernatural Access
```

Lack of access does not mean the fact does not exist.

It means the Actor cannot currently interact with relevant evidence through the declared method.

---

## INV-009: Core Leads

USTF does not use mandatory plot keys.

However, if a fact would naturally leave multiple traces, the assistant SHOULD model multiple possible leads.

A lead is not a guarantee.

A lead is an available route toward evidence or knowledge.

```text
Fact → Evidence → Lead → Investigative Action → Knowledge Update
```

If the players miss a lead, the world continues.

The hidden Actor may act.

The crisis may progress.

The opportunity may expire.

---

## INV-010: Failed Investigation

Failure in investigation SHOULD NOT mean “nothing happens” by default.

Possible outcomes include:

```text
No new knowledge
Partial knowledge
False confidence
Misleading interpretation
Exposure to opposition
Loss of time
Resource cost
Evidence contamination
Target alerted
New unrelated clue found
Investigator compromised
```

A failed investigation may still produce useful but incomplete information.

---

## INV-011: Concealment and Counter-Investigation

Concealment is an Actor action.

Counter-investigation may include:

```text
Destroying evidence
Creating false evidence
Compartmentalizing knowledge
Threatening witnesses
Legal obstruction
Encryption
Cover stories
Disinformation
Moving assets
Killing or recruiting investigators
Bureaucratic delay
Reputation attack
```

Concealment MUST obey Actor resources, capabilities, knowledge, and time constraints.

A hidden Actor cannot conceal a leak it does not know exists.

---

## INV-012: Knowledge Contamination

Investigation may contaminate Knowledge State.

Knowledge contamination occurs when an Actor receives information that is:

```text
False
Partially true
Outdated
Misinterpreted
Deliberately planted
Emotionally distorted
Politically filtered
Technically corrupted
Supernaturally distorted
```

Contaminated knowledge SHOULD be recorded rather than silently corrected.

Actors may act on contaminated knowledge.

Those actions create real consequences.

---

## INV-013: Investigation Time Scale

Investigations may occur at different scales:

```text
Immediate: seconds to minutes
Scene: minutes to hours
Operational: hours to days
Strategic: weeks to months
Historical: months to years
```

The assistant MUST advance relevant time.

Other Actors may act during long investigations.

---

## INV-014: Investigation and Conflict

Investigation may be a form of Conflict when:

- Another Actor is actively hiding information
- Multiple Actors race to discover the same truth
- Discovery creates legal, political, military, or social stakes
- Evidence control matters
- Public interpretation is contested

In such cases, use the Conflict Layer together with this Investigation Layer.

---

## INV-015: Investigation Output

An investigation SHOULD produce one or more of the following:

```text
Knowledge Entry
Evidence Entry
Lead Entry
Actor State Change
World State Change
Risk Change
Attention Change
Open Thread
Closed Thread
Contradiction Flag
```

The output MUST specify who knows the result.

The output MUST NOT globally reveal the result unless the result has actually become public.

---

## INV-016: Investigation Case File

Significant investigations SHOULD maintain a Case File.

A Case File tracks:

```text
Primary Question
Known Facts
Suspected Facts
Evidence
Leads
False Leads
Actors Involved
Opposition
Timeline
Knowledge Holders
Open Questions
Next Possible Actions
```

Case Files are active state, not archive, while unresolved.

---

## INV-017: Public Revelation

Discovery and public revelation are separate.

An Actor may know a fact privately.

Another Actor may suspect it.

The public may remain unaware.

Public revelation requires a communication event, publication, leak, trial, broadcast, rumor cascade, official statement, or other valid process.

Public revelation may trigger:

```text
Attention
Legitimacy shifts
Legal exposure
Market reaction
Faction realignment
Violence
Cover-up escalation
```

---

## INV-018: Unknown Preservation

If a fact has not been established, the assistant SHOULD mark it as Unknown.

If a fact exists but has not been discovered, it remains hidden.

If a fact is impossible to determine from available evidence, the assistant MUST NOT invent certainty.

---

## Runtime Summary

```text
Investigation changes Knowledge State, not objective truth.
Facts exist independently.
Evidence connects facts to possible discovery.
Interpretation may be wrong.
Failed investigation still changes time, risk, and sometimes knowledge.
Public revelation is separate from private discovery.
```

---

<!-- Source: core/13-economy-logistics-layer.md -->

# USTF v3.0 — Economy & Logistics Layer

**File Path:** `core/13-economy-logistics-layer.md`  
**Document Type:** Core Specification  
**Layer:** Core / Module Interface  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Resource System, Organization Layer, Time System, Resolution System

## Summary

The Economy & Logistics Layer defines how material capacity, money, supply, infrastructure, labor, transport, maintenance, production, scarcity, and operational reach are represented in USTF. It provides a universal interface rather than a fixed economic model.

---

## ECO-000: Design Principle

Economy in USTF is not primarily about accounting.

Economy is the structured flow of resources through time, institutions, infrastructure, and constraints.

Logistics is not a detail layer.

Logistics defines what an Actor can actually do, where, for how long, and at what cost.

---

## ECO-001: Economy Trigger

Use the Economy & Logistics Layer when an action depends on:

- Funding
- Procurement
- Maintenance
- Supply
- Transport
- Labor
- Production
- Infrastructure
- Market access
- Legal access
- Operational capacity
- Long-term sustainability
- Resource conversion
- Scarcity or bottlenecks

Minor purchases MAY be handled descriptively if they do not alter durable state.

---

## ECO-002: Abstract Resource Principle

USTF Core MUST NOT require a fixed currency, price table, or universal market system.

Genre Modules MAY define concrete currencies, prices, wages, commodity flows, or fiscal systems.

Core uses abstract resources and constraints:

```text
Wealth
Capital
Cash Flow
Supply
Labor
Infrastructure
Transport
Maintenance
Access
Production Capacity
Operational Capacity
Political Permission
Legal Permission
```

---

## ECO-003: Cost Is Multi-Dimensional

Cost is not only money.

Every significant economic or logistical action MAY cost:

```text
Money
Time
Personnel
Political Capital
Attention
Legal Exposure
Reputation
Opportunity Cost
Infrastructure Wear
Supply Consumption
Maintenance Burden
Trust
Security Risk
```

The assistant SHOULD record all meaningful costs.

---

## ECO-004: Logistics Before Action

An Actor cannot perform sustained operations without logistics.

Before resolving major action, check:

```text
Can the Actor reach the theater?
Can the Actor sustain presence there?
Can the Actor move people, goods, money, and information?
Can the Actor maintain equipment and morale?
Can the Actor replace losses?
Can the Actor legally or covertly access required channels?
```

Lack of logistics may convert an action from Immediate to Procedural or Impossible.

---

## ECO-005: Operational Reach

Operational Reach defines where an Actor can act effectively.

Operational Reach depends on:

```text
Geography
Transport
Communications
Local access
Legal permission
Supply network
Personnel
Infrastructure
Partners
Security environment
Information access
```

An Actor may have global awareness but local inability.

Example:

```text
A corporation knows about a West African opportunity but lacks local security, legal access, logistics partners, and trusted personnel.
```

---

## ECO-006: Capacity vs Reserve

USTF distinguishes:

```text
Capacity: What an Actor can do per unit of time.
Reserve: What an Actor can spend before suffering depletion.
```

Examples:

```text
A company may have high cash reserves but low managerial capacity.
An army may have large manpower reserves but poor transport capacity.
A noble house may have land wealth but limited liquid capital.
A cult may have strong influence but low public legitimacy.
```

Actions should check both Capacity and Reserve.

---

## ECO-007: Bottlenecks

A bottleneck is the limiting constraint that prevents scale, speed, or sustainability.

Common bottlenecks:

```text
Cash
Specialists
Legal approval
Transport
Secure communication
Trusted leadership
Local legitimacy
Fuel
Ammunition
Maintenance
Data access
Manufacturing capacity
Political permission
```

The assistant SHOULD identify bottlenecks for major projects.

A project cannot scale beyond its bottleneck without resolving or bypassing it.

---

## ECO-008: Supply Chain

A Supply Chain is a linked set of dependencies required to deliver resources.

Supply Chains SHOULD track:

```text
Input Resource
Source
Route
Transport Mode
Intermediaries
Storage
Security
Legal Status
Time Requirement
Failure Points
Visibility
Opposition Exposure
```

A Supply Chain can be attacked, disrupted, improved, hidden, rerouted, nationalized, sanctioned, or corrupted.

---

## ECO-009: Maintenance Burden

Assets create maintenance burdens.

Acquiring an asset is not the same as sustaining it.

Examples:

```text
Vehicles require fuel, spare parts, drivers, mechanics, storage, and permissions.
Offices require rent, staff, utilities, records, and local compliance.
Armed units require salaries, training, discipline, logistics, and command.
Databases require security, updates, access control, and backups.
```

The assistant SHOULD add maintenance obligations for significant assets.

---

## ECO-010: Financial Abstraction Levels

USTF supports multiple financial detail levels:

```text
Level 0: Narrative Sufficiency
Level 1: Abstract Resource Rating
Level 2: Budget Bands
Level 3: Ledger Tracking
Level 4: Full Accounting Module
```

Core recommends Level 1 or Level 2 for most campaigns.

Modules MAY use higher detail when economy is central to play.

---

## ECO-011: Budget Bands

When using Budget Bands, classify spending as:

```text
Trivial
Minor
Moderate
Major
Strategic
Existential
```

The band is relative to the Actor.

A Major cost for an individual may be Trivial for a state.

A Strategic cost may force reprioritization.

An Existential cost may threaten survival.

---

## ECO-012: Market Access

Money alone does not guarantee acquisition.

Market Access may depend on:

```text
Availability
Legality
Sanctions
Reputation
Licensing
Trust
Transport
Political permission
Scarcity
Seller incentives
Security risk
Cultural familiarity
```

If market access is absent, procurement becomes procedural, risky, or impossible.

---

## ECO-013: Procurement

Procurement is the process of converting resources into assets.

Procurement SHOULD check:

```text
Need
Specification
Supplier
Price or cost band
Time
Transport
Quality
Legality
Discretion
Counterparty reliability
Maintenance burden
```

Failed procurement may create:

```text
Delay
Overpayment
Inferior goods
Fraud
Attention
Legal exposure
Supply chain vulnerability
Dependency
```

---

## ECO-014: Production

Production converts inputs into outputs over time.

Production requires:

```text
Input resources
Labor
Knowledge or technology
Tools
Infrastructure
Time
Quality control
Security
Distribution
```

Production bottlenecks SHOULD be explicitly identified for major industries, military units, research programs, or infrastructure projects.

---

## ECO-015: Cash Flow and Liquidity

Wealth and liquidity are separate.

```text
Wealth: Total stored economic value.
Liquidity: Ability to spend quickly without unacceptable loss.
Cash Flow: Regular inflow and outflow over time.
```

An Actor may be wealthy but unable to pay immediate costs.

An Actor may have positive cash flow but insufficient reserves.

An Actor may survive short-term losses if reserves are high.

---

## ECO-016: Economic Pressure

Economic pressure may arise from:

```text
Debt
Payroll
Maintenance
Taxation
Sanctions
Supply disruption
Market collapse
Inflation
Corruption
Theft
War
Legal judgment
Political confiscation
```

Economic pressure SHOULD affect Actor goals, risk tolerance, bargaining position, and internal politics.

---

## ECO-017: Logistics and Time

Logistics always interacts with time.

The assistant MUST account for:

```text
Lead time
Travel time
Production time
Repair time
Training time
Approval time
Seasonality
Communication delay
Customs / border delay
Bureaucratic delay
```

Speeding up a process usually increases cost, risk, attention, or failure chance.

---

## ECO-018: Economy and Information

Economic systems produce information traces.

Examples:

```text
Invoices
Payroll
Shipping manifests
Customs records
Bank transfers
Vendor relationships
Insurance policies
Audit trails
Procurement contracts
Warehouse logs
Tax filings
```

These traces may become Evidence under the Investigation Layer.

---

## ECO-019: Economy and Politics

Economic actions may affect legitimacy, law, labor relations, class structures, diplomacy, corruption, and public opinion.

Large economic actions SHOULD check Political & Social effects.

Examples:

```text
Opening a mine may create jobs, pollution, local resentment, tax revenue, security needs, and political dependency.
Cutting payroll may improve liquidity but reduce loyalty.
Accepting foreign capital may improve capacity but create sovereignty concerns.
```

---

## ECO-020: Logistics Failure

Logistics failure SHOULD produce concrete state changes.

Possible outcomes:

```text
Delay
Reduced operational capacity
Increased cost
Equipment degradation
Morale loss
Local hostility
Supply shortage
Legal exposure
Mission cancellation
Asset loss
Strategic vulnerability
```

Logistics failure MUST NOT be treated as flavor text if it affects sustained operations.

---

## Runtime Summary

```text
Economy is resource flow through time and constraint.
Logistics determines actual operational reach.
Money alone is never sufficient.
Capacity, reserve, access, time, and maintenance must be checked.
Assets create obligations.
Supply chains create vulnerabilities.
```

---

<!-- Source: core/14-political-social-layer.md -->

# USTF v3.0 — Political & Social Layer

**File Path:** `core/14-political-social-layer.md`  
**Document Type:** Core Specification  
**Layer:** Core / Module Interface  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Actor Model, Organization Layer, Resource System, Conflict Layer, Knowledge System

## Summary

The Political & Social Layer defines how legitimacy, authority, public opinion, institutions, social groups, ideology, law, class, reputation, and collective behavior affect world simulation. It does not impose one political model. It provides a cross-genre interface for social power.

---

## POL-000: Design Principle

Politics in USTF is the structured contest over authority, legitimacy, resources, law, identity, security, and future direction.

Society in USTF is not background scenery.

Society is a field of Actors, institutions, norms, pressures, narratives, incentives, and constraints.

---

## POL-001: Political/Social Trigger

Use this layer when an action affects or depends on:

- Legitimacy
- Public opinion
- Law
- Authority
- Governance
- Social groups
- Ideology
- Reputation
- Diplomatic position
- Institutional trust
- Class or caste structure
- Religious authority
- Ethnic or cultural identity
- Labor relations
- Media narratives
- Collective mobilization

Minor social interactions MAY be handled descriptively if no durable state changes.

---

## POL-002: Legitimacy

Legitimacy is the recognized right to act, command, rule, decide, possess, enforce, or represent.

Legitimacy may come from:

```text
Law
Tradition
Election
Bloodline
Religion
Performance
Expertise
Charisma
Force
Wealth
International recognition
Public consent
Custom
Fear
Myth
```

Legitimacy is context-dependent.

An Actor may be legitimate to one group and illegitimate to another.

---

## POL-003: Authority vs Capability

Authority and capability are separate.

```text
Authority: recognized permission to act.
Capability: practical ability to act.
```

Examples:

```text
A government may have legal authority but weak enforcement capability.
A warlord may have capability but low formal legitimacy.
A corporation may have capital but lack political permission.
A priest may lack force but possess moral authority.
```

Major actions SHOULD check both.

---

## POL-004: Social Actors

Social groups MAY be modeled as Actors when they affect world state.

Examples:

```text
Labor unions
Merchant classes
Religious communities
Military veterans
Urban poor
Rural elites
Students
Media networks
Professional guilds
Online publics
Diaspora communities
Ethnic blocs
Refugee populations
Investor groups
```

A social Actor SHOULD have goals, pressures, grievances, leadership, resources, knowledge, and mobilization capacity.

---

## POL-005: Institutions

Institutions are durable systems that structure behavior.

Examples:

```text
Courts
Parliaments
Churches
Boards
Guilds
Clans
Ministries
Armies
Universities
Media organizations
Banks
Customs offices
Intelligence services
Traditional councils
```

Institutions may be Actors or parts of Actors.

Institutional behavior SHOULD reflect incentives, procedures, corruption, inertia, jurisdiction, and internal factions.

---

## POL-006: Public Opinion

Public Opinion is not a single number unless a module chooses to model it that way.

Public Opinion SHOULD be segmented by relevant audience:

```text
General public
Elite opinion
Local community
International observers
Investors
Religious authorities
Military officers
Party members
Employees
Rival factions
Affected families
Media class
```

Different audiences may react differently to the same event.

---

## POL-007: Reputation

Reputation is the expectation others have about an Actor's future behavior.

Reputation may track:

```text
Competence
Reliability
Honor
Ruthlessness
Corruption
Professionalism
Danger
Wealth
Piety
Patriotism
Foreignness
Illegality
Trustworthiness
```

Reputation affects access, bargaining, recruitment, fear, alliances, and scrutiny.

Reputation is audience-specific.

---

## POL-008: Attention

Attention is the degree to which an Actor, event, project, or location is noticed by relevant audiences.

Attention types include:

```text
Public Attention
Media Attention
Legal Attention
Police Attention
Intelligence Attention
Military Attention
Market Attention
Religious Attention
Diplomatic Attention
Supernatural Attention
```

Attention may create risk or opportunity.

High Attention is not always negative.

It may deter attacks, attract capital, increase legitimacy, invite regulation, trigger investigation, or escalate conflict.

---

## POL-009: Law and Enforcement

Law and enforcement are separate.

```text
Law: formal rule or claim of authority.
Enforcement: practical ability and willingness to impose consequences.
```

Legal risk SHOULD consider:

```text
Jurisdiction
Applicable law
Enforcement capacity
Political will
Evidence
Corruption
Public pressure
Institutional independence
International exposure
Cost of prosecution
```

Illegal does not always mean impossible.

Legal does not always mean safe.

---

## POL-010: Narrative and Framing

Political and social meaning depends on framing.

The same event may be framed as:

```text
Security measure
Corporate expansion
Foreign exploitation
National development
Religious threat
Humanitarian mission
Corruption scandal
Patriotic sacrifice
Class betrayal
Necessary reform
```

Actors may compete to define the narrative.

Narrative conflict uses the Conflict Layer.

---

## POL-011: Mobilization

Mobilization is the conversion of opinion, grievance, identity, or command into collective action.

Mobilization requires:

```text
Shared belief or pressure
Communication channel
Leadership or coordination
Opportunity
Risk tolerance
Material support
Symbolic trigger
```

Mobilization may produce:

```text
Protests
Strikes
Votes
Boycotts
Riots
Petitions
Recruitment
Insurgency
Public campaigns
Religious movements
Elite coups
Shareholder action
```

---

## POL-012: Elite Politics

Many political outcomes depend on elite coalitions rather than mass opinion alone.

Elite Actors may include:

```text
Military command
Party leadership
Court faction
Board members
Major investors
Clergy
Intelligence chiefs
Noble houses
Judicial leadership
Foreign patrons
Media owners
Union bosses
```

Elite politics SHOULD track interests, leverage, legitimacy, fear, incentives, and private knowledge.

---

## POL-013: Social Pressure

Social pressure may constrain Actors without formal law.

Sources include:

```text
Norms
Family obligations
Honor
Religion
Class expectation
Professional ethics
Fear of shame
Peer pressure
Community sanction
Cultural taboo
```

Social pressure may be more powerful than law in some settings.

Genre Modules SHOULD define major social pressures.

---

## POL-014: Political Capital

Political Capital is a spendable or riskable resource representing influence, credibility, favors, mandate, leverage, and coalition support.

Political Capital may be spent to:

```text
Pass reforms
Secure permits
Block investigation
Obtain appointments
Win votes
Avoid scandal
Influence courts
Mobilize allies
Negotiate concessions
```

Political Capital may be lost through failure, scandal, betrayal, overreach, incompetence, or shifting conditions.

---

## POL-015: Legitimacy Shock

A Legitimacy Shock is an event that rapidly changes perceived authority or trust.

Examples:

```text
Military defeat
Economic collapse
Assassination
Public scandal
Miracle
Election fraud
Foreign invasion
Police massacre
Corporate disaster
Successful reform
Revealed conspiracy
```

Legitimacy Shocks SHOULD update multiple Actors and audiences.

---

## POL-016: Diplomacy

Diplomacy is structured interaction between political Actors.

Diplomatic actions may involve:

```text
Recognition
Treaty
Threat
Alliance
Trade concession
Sanction
Mediation
Ultimatum
Backchannel
Hostage exchange
Military access
Technology transfer
```

Diplomacy MUST obey Knowledge State.

Actors cannot respond to secret offers they did not receive.

---

## POL-017: Internal Factions

Organizations and societies may contain internal factions.

Internal factions SHOULD be modeled when they meaningfully affect decisions.

Faction fields:

```text
Name
Base of support
Goals
Resources
Leader
Leverage
Knowledge
Risk tolerance
Relationship to leadership
Current projects
```

Internal factions are especially important in states, corporations, noble houses, militaries, churches, parties, and secret societies.

---

## POL-018: Political/Social Output

A political or social action SHOULD output one or more:

```text
Legitimacy Change
Reputation Change
Attention Change
Legal Risk Change
Coalition Change
Faction State Change
Public Opinion Shift
Mobilization Progress
Institutional Response
Narrative Shift
Open Thread
```

Outputs MUST specify affected audiences.

---

## POL-019: Module Interface

Genre Modules MAY define:

```text
Political system type
Legal structure
Dominant social classes
Relevant identities
Communication technology
Religious authority
State capacity
Media environment
Corruption norms
International order
```

Modules MUST NOT override Core rules on Actor knowledge, persistent consequences, or time continuity.

---

## Runtime Summary

```text
Politics is contest over authority and legitimacy.
Society is an active field of pressure.
Authority and capability are separate.
Public opinion is segmented.
Reputation is audience-specific.
Attention creates both risk and opportunity.
Law and enforcement are separate.
```

---

<!-- Source: core/15-campaign-operations.md -->

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

---

<!-- Source: core/16-module-standard.md -->

# USTF v3.0 — Module Standard

**File Path:** `core/16-module-standard.md`  
**Document Type:** Core Specification  
**Layer:** Core / Module Interface  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification

## Summary

Modules adapt USTF to specific genres, eras, technologies, supernatural assumptions, institutions, and campaign styles. Modules may extend Core interfaces but must not override Core invariants. A valid module describes its assumptions, additions, procedures, constraints, and compatibility boundaries.

---

## 1. Module Definition

A USTF Module is a structured extension package that adapts the Core engine to a specific domain.

A module MAY represent:

- A historical era
- A genre
- A technology level
- A supernatural model
- A political structure
- A warfare model
- A corporate or economic environment
- A horror or occult framework
- A spacefaring setting
- A campaign-specific implementation

A module MUST NOT be treated as Core unless formally promoted through versioning.

---

## 2. Core Boundary

**MOD-001:** A module MAY extend Core.

**MOD-002:** A module MUST NOT override Core invariants.

**MOD-003:** A module MUST NOT bypass Knowledge State, Time Continuity, World State persistence, or consequence tracking.

**MOD-004:** If a module requires an exception to Core, the exception MUST be submitted as a rule change proposal, not silently embedded in the module.

**MOD-005:** Module-specific procedures MUST declare whether they are required, recommended, optional, or experimental.

---

## 3. Required Module Metadata

Every module MUST begin with:

```text
Module Name:
Module ID:
Version:
Status:
Compatible USTF Core Version:
Layer:
Genre / Domain:
Required Core Files:
Optional Reference Files:
Summary:
```

Recommended statuses:

```text
Draft
Experimental
Playtest
Stable
Deprecated
Retired
```

---

## 4. Required Module Sections

A valid USTF module SHOULD include:

```text
1. Scope
2. Assumptions
3. Added Actor Types
4. Added Resource Types
5. Added Capabilities
6. Added Constraints
7. Added Conflict Forms
8. Added Knowledge Rules, if any
9. Added Time Scale Rules, if any
10. Added Economy / Logistics Rules, if any
11. Special Procedures
12. Module Risks
13. Compatibility Notes
14. Example Implementation
15. Playtest Questions
```

---

## 5. Module Extension Points

Modules MAY extend the following Core interfaces:

```text
Actor API
Capability API
Resource API
Conflict API
Knowledge API
Time API
World State API
Organization API
Resolution API
Campaign Operations API
```

Modules SHOULD document each extension with stable IDs.

Example:

```text
MOD-CORP-RES-001: Add Regulatory Capital as a Resource.
MOD-MED-ACT-001: Add Noble House as an Organization subtype.
MOD-HOR-KNO-001: Add Contaminated Knowledge as a Knowledge reliability state.
```

---

## 6. Module Assumptions

A module MUST declare its assumptions.

Examples:

```text
Modern Realist Module:
- Nation-states exist.
- Modern legal systems exist.
- Firearms are widely available but regulated.
- Global communications are fast but not omniscient.
```

```text
Medieval Political Module:
- Communication is slow.
- Legitimacy is personal, dynastic, religious, and customary.
- Land and oath networks are central resources.
- Military force is seasonal and logistically constrained.
```

```text
Horror / Occult Module:
- Some facts may be dangerous to know.
- Evidence may be unreliable or sanity-threatening.
- Unknown forces may operate outside ordinary social logic, but not outside Core tracking.
```

---

## 7. Module Compatibility

A module is compatible with USTF Core when:

- It preserves Core invariants.
- It uses Actor, World State, Knowledge State, Time, Resource, and Consequence interfaces.
- It records all special rules explicitly.
- It does not require hidden rule changes.
- It can be removed without corrupting unrelated Core files.

A module is incompatible when:

- It requires actors to know impossible information.
- It resets consequences without state changes.
- It bypasses time continuity.
- It replaces the Core resolution model.
- It makes drama or genre convention superior to world logic.

---

## 8. Module Load Order

When running a campaign, modules SHOULD load after:

```text
Runtime Instructions
Core Invariants
Core Specification
Current Campaign State
```

Modules SHOULD load before:

```text
Reference Procedures
Session Delta
Archive Logs
Examples
```

Campaign-specific modules MAY override generic modules only within the campaign state layer, not Core.

---

## 9. Multiple Modules

A campaign MAY use multiple modules.

Example:

```text
Modern Realist + Corporate + Espionage
Medieval Political + Occult Horror
Space Opera + Military + Political
Cyberpunk + Corporate + Investigation
```

When modules conflict:

1. Core prevails.
2. Campaign-specific module prevails over generic module.
3. More specific module prevails over broader module.
4. Stable module prevails over experimental module.
5. If unresolved, mark Module Conflict and request review.

---

## 10. Module Promotion

A repeated module rule MAY be promoted to Core only if:

- It appears across multiple unrelated campaigns.
- It solves a general engine problem.
- It does not depend on one genre.
- It has been tested in at least two playtest contexts.
- It does not break existing Core interfaces.

Promotion requires a rule change proposal and version update.

---

## 11. Module Summary

Modules are plugins, not exceptions.

A valid USTF module adds domain-specific detail while preserving:

```text
World State independence
Actor logic
Knowledge isolation
Time continuity
Persistent consequences
Versioned rule changes
```

---

<!-- Source: core/17-playtest-versioning-protocol.md -->

# USTF v3.0 — Playtest & Versioning Protocol

**File Path:** `core/17-playtest-versioning-protocol.md`  
**Document Type:** Core Specification  
**Layer:** Core / Governance  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification

## Summary

USTF treats campaigns as rule validation environments. Playtest campaigns do not exist merely to produce stories; they test whether the engine preserves world logic, continuity, information isolation, and long-form playability. Rule changes must be versioned, justified, and traceable.

---

## 1. Playtest Principle

**VER-001:** Campaigns are playtests of USTF, not exceptions to USTF.

**VER-002:** When a campaign reveals a rule problem, the rule may be revised through versioning.

**VER-003:** Existing worlds MUST NOT be rewritten merely to protect flawed rules.

**VER-004:** Rules MUST NOT be changed retroactively to justify a desired campaign outcome.

---

## 2. Versioning Model

USTF SHOULD use semantic-style versioning:

```text
MAJOR.MINOR.PATCH
```

Example:

```text
v3.0.0
v3.1.0
v3.1.1
v4.0.0
```

### MAJOR

Increment MAJOR when Core compatibility breaks.

Examples:

- Actor Model replaced.
- Knowledge State structure changed incompatibly.
- Resolution model reworked.
- World State hierarchy changed.

### MINOR

Increment MINOR when adding backward-compatible features.

Examples:

- New module standard.
- New reference procedure.
- New resource category.
- New template.

### PATCH

Increment PATCH for clarifications and corrections that do not change rule behavior.

Examples:

- Typo fix.
- Better wording.
- Clarified example.
- Non-rule explanation improved.

---

## 3. Rule Status Categories

Rules SHOULD be marked with status:

```text
Draft
Experimental
Playtest
Stable
Deprecated
Retired
```

### Draft

Proposed but not yet tested.

### Experimental

Allowed in controlled playtest, not recommended for general use.

### Playtest

Actively being tested in one or more campaigns.

### Stable

Accepted for regular use.

### Deprecated

Still readable for compatibility, but should not be used in new designs.

### Retired

Removed from active use.

---

## 4. Rule Change Proposal

Every meaningful rule change SHOULD use a Rule Change Proposal.

Required fields:

```text
Proposal ID:
Title:
Author:
Date:
Affected Files:
Affected Rule IDs:
Current Status:
Problem:
Proposed Change:
Reasoning:
Playtest Evidence:
Compatibility Impact:
Migration Guidance:
Decision:
```

---

## 5. Playtest Evidence

Playtest evidence SHOULD identify:

- Campaign name
- Session range
- Rule tested
- Situation tested
- Failure or success observed
- Cost of using the rule
- Continuity impact
- Cognitive load
- Model context load
- Whether issue was Core, Module, Procedure, or State management

Evidence MUST distinguish between:

```text
Rule failure
Module failure
Operator error
State file error
Context overflow
User preference mismatch
World-specific exception
```

---

## 6. Compatibility Impact

Every non-trivial change MUST identify compatibility impact:

```text
None
Clarification Only
Backward Compatible
Requires State Migration
Breaks Module Compatibility
Breaks Campaign Compatibility
Breaks Core Compatibility
```

If migration is required, the proposal MUST define migration steps.

---

## 7. Changelog Requirements

Each version release SHOULD update `CHANGELOG.md`.

Each changelog entry SHOULD include:

```text
Version
Date
Added
Changed
Deprecated
Removed
Fixed
Compatibility Notes
Playtest Sources
```

---

## 8. Campaign Migration

When a rule changes during an active campaign:

1. Record the old rule version.
2. Record the new rule version.
3. Determine whether past events remain valid.
4. Do not rewrite past events unless continuity review explicitly approves it.
5. Apply new rules going forward by default.
6. Mark any unresolved contradiction.

Campaign history is not automatically rewritten by rule updates.

---

## 9. Playtest Campaign Categories

USTF SHOULD classify campaigns by tested domains.

Examples:

```text
FSS Campaign:
- Organization
- Security contracting
- Field operations
- Legal exposure
- Information isolation
```

```text
TerraGroup Campaign:
- Megacorporation governance
- Research risk
- Political influence
- Regulatory attention
- Succession and wealth management
```

```text
Medieval Campaign:
- Feudal organization
- Slow communication
- Dynastic legitimacy
- Religious pressure
- Long-term political continuity
```

---

## 10. Versioning Summary

USTF rules are maintained like software.

The source files are canonical.

Rules change only through documented version history.

Campaigns validate rules; they do not excuse rule drift.

---

<!-- Source: core/18-character-layer.md -->

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
