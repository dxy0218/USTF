# USTF v3.0 Module — Corporate

**File Path:** `modules/corporate/index.md`  
**Document Type:** Domain Module  
**Layer:** Module  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Compatible USTF Core Version:** v3.0.x  
**Module ID:** `MOD-CORPORATE`  
**Priority:** Genre Module

## Summary

The Corporate Module adapts USTF to companies, conglomerates, startups, private military contractors, foundations, banks, megacorps, investment groups, boards, subsidiaries, and other business organizations. It models corporate action as constrained World State change through capital, contracts, reputation, legal standing, personnel, infrastructure, market position, and governance.

This module is suitable for TerraGroup-style campaigns, FSS-style security-company campaigns, family offices, biotech firms, resource companies, logistics operators, and political-business hybrids.

---

## 1. Scope

Use this module when corporate entities or business operations are central to play.

Typical campaign actions:

```text
Negotiate contracts
Raise capital
Acquire assets
Hire executives
Build departments
Expand offices
Conduct due diligence
Manage regulatory risk
Compete with rivals
Lobby governments
Launch products
Handle scandals
Merge, acquire, divest, restructure
```

---

## 2. Corporate Actor Model

A corporate Actor SHOULD include:

```text
Legal Name
Corporate Form
Jurisdiction
Ownership
Board / Governance
Management Team
Departments
Subsidiaries
Capital Position
Revenue Sources
Cost Structure
Legal Standing
Regulatory Exposure
Reputation
Contracts
Assets
Liabilities
Current Projects
Internal Factions
```

Corporate Actors still obey the general Actor Model.

---

## 3. Added Resource Types

```text
Cash
Credit Facility
Equity Value
Debt Capacity
Revenue Pipeline
Contract Backlog
Legal Capacity
Compliance Capacity
Management Bandwidth
Operational Capacity
Brand Reputation
Regulatory Tolerance
Political Access
Technical IP
Market Access
Supply Chain Access
Insurance Coverage
Board Support
Shareholder Patience
```

A resource may be abundant in one domain and scarce in another. For example, a company may have cash but lack legal capacity or management bandwidth.

---

## 4. Corporate Constraints

Corporate action is constrained by:

```text
Contracts
Law
Jurisdiction
Licensing
Board approval
Investor expectations
Cash flow
Debt covenants
Insurance
Reputation
Staffing
Procurement rules
Compliance requirements
Market timing
Supply chain
Tax structure
```

The assistant MUST distinguish between possible, legal, fundable, reputationally acceptable, and operationally executable.

---

## 5. Department Layer

Departments MAY be modeled as sub-Actors when they have meaningful autonomy.

Common departments:

```text
Executive Office
Legal
Finance
Operations
Security
Human Resources
Research & Development
Government Affairs
Public Relations
Compliance
Logistics
Sales / Business Development
Internal Audit
```

A department may know things the parent company leadership does not know, and vice versa. Knowledge State still applies.

---

## 6. Corporate Projects

Common Long-Term Projects:

```text
Incorporation or restructuring
License acquisition
Office expansion
Contract negotiation
Executive search
Capital raise
Acquisition diligence
Product development
Security deployment
Regulatory defense
Reputation repair
Internal investigation
Supply chain buildout
```

Corporate projects SHOULD track:

```text
Owner
Approver
Budget
Legal requirement
Staff requirement
Deadline
Counterparty
Risks
Milestones
Completion condition
```

---

## 7. Contract Procedure

A major contract SHOULD NOT be resolved as a single success/failure event.

Recommended steps:

```text
1. Opportunity identified.
2. Counterparty screened.
3. Requirements clarified.
4. Capability and staffing checked.
5. Risk assessed.
6. Pricing and scope negotiated.
7. Legal terms drafted.
8. Compliance reviewed.
9. Approval obtained.
10. Contract signed, delayed, revised, or rejected.
11. Obligations added to World State.
```

A signed contract creates obligations, exposure, revenue potential, resource demands, and future consequences.

---

## 8. Corporate Conflict

Corporate conflict includes:

```text
Competitive bidding
Price war
Talent poaching
Lawsuit
Regulatory complaint
Hostile takeover
Proxy fight
Boardroom dispute
Reputation attack
Supply chain denial
Patent dispute
Lobbying campaign
Whistleblower event
```

Use the Conflict Layer. Do not treat corporate conflict as combat unless violence is actually involved.

---

## 9. Failure Modes

Common corporate failure modes:

```text
Overextension
Cash-flow crunch
Legal noncompliance
Management bottleneck
Founder dependency
Reputation collapse
Regulatory intervention
Board revolt
Fraud exposure
Operational failure
Contract underperformance
Internal faction capture
```

These SHOULD be tracked as risks or open threads.

---

## 10. Compatibility

Compatible with:

```text
MOD-MODERN-REALIST
MOD-ESPIONAGE
MOD-MEDIEVAL-POLITICAL, if modeling merchant houses or proto-corporate entities
MOD-SPACE-OPERA, if modeling interstellar companies
MOD-CYBERPUNK, if modeling megacorps
```

Corporate Module SHOULD use Modern Realist as baseline when set in contemporary worlds.

---

## 11. Runtime Checklist

Before resolving a corporate action, check:

```text
What legal entity is acting?
Who has authority?
What resources are required?
What approvals are needed?
What contracts or laws constrain action?
What documentation is created?
What departments are involved?
Who knows the decision?
What liabilities arise?
What open threads change?
```
