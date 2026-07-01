# USTF v3.0 Rule ID Index

**Document Type:** Rule ID Index  
**Layer:** Appendix / Operational Reference  
**Version:** v3.0.0-draft  
**Status:** Draft

---

## ID Prefix Standard

```text
RTM  Runtime / LLM deployment
INV  Core invariant
API  Public API
ACT  Actor model
WST  World State
TIM  Time and continuity
KNO  Knowledge and information
RES  Resolution
RSC  Resource system
ORG  Organization layer
CON  Conflict layer
INVST Investigation layer
ECO  Economy and logistics
POL  Political and social layer
OPS  Campaign operations
MOD  Module standard
VER  Versioning and playtest
CHR  Character layer
REF  Reference procedure
TPL  Template
ADR  Architecture decision record
```

---

## Core Rule Families

### Runtime

```text
RTM-001 Memory is non-canonical.
RTM-002 Runtime files must respect file priority order.
RTM-003 Active campaign state must be loaded before archive material.
RTM-004 Session Delta records changes, not full history.
RTM-005 Runtime Pack is a derived artifact.
```

### Core Invariants

```text
INV-001 World State exists independently of player knowledge.
INV-002 Every meaningful Actor has goals, resources, constraints, and knowledge.
INV-003 No Actor may act on information it does not possess.
INV-004 Time advances for all relevant Actors.
INV-005 Consequences persist until changed.
INV-006 Modules may extend but not override Core.
INV-007 Rule changes must be versioned and justified.
INV-008 Unknown remains unknown until established by process.
INV-009 Conflict is broader than combat.
INV-010 USTF simulates worlds, not stories.
```

### Actor Model

```text
ACT-001 Any world-affecting entity may be modeled as an Actor.
ACT-002 Actors require goals, resources, capabilities, knowledge, constraints, and current projects when significant.
ACT-003 Organizations, characters, states, and crises are Actor subtypes.
ACT-004 Actor decisions must be evaluated through their own knowledge and constraints.
```

### World State

```text
WST-001 World State records objective conditions.
WST-002 World State must be separated from Knowledge State.
WST-003 Major changes must be recorded as state changes.
WST-004 Current State overrides Archive during active play unless contradiction review is required.
```

### Time

```text
TIM-001 Time does not pause for player convenience.
TIM-002 Time scale must match action scale.
TIM-003 Long-term projects advance through time, resources, and opposition.
TIM-004 Delayed consequences should be tracked.
```

### Knowledge

```text
KNO-001 Actor must not act on absent knowledge.
KNO-002 Knowledge entries should record holder, content, source, time, reliability, and transferability.
KNO-003 False, partial, or outdated knowledge remains valid as belief but not as objective truth.
KNO-004 Unknown is preferable to invented continuity.
```

### Resolution

```text
RES-001 Every major action is a World State Change Request.
RES-002 Resolve deterministic facts before procedures or randomness.
RES-003 Use randomization only for genuine uncertainty.
RES-004 Resolution must update consequences and knowledge where relevant.
```

### Resource

```text
RSC-001 Resources include anything spendable, riskable, convertible, defendable, or accumulable.
RSC-002 Resource use must create persistent effects when significant.
RSC-003 Time and attention are resources.
RSC-004 Resource availability constrains action.
```

### Organization

```text
ORG-001 Organizations are Actors.
ORG-002 Organizations have internal structure, resources, knowledge, projects, and constraints.
ORG-003 Organizations may act asynchronously.
ORG-004 Internal factions and institutional inertia may affect decisions.
```

### Conflict

```text
CON-001 Conflict is incompatible goals under constraints.
CON-002 Combat is only one form of conflict.
CON-003 Conflict requires stakes, means, theater, visibility, escalation, costs, and exit conditions.
CON-004 Conflict outcomes should alter World State.
```

### Investigation

```text
INVST-001 Investigation concerns evidence of World State.
INVST-002 Evidence exists conditionally, not as guaranteed plot keys.
INVST-003 Failure to discover evidence does not pause the world.
INVST-004 Misinterpretation may create consequences.
```

### Module and Versioning

```text
MOD-001 Modules extend Core.
MOD-002 Modules must declare assumptions, scale, added resources, and compatibility notes.
MOD-003 Module-specific exceptions must not violate Core invariants.
VER-001 Rule changes require reason, change description, compatibility impact, and playtest source.
VER-002 Playtests validate rules, not worlds.
```
