# USTF v3.0 Module — Espionage

**File Path:** `modules/espionage/index.md`  
**Document Type:** Genre Module  
**Layer:** Module  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Compatible USTF Core Version:** v3.0.x  
**Module ID:** `MOD-ESPIONAGE`  
**Priority:** Genre Module

## Summary

The Espionage Module adapts USTF to intelligence, counterintelligence, secrecy, compartmentalization, covert influence, source handling, surveillance pressure, deception, leaks, and hidden organizational conflict. It is designed for fictional campaign simulation and resolves sensitive operations abstractly through Actor, Knowledge, Resource, Risk, Exposure, and Consequence interfaces.

This module strengthens Knowledge State; it does not weaken it.

---

## 1. Scope

Use when secrecy and information asymmetry are central.

Typical campaign domains:

```text
Intelligence agencies
Corporate espionage
Court spies
Counterintelligence
Political leaks
Secret societies
Investigative journalism
Covert diplomacy
Occult conspiracies
Resistance networks
Cold war operations
```

This module does not provide real-world operational instruction. It models fictional outcomes at an abstract level.

---

## 2. Core Assumptions

**ESP-001:** Information is both resource and liability.

**ESP-002:** Compartmentalization limits damage but also limits coordination.

**ESP-003:** Every secret operation creates exposure.

**ESP-004:** Sources have motives, reliability limits, and vulnerabilities.

**ESP-005:** Deception changes Knowledge State, not Objective State.

**ESP-006:** Counterintelligence Actors may act without the player knowing they exist.

---

## 3. Added Resource Types

```text
Access
Cover
Compartment
Source Network
Analytical Capacity
Operational Capacity
Secure Communication
Counterintelligence Capacity
Plausible Deniability
Blackmail Material
Leverage
Trust
False Identity
Safe Channel
Institutional Shield
```

These resources SHOULD be tracked when they constrain or enable action.

---

## 4. Actor Types

```text
Intelligence agency
Field officer
Analyst
Source / informant
Double agent
Handler
Counterintelligence unit
Security service
Cutout
Front organization
Journalist
Whistleblower
Dissident network
Corporate intelligence unit
Secret society cell
```

Cells and compartments MAY be modeled as sub-Actors with isolated Knowledge State.

---

## 5. Knowledge Categories

Espionage campaigns SHOULD classify information:

```text
Confirmed fact
Source report
Rumor
Inference
Disinformation
Fabrication
Compartmented secret
Operational detail
Strategic assessment
Identity knowledge
Capability estimate
Intent estimate
```

A report is not automatically true.
An inference is not automatically known fact.

---

## 6. Source Reliability

Sources SHOULD have:

```text
Access Level
Reliability
Motivation
Vulnerability
Control Level
Risk Exposure
Reporting History
Known Bias
Compromise Status
```

Source reliability affects Knowledge State reliability, not Objective State.

---

## 7. Operation Procedure

Major espionage actions SHOULD use abstract procedural resolution.

```text
1. Define objective.
2. Identify acting Actor and compartment.
3. Check available knowledge.
4. Check access and cover.
5. Check resources and support.
6. Identify opposition and surveillance pressure.
7. Determine created exposure.
8. Resolve genuine uncertainty abstractly.
9. Update Objective State where applicable.
10. Update Knowledge State for all affected Actors.
11. Update exposure, suspicion, and open threads.
```

Do not resolve complex covert operations as a single roll unless the campaign intentionally uses a lighter abstraction.

---

## 8. Exposure Model

Espionage exposure SHOULD be tracked separately from success.

An operation may:

```text
Succeed cleanly
Succeed with suspicion
Succeed but burn a source
Fail silently
Fail and reveal intent
Fail and expose network
Produce misleading information
Trigger counteraction
```

Exposure categories:

```text
Source Exposure
Identity Exposure
Method Exposure
Organizational Exposure
Political Exposure
Legal Exposure
Counterintelligence Attention
```

---

## 9. Deception and False Knowledge

Deception MUST be recorded as Knowledge State contamination.

A false belief entry SHOULD include:

```text
False Content
Holder
Source
Time Acquired
Reliability Believed
Actual Reliability
Purpose
Possible Correction Path
```

Actors may rationally act on false knowledge if they believe it is reliable.

---

## 10. Counterintelligence

Counterintelligence SHOULD be treated as active opposition, not passive difficulty.

A counterintelligence Actor may:

```text
Monitor
Map networks
Test sources
Feed false information
Increase compartment pressure
Investigate leaks
Create internal suspicion
Exploit mistakes
```

Such actions must still obey Knowledge State and resources.

---

## 11. Compatibility

Compatible with:

```text
MOD-MODERN-REALIST
MOD-CORPORATE
MOD-MEDIEVAL-POLITICAL
MOD-HORROR-OCCULT
MOD-CYBERPUNK
MOD-SPACE-OPERA
```

When combined with Modern Realist, use Modern Trace Model.
When combined with Medieval Political, replace modern communications with messenger, household, clergy, merchant, and court rumor networks.

---

## 12. Runtime Checklist

Before resolving an espionage action, check:

```text
Who is acting?
What compartment knows the objective?
What access exists?
What cover exists?
What source or method is used?
Who can detect this?
What exposure is created?
What false or partial knowledge spreads?
What counteraction becomes possible?
What state files must be updated?
```
