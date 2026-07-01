# USTF Module — Space Opera

**File Path:** `modules/space-opera/index.md`  
**Document Type:** Genre Module  
**Layer:** Module  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Core Dependency:** Actor Model, Time System, World State Model, Resource System, Organization Layer, Conflict Layer  
**Summary:** This module adapts USTF for interstellar campaigns involving starships, colonies, empires, megacorporations, long-range logistics, communication delay, large-scale politics, exploration, and strategic conflict.

---

## 1. Module Purpose

The Space Opera Module supports large-scale science-fiction campaigns where multiple worlds, fleets, factions, and technologies interact over long distances and long timelines.

It is suitable for:

- Interstellar exploration
- Space empires
- Starship crews
- Colonial administration
- Galactic trade
- Fleet warfare
- AI polities
- Megacorporate expansion
- Frontier settlement
- Ancient alien ruins

The module is not hard science by default. It provides parameters for different levels of realism.

---

## 2. Core Compatibility

This module extends Core with:

```text
Interstellar Distance
Travel Mode
Communication Lag
Ship Actors
Colony State
Fleet Logistics
Technology Level
Strategic Scale
```

This module MUST NOT override:

```text
Actor Knowledge limits
Time continuity
Resource constraints
Consequence persistence
Conflict structure
Organization decision logic
```

Even advanced technology MUST have defined limits.

---

## 3. Scale Parameters

Before campaign start, define:

```text
Travel Model
Communication Model
Settlement Density
Technology Reliability
AI Status
Alien Presence
Political Scale
Economic Integration
Military Projection Limit
```

Example values:

```text
Travel Model: Jump Gates / Warp Drive / Hyperspace / Relativistic / Mixed
Communication Model: Instant / Courier / Gate Relay / Light-Speed / Fragmented
Settlement Density: Sparse / Regional / Dense / Post-Scarcity
Technology Reliability: Fragile / Industrial / Mature / Black-Box
Political Scale: Planetary / Sector / Imperial / Civilizational
```

These parameters are Core-facing module settings.

---

## 4. Space Actor Types

This module adds optional Actor types:

```text
Starship
Fleet
Colony
Orbital Habitat
Planetary Government
Sector Authority
Trade Combine
Megacorporation
AI Polity
Pirate Network
Alien Civilization
Ancient System
Exploration Mission
Terraforming Project
```

A Starship Actor SHOULD define:

```text
Hull State
Crew State
Command Structure
Drive Capability
Power System
Life Support
Sensor Capability
Cargo Capacity
Combat Capability
Maintenance Burden
Known Position
Mission
```

A Colony Actor SHOULD define:

```text
Population
Governance
Infrastructure
Life Support
Food Security
Import Dependency
Export Capacity
Security
Local Legitimacy
Environmental Risk
```

---

## 5. Interstellar Time

Space campaigns require strict time accounting.

The assistant MUST track:

```text
Departure time
Arrival time
Signal delay
Travel route
Refueling or maintenance stops
Local calendar differences if relevant
```

SPC-TIM-001: Actors separated by distance MUST NOT share information instantly unless the communication model allows it.

SPC-TIM-002: Strategic decisions SHOULD account for delay, outdated intelligence, and remote autonomy.

SPC-TIM-003: Colonies, fleets, and frontier stations continue to act while player characters travel.

---

## 6. Communication and Knowledge

Communication model determines Knowledge propagation.

Possible models:

```text
Instant Network
Gate Relay
Courier Ships
Quantum Limited Pairing
Light-Speed Only
Local Mesh Only
Broken Network
```

Knowledge entries SHOULD record:

```text
Origin system
Transmission method
Send time
Receive time
Interception risk
Authenticity
Delay
```

False, delayed, or forged signals are valid campaign elements.

---

## 7. Space Resources

Common space resources:

```text
Fuel
Reaction Mass
Power
Crew
Parts
Hull Integrity
Cargo
Life Support
Docking Rights
Jump Coordinates
Navigation Data
Political Clearance
Orbital Infrastructure
Shipyard Capacity
Fleet Readiness
Colonial Legitimacy
```

Resource scarcity SHOULD be chosen based on campaign tone.

Post-scarcity wealth does not remove scarcity in:

```text
Time
Distance
Trust
Access
Attention
Maintenance
Expertise
Political permission
```

---

## 8. Exploration Procedure

Exploration is a procedural World State Change Request.

A mission SHOULD define:

```text
Target
Known data
Unknown hazards
Travel requirements
Survey capability
Crew readiness
Supply endurance
Political authorization
Competing actors
Discovery consequences
Extraction options
```

Exploration results may create:

```text
New World State entries
New Actors
New Knowledge Assets
New hazards
New claims
New routes
New conflicts
```

Discovery MUST NOT automatically imply understanding.

---

## 9. Fleet and Military Conflict

Fleet conflict uses the Core Conflict Layer.

Fleet conflict SHOULD account for:

```text
Objective
Theater
Sensor picture
Command latency
Formation
Logistics
Rules of engagement
Political cost
Civilian exposure
Retreat path
Escalation risk
```

A battle is not just damage exchange. It may change:

```text
System control
Trade routes
Political legitimacy
Fleet readiness
Public morale
Insurance rates
Colonial loyalty
Technology exposure
```

---

## 10. Technology Boundaries

Advanced technology MUST be defined through capability and constraint.

For each major technology, define:

```text
What it can do
What it cannot do
Resource cost
Failure mode
Who controls it
Who understands it
How common it is
How it changes conflict
How it changes knowledge flow
```

SPC-TEC-001: Technology MUST NOT be used as an unbounded plot tool.

SPC-TEC-002: If a technology can solve a problem once, the system SHOULD explain why it cannot solve all similar problems.

---

## 11. Political Scale

Space Opera campaigns often involve nested sovereignties.

Examples:

```text
Ship authority
Station law
Colony charter
Corporate jurisdiction
Planetary government
Sector command
Imperial law
Treaty zone
Unclaimed frontier
```

Actors MUST obey only the laws, norms, and enforcement systems that can actually reach them.

Distant authority without enforcement capacity is a claim, not an automatic fact.

---

## 12. Common Failure Modes

Avoid:

```text
Ignoring travel time
Letting every planet know everything instantly
Making ships repair without infrastructure
Treating empires as single-minded Actors without internal factions
Using technology to erase consequence
Forgetting that colonies have local needs and politics
```

Corrective principle:

```text
Distance is not scenery. Distance is a rule.
```
