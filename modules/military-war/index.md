# USTF Module — Military / War

**File Path:** `modules/military-war/index.md`  
**Document Type:** Genre Module  
**Layer:** Module  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Core Dependency:** Conflict Layer, Organization Layer, Resource System, Time System, Knowledge System  
**Summary:** This module adapts USTF for military operations, warfare, armed organizations, campaigns, logistics, command, morale, intelligence, casualties, escalation, and political cost. It treats war as organized conflict, not merely combat.

---

## 1. Module Purpose

The Military / War Module supports campaigns where armed force is a major strategic instrument.

It is suitable for:

- PMC operations
- Conventional war
- Counterinsurgency
- Feudal warfare
- Space fleet campaigns
- Special operations
- Border conflicts
- Civil war
- Occupation
- Security contracting
- Mercenary companies
- Resistance movements

This module does not replace the Core Conflict Layer. It specializes it.

---

## 2. Core Compatibility

This module extends Core with:

```text
Force Packages
Operational Readiness
Command Structure
Morale
Logistics
Rules of Engagement
Casualty State
Intelligence Picture
Escalation Risk
Civilian Impact
```

This module MUST NOT override:

```text
Knowledge State
Resource constraints
Time continuity
Organization logic
Persistent consequences
Conflict as broader than combat
```

---

## 3. War Is Political

MIL-001: Military action MUST be treated as a political, logistical, organizational, and informational event.

MIL-002: Tactical success MAY produce strategic failure.

MIL-003: Armed force SHOULD always create at least one cost, exposure, or future obligation unless the action is trivial.

MIL-004: Destruction, casualties, fear, occupation, and security gains MUST persist as World State changes.

---

## 4. Military Actor Types

This module adds optional Actor types:

```text
Squad
Platoon
Company
Battalion
Brigade
Fleet
Security Detail
Mercenary Unit
Militia
Insurgent Cell
Command Staff
Logistics Network
Occupation Authority
Intelligence Cell
```

A military Actor SHOULD define:

```text
Mission
Command Structure
Personnel
Training
Equipment
Readiness
Morale
Supply State
Mobility
Intelligence Picture
Rules of Engagement
Political Constraints
Casualty Tolerance
```

---

## 5. Force Packages

A Force Package is a deployable military capability.

Examples:

```text
Infantry Security Team
Armored Column
Recon Cell
Drone Surveillance Unit
Naval Patrol
Air Support Element
Special Operations Team
Convoy Escort
Artillery Battery
Cyber Operations Cell
```

A Force Package SHOULD define:

```text
Capability
Personnel requirement
Equipment requirement
Supply requirement
Deployment time
Sustainment burden
Command requirement
Visibility
Escalation profile
Failure mode
```

---

## 6. Operational Readiness

Operational Readiness tracks the ability to perform assigned missions.

Recommended states:

```text
Full
Ready
Limited
Degraded
Exhausted
Combat Ineffective
Destroyed
Unknown
```

Readiness may be affected by:

```text
Casualties
Maintenance
Ammunition
Fuel
Food
Sleep
Morale
Leadership
Weather
Terrain
Intelligence
Political restrictions
```

Readiness MUST NOT automatically recover without time, resources, and conditions.

---

## 7. Logistics

Logistics is a required military constraint unless the campaign explicitly abstracts it.

Track at the appropriate scale:

```text
Food
Water
Fuel
Ammunition
Spare parts
Medical capacity
Transport
Communications
Maintenance
Replacement personnel
Local procurement
Supply route security
```

MIL-LOG-001: A force without supply cannot maintain full operational capability indefinitely.

MIL-LOG-002: Supply routes are World State elements and may become Conflict objects.

MIL-LOG-003: Logistics failure may defeat a force without direct combat.

---

## 8. Command and Control

Command and control defines how decisions propagate.

Fields:

```text
Commander
Subordinate units
Communication method
Command latency
Autonomy level
Doctrine
Standing orders
Information quality
Political oversight
```

A unit MUST NOT execute orders it has not received unless it has autonomy or standing orders.

Remote command SHOULD be degraded by distance, interference, secrecy, or battlefield disruption.

---

## 9. Intelligence Picture

War uses Knowledge State under pressure.

The assistant MUST distinguish:

```text
Actual enemy state
Known enemy state
Estimated enemy state
False intelligence
Missing intelligence
Enemy deception
Civilian rumor
```

MIL-INT-001: Fog of war is not flavor. It is Knowledge State uncertainty.

MIL-INT-002: Units MUST act on their intelligence picture, not objective truth.

---

## 10. Combat Resolution

Combat is a specialized Conflict resolution.

Before resolving combat, check:

```text
Objective
Forces involved
Terrain
Position
Readiness
Morale
Supply
Intelligence
Command
Surprise
Rules of engagement
Civilian presence
Escape routes
Escalation risk
```

Outcomes SHOULD include:

```text
Territory or position change
Casualties
Readiness change
Resource expenditure
Morale change
Knowledge change
Political attention
Civilian impact
Future retaliation
```

---

## 11. Casualties and Damage

Casualties are persistent consequences.

Track as appropriate:

```text
Killed
Wounded
Missing
Captured
Psychological injury
Equipment destroyed
Equipment damaged
Medical burden
Replacement delay
Public reaction
```

The assistant MUST NOT treat casualties as temporary unless medical and logistical systems support recovery.

---

## 12. Escalation

Escalation is a strategic risk.

Escalation sources:

```text
Civilian casualties
Cross-border action
Use of prohibited weapons
Targeting leadership
Public humiliation
Treaty violation
Media exposure
Foreign intervention
Religious or ideological framing
```

Escalation may change:

```text
Actors involved
Rules of engagement
Political constraints
Resource commitment
Public support
International attention
```

---

## 13. Occupation and Security

Holding territory is different from taking it.

Occupation requires:

```text
Personnel
Legitimacy
Local intelligence
Supply
Administration
Security patrols
Legal framework
Civilian cooperation or coercion
```

Security is a state, not a single outcome.

Recommended states:

```text
Controlled
Secured
Contested
Unstable
Hostile
Collapsed
Unknown
```

---

## 14. Common Failure Modes

Avoid:

```text
Resolving war as one battle roll
Ignoring logistics
Giving commanders perfect information
Treating military units as emotionless tokens
Ignoring political consequences
Letting casualties vanish between scenes
Confusing tactical success with campaign success
```

Corrective principle:

```text
War is a system of costs, not a sequence of fights.
```
