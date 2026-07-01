# USTF v3.0 — Module Standard

**File Path:** `core/16-module-standard.md`  
**Document Type:** Core Specification  
**Layer:** Core / Module Interface  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification

## Summary

Modules adapt USTF to specific genres, eras, technologies, supernatural assumptions, institutions, and campaign styles. Modules may extend Core interfaces but must not override Core invariants. A valid module describes its assumptions, additions, procedures, constraints, and compatibility boundaries.

---

## 1. Module Definition

A USTF Module is a structured extension package that adapts the Core engine to a specific domain.

A module MAY represent:

- A historical era
- A genre
- A technology level
- A supernatural model
- A political structure
- A warfare model
- A corporate or economic environment
- A horror or occult framework
- A spacefaring setting
- A campaign-specific implementation

A module MUST NOT be treated as Core unless formally promoted through versioning.

---

## 2. Core Boundary

**MOD-001:** A module MAY extend Core.

**MOD-002:** A module MUST NOT override Core invariants.

**MOD-003:** A module MUST NOT bypass Knowledge State, Time Continuity, World State persistence, or consequence tracking.

**MOD-004:** If a module requires an exception to Core, the exception MUST be submitted as a rule change proposal, not silently embedded in the module.

**MOD-005:** Module-specific procedures MUST declare whether they are required, recommended, optional, or experimental.

---

## 3. Required Module Metadata

Every module MUST begin with:

```text
Module Name:
Module ID:
Version:
Status:
Compatible USTF Core Version:
Layer:
Genre / Domain:
Required Core Files:
Optional Reference Files:
Summary:
```

Recommended statuses:

```text
Draft
Experimental
Playtest
Stable
Deprecated
Retired
```

---

## 4. Required Module Sections

A valid USTF module SHOULD include:

```text
1. Scope
2. Assumptions
3. Added Actor Types
4. Added Resource Types
5. Added Capabilities
6. Added Constraints
7. Added Conflict Forms
8. Added Knowledge Rules, if any
9. Added Time Scale Rules, if any
10. Added Economy / Logistics Rules, if any
11. Special Procedures
12. Module Risks
13. Compatibility Notes
14. Example Implementation
15. Playtest Questions
```

---

## 5. Module Extension Points

Modules MAY extend the following Core interfaces:

```text
Actor API
Capability API
Resource API
Conflict API
Knowledge API
Time API
World State API
Organization API
Resolution API
Campaign Operations API
```

Modules SHOULD document each extension with stable IDs.

Example:

```text
MOD-CORP-RES-001: Add Regulatory Capital as a Resource.
MOD-MED-ACT-001: Add Noble House as an Organization subtype.
MOD-HOR-KNO-001: Add Contaminated Knowledge as a Knowledge reliability state.
```

---

## 6. Module Assumptions

A module MUST declare its assumptions.

Examples:

```text
Modern Realist Module:
- Nation-states exist.
- Modern legal systems exist.
- Firearms are widely available but regulated.
- Global communications are fast but not omniscient.
```

```text
Medieval Political Module:
- Communication is slow.
- Legitimacy is personal, dynastic, religious, and customary.
- Land and oath networks are central resources.
- Military force is seasonal and logistically constrained.
```

```text
Horror / Occult Module:
- Some facts may be dangerous to know.
- Evidence may be unreliable or sanity-threatening.
- Unknown forces may operate outside ordinary social logic, but not outside Core tracking.
```

---

## 7. Module Compatibility

A module is compatible with USTF Core when:

- It preserves Core invariants.
- It uses Actor, World State, Knowledge State, Time, Resource, and Consequence interfaces.
- It records all special rules explicitly.
- It does not require hidden rule changes.
- It can be removed without corrupting unrelated Core files.

A module is incompatible when:

- It requires actors to know impossible information.
- It resets consequences without state changes.
- It bypasses time continuity.
- It replaces the Core resolution model.
- It makes drama or genre convention superior to world logic.

---

## 8. Module Load Order

When running a campaign, modules SHOULD load after:

```text
Runtime Instructions
Core Invariants
Core Specification
Current Campaign State
```

Modules SHOULD load before:

```text
Reference Procedures
Session Delta
Archive Logs
Examples
```

Campaign-specific modules MAY override generic modules only within the campaign state layer, not Core.

---

## 9. Multiple Modules

A campaign MAY use multiple modules.

Example:

```text
Modern Realist + Corporate + Espionage
Medieval Political + Occult Horror
Space Opera + Military + Political
Cyberpunk + Corporate + Investigation
```

When modules conflict:

1. Core prevails.
2. Campaign-specific module prevails over generic module.
3. More specific module prevails over broader module.
4. Stable module prevails over experimental module.
5. If unresolved, mark Module Conflict and request review.

---

## 10. Module Promotion

A repeated module rule MAY be promoted to Core only if:

- It appears across multiple unrelated campaigns.
- It solves a general engine problem.
- It does not depend on one genre.
- It has been tested in at least two playtest contexts.
- It does not break existing Core interfaces.

Promotion requires a rule change proposal and version update.

---

## 11. Module Summary

Modules are plugins, not exceptions.

A valid USTF module adds domain-specific detail while preserving:

```text
World State independence
Actor logic
Knowledge isolation
Time continuity
Persistent consequences
Versioned rule changes
```
