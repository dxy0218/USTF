# USTF v3.0 — Playtest & Versioning Protocol

**File Path:** `core/17-playtest-versioning-protocol.md`  
**Document Type:** Core Specification  
**Layer:** Core / Governance  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification

## Summary

USTF treats campaigns as rule validation environments. Playtest campaigns do not exist merely to produce stories; they test whether the engine preserves world logic, continuity, information isolation, and long-form playability. Rule changes must be versioned, justified, and traceable.

---

## 1. Playtest Principle

**VER-001:** Campaigns are playtests of USTF, not exceptions to USTF.

**VER-002:** When a campaign reveals a rule problem, the rule may be revised through versioning.

**VER-003:** Existing worlds MUST NOT be rewritten merely to protect flawed rules.

**VER-004:** Rules MUST NOT be changed retroactively to justify a desired campaign outcome.

---

## 2. Versioning Model

USTF SHOULD use semantic-style versioning:

```text
MAJOR.MINOR.PATCH
```

Example:

```text
v3.0.0
v3.1.0
v3.1.1
v4.0.0
```

### MAJOR

Increment MAJOR when Core compatibility breaks.

Examples:

- Actor Model replaced.
- Knowledge State structure changed incompatibly.
- Resolution model reworked.
- World State hierarchy changed.

### MINOR

Increment MINOR when adding backward-compatible features.

Examples:

- New module standard.
- New reference procedure.
- New resource category.
- New template.

### PATCH

Increment PATCH for clarifications and corrections that do not change rule behavior.

Examples:

- Typo fix.
- Better wording.
- Clarified example.
- Non-rule explanation improved.

---

## 3. Rule Status Categories

Rules SHOULD be marked with status:

```text
Draft
Experimental
Playtest
Stable
Deprecated
Retired
```

### Draft

Proposed but not yet tested.

### Experimental

Allowed in controlled playtest, not recommended for general use.

### Playtest

Actively being tested in one or more campaigns.

### Stable

Accepted for regular use.

### Deprecated

Still readable for compatibility, but should not be used in new designs.

### Retired

Removed from active use.

---

## 4. Rule Change Proposal

Every meaningful rule change SHOULD use a Rule Change Proposal.

Required fields:

```text
Proposal ID:
Title:
Author:
Date:
Affected Files:
Affected Rule IDs:
Current Status:
Problem:
Proposed Change:
Reasoning:
Playtest Evidence:
Compatibility Impact:
Migration Guidance:
Decision:
```

---

## 5. Playtest Evidence

Playtest evidence SHOULD identify:

- Campaign name
- Session range
- Rule tested
- Situation tested
- Failure or success observed
- Cost of using the rule
- Continuity impact
- Cognitive load
- Model context load
- Whether issue was Core, Module, Procedure, or State management

Evidence MUST distinguish between:

```text
Rule failure
Module failure
Operator error
State file error
Context overflow
User preference mismatch
World-specific exception
```

---

## 6. Compatibility Impact

Every non-trivial change MUST identify compatibility impact:

```text
None
Clarification Only
Backward Compatible
Requires State Migration
Breaks Module Compatibility
Breaks Campaign Compatibility
Breaks Core Compatibility
```

If migration is required, the proposal MUST define migration steps.

---

## 7. Changelog Requirements

Each version release SHOULD update `CHANGELOG.md`.

Each changelog entry SHOULD include:

```text
Version
Date
Added
Changed
Deprecated
Removed
Fixed
Compatibility Notes
Playtest Sources
```

---

## 8. Campaign Migration

When a rule changes during an active campaign:

1. Record the old rule version.
2. Record the new rule version.
3. Determine whether past events remain valid.
4. Do not rewrite past events unless continuity review explicitly approves it.
5. Apply new rules going forward by default.
6. Mark any unresolved contradiction.

Campaign history is not automatically rewritten by rule updates.

---

## 9. Playtest Campaign Categories

USTF SHOULD classify campaigns by tested domains.

Examples:

```text
FSS Campaign:
- Organization
- Security contracting
- Field operations
- Legal exposure
- Information isolation
```

```text
TerraGroup Campaign:
- Megacorporation governance
- Research risk
- Political influence
- Regulatory attention
- Succession and wealth management
```

```text
Medieval Campaign:
- Feudal organization
- Slow communication
- Dynastic legitimacy
- Religious pressure
- Long-term political continuity
```

---

## 10. Versioning Summary

USTF rules are maintained like software.

The source files are canonical.

Rules change only through documented version history.

Campaigns validate rules; they do not excuse rule drift.
