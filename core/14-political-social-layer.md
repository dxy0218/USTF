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
