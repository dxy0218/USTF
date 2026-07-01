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
