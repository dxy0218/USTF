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
