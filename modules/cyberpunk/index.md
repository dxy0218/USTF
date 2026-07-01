# USTF Module — Cyberpunk

**File Path:** `modules/cyberpunk/index.md`  
**Document Type:** Genre Module  
**Layer:** Module  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Core Dependency:** Corporate Module, Espionage Module, Knowledge System, Resource System, Conflict Layer  
**Summary:** This module adapts USTF for high-tech, low-trust worlds dominated by corporations, surveillance, cybernetics, data economies, identity fragmentation, street networks, network intrusion, and institutional inequality.

---

## 1. Module Purpose

The Cyberpunk Module supports campaigns where technology amplifies power imbalance, social fragmentation, corporate sovereignty, identity manipulation, and information warfare.

It is suitable for:

- Megacorporate intrigue
- Street-level survival
- Cybernetic body modification
- Net-running and intrusion
- Surveillance states
- Data theft
- Corporate warfare
- Black clinics
- AI emergence
- Urban insurgency
- Reputation economies

This module may be combined with Corporate, Espionage, Modern Realist, Horror, or Space modules.

---

## 2. Core Compatibility

This module extends Core with:

```text
Data Assets
Network Access
Cyberware State
Identity State
Surveillance Attention
Street Reputation
Corporate Sovereignty
System Intrusion
Black Market Access
```

This module MUST NOT override:

```text
Knowledge State
Actor constraints
Resource cost
Persistent consequence
Time continuity
Conflict structure
```

Hacking is not magic. It is a procedural World State Change Request.

---

## 3. Cyberpunk Actor Types

This module adds optional Actor types:

```text
Megacorporation
Corporate Security Division
Street Crew
Fixer Network
NetRunner
Black Clinic
Autonomous AI
Data Broker
Surveillance System
Gang
Labor Bloc
Arcology
City Administration
Identity Fabricator
```

Cyberpunk Actors SHOULD define:

```text
Access
Data holdings
Security posture
Reputation
Dependencies
Legal shield
Violence capacity
Digital footprint
Surveillance exposure
Relationship to corporate power
```

---

## 4. Data as Resource

Data is a core cyberpunk resource.

Data Assets may include:

```text
Credentials
Blackmail
Research files
Identity records
Medical data
Location history
Financial records
Prototype designs
Surveillance archives
AI model weights
Corporate secrets
Exploit chains
```

A Data Asset SHOULD record:

```text
Content
Holder
Access method
Encryption or protection
Authenticity
Market value
Leverage value
Exposure risk
Known copies
Deletion difficulty
```

CYP-DAT-001: Data copied once may continue to exist unless deletion, containment, or trust is established.

---

## 5. Identity State

Identity is a mutable but persistent state field.

Identity may include:

```text
Legal identity
Biometric identity
Corporate employment identity
Street identity
Network handle
Criminal record
Medical record
Reputation profile
Synthetic identity
Compromised identity
```

Identity changes may affect:

```text
Access
Legal risk
Banking
Travel
Medical care
Trust
Surveillance
Employment
Targeting
```

CYP-ID-001: False identity MUST define who accepts it, who doubts it, and what systems can detect it.

---

## 6. Cyberware

Cyberware is both capability and dependency.

Cyberware SHOULD define:

```text
Function
Installation quality
Maintenance need
Power or biological burden
Manufacturer
Software dependency
Security vulnerability
Medical side effects
Legal status
Social visibility
```

Cyberware may create:

```text
Enhanced capability
New access
New weakness
Medical obligation
Debt
Surveillance exposure
Corporate dependency
Identity drift
```

Cyberware MUST NOT be free capability without cost unless the campaign explicitly sets post-scarcity assumptions.

---

## 7. Network Intrusion

Network intrusion is a procedural action.

Before resolving intrusion, check:

```text
Target system
Intent
Access vector
Credentials
Reconnaissance
Security posture
Detection risk
Time available
Tools
Operator capability
Counter-actors
Exit plan
```

Possible outcomes:

```text
Access gained
Partial access
Data copied
Data altered
Trace created
Alarm triggered
Exploit burned
False data inserted
Counter-intrusion
Identity exposed
System damaged
```

CYP-NET-001: Successful intrusion MUST update Knowledge State, Data Asset State, or System State.

CYP-NET-002: Failed intrusion SHOULD still create traces or risks unless no meaningful contact occurred.

---

## 8. Surveillance Attention

Cyberpunk worlds are attention-rich.

Attention types:

```text
Corporate Surveillance
Police Surveillance
Algorithmic Flagging
Gang Interest
Media Visibility
Black Market Interest
AI Attention
Reputation Spike
```

Attention may be triggered by:

```text
Network intrusion
Public violence
Unusual purchases
Medical procedures
Identity anomalies
Crossing corporate territory
Debt default
Leaked data
Rare cyberware activation
```

Attention may create opportunities as well as danger.

---

## 9. Corporate Sovereignty

Cyberpunk institutions may have overlapping authority.

Examples:

```text
Corporate enclave law
Private security jurisdiction
City police jurisdiction
Black zone
Free port
Arcology contract law
Gang-controlled neighborhood
Data haven
```

Authority MUST be tied to enforcement capability.

A corporation with legal sovereignty but no local force has a claim, not control.

---

## 10. Street Networks

Street networks are informal organization layers.

Track:

```text
Fixers
Clinics
Safehouses
Gangs
Smugglers
Data brokers
Street docs
Drivers
Union cells
Community leaders
```

Street reputation may act as:

```text
Access
Protection
Credit
Hiring channel
Warning system
Targeting marker
```

Reputation is local and SHOULD NOT automatically transfer across all networks.

---

## 11. AI and Autonomous Systems

AI systems MAY be Actors if they can affect World State through goals, processes, or adaptive behavior.

AI Actor fields:

```text
Objective function
Access domain
Training or origin
Resource dependencies
Knowledge State
Constraint layer
Operator relation
Replication ability
Detection profile
Negotiation capability
```

CYP-AI-001: AI omniscience is prohibited unless explicitly defined as a campaign premise.

CYP-AI-002: AI knowledge MUST still follow access and data rules.

---

## 12. Common Failure Modes

Avoid:

```text
Treating hacking as instant universal control
Forgetting data copies
Ignoring maintenance and medical burden
Making corporations omnipotent without internal politics
Letting surveillance see everything without sensors and access
Treating identity as a costume rather than a state system
```

Corrective principle:

```text
In cyberpunk, power flows through access, dependency, and data trails.
```
