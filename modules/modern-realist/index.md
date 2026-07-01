# USTF v3.0 Module — Modern Realist

**File Path:** `modules/modern-realist/index.md`  
**Document Type:** Genre Module  
**Layer:** Module  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Compatible USTF Core Version:** v3.0.x  
**Module ID:** `MOD-MODERN-REALIST`  
**Priority:** Genre Module

## Summary

The Modern Realist Module adapts USTF to late-20th-century, contemporary, and near-present campaigns where institutions, logistics, law, finance, communications, media, security, and geopolitics behave with realistic constraints. It is suitable for corporate, political, military, intelligence, investigative, disaster, legal, and social campaigns.

This module MUST NOT override Core. It extends Core with modern institutions, documentary trails, communications systems, regulatory exposure, public attention, and infrastructure dependency.

---

## 1. Scope

Use this module when a campaign is grounded in realistic modern systems.

Typical domains:

```text
Corporate operations
Security contracting
Political campaigns
Legal disputes
Modern investigations
Journalism
Military or paramilitary operations
Disaster response
Public institutions
NGO or humanitarian work
Modern criminal networks
```

This module may also serve as the baseline for Corporate, Espionage, Cyberpunk, Post-Apocalyptic, and Modern Horror modules.

---

## 2. Core Assumptions

**MR-001:** Modern societies leave records.

**MR-002:** Major actions usually create documentary, digital, financial, social, logistical, or witness traces.

**MR-003:** Modern Actors are constrained by institutions: law, contracts, banking, borders, media, regulators, bureaucracies, insurance, courts, and public opinion.

**MR-004:** Communication is fast, but not universal, perfectly secure, or consequence-free.

**MR-005:** Large-scale action requires logistics, staffing, permissions, money, infrastructure, and time.

**MR-006:** The module MUST preserve Need To Know. Fast communication does not mean all Actors know all events.

---

## 3. Added Resource Types

The following resources SHOULD be available in modern realist campaigns:

```text
Cash / Liquid Capital
Credit Access
Legal Standing
Licenses / Permits
Insurance Coverage
Staff Capacity
Specialist Labor
Infrastructure Access
Transport Capacity
Communications Access
Media Position
Political Capital
Regulatory Tolerance
Public Trust
Security Capacity
Documentation Quality
```

These are extensions of `Resource` and must be tracked through Resource Ledger when relevant.

---

## 4. Common Actor Types

```text
Individual professional
Company
Government agency
Regulator
Court
Police or law enforcement body
Military unit
Private security company
Media organization
NGO
Union
Political party
Local community
Financial institution
Insurer
Criminal organization
Lobbying network
Research institution
```

Any of these may be modeled as Actor if they can change World State.

---

## 5. Modern Trace Model

Modern actions SHOULD be checked for traces.

Trace categories:

```text
Financial Trace
Legal Trace
Digital Trace
Logistical Trace
Witness Trace
Media Trace
Institutional Trace
Physical Trace
Reputational Trace
```

Trace does not automatically mean discovery. Discovery still requires Actor knowledge, access, method, time, and opportunity.

---

## 6. Attention and Exposure

Modern campaigns SHOULD track attention.

Recommended attention categories:

```text
Regulatory Attention
Media Attention
Political Attention
Law Enforcement Attention
Market Attention
Community Attention
Intelligence Attention
Internal Audit Attention
```

Attention may create both risks and opportunities.

High attention can produce:

```text
Investigation
Funding opportunity
Political leverage
Public trust
Public backlash
Legal review
Market valuation effect
Security threat
Internal pressure
```

---

## 7. Resolution Guidance

Modern realist actions often resolve through procedure rather than single uncertainty checks.

Examples:

```text
Open a branch office → legal setup + lease + staffing + banking + compliance.
Win a contract → proposal + negotiation + due diligence + legal review + capacity check.
Investigate corruption → access + evidence + source reliability + opposition + legal risk.
Move personnel overseas → visas + transport + local law + insurance + security assessment.
```

Use deterministic logic when requirements are clearly absent.
Use procedural tracking when requirements can be built.
Use uncertainty only for genuine uncertain outcomes.

---

## 8. Constraints

Modern realism requires constraints such as:

```text
Jurisdiction
Documentation
Licensing
Banking restrictions
Insurance conditions
Labor law
Border control
Professional standards
Public scrutiny
Procurement rules
Supply chain delay
Institutional inertia
```

The assistant MUST NOT waive these constraints merely for pacing.

---

## 9. Compatibility

Compatible with:

```text
MOD-CORPORATE
MOD-ESPIONAGE
MOD-HORROR-OCCULT
MOD-CYBERPUNK
MOD-MILITARY-WAR
MOD-POLITICAL
```

When combined with Espionage, Modern Trace Model becomes especially important.
When combined with Corporate, Legal Standing and Documentation Quality become high-priority resources.

---

## 10. Runtime Checklist

Before resolving a major modern action, check:

```text
Who is the Actor?
What jurisdiction applies?
What documentation is required?
What resources are available?
What trace is created?
Who can observe or discover it?
What institutions can respond?
What delays exist?
What liabilities or obligations arise?
What state files must be updated?
```
