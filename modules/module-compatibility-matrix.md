# USTF v3.0 — Module Compatibility Matrix

**File Path:** `modules/module-compatibility-matrix.md`  
**Document Type:** Module Reference  
**Layer:** Module / Reference  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Priority:** Genre Module

## Summary

This file records recommended compatibility relationships between USTF modules. Compatibility means modules can be loaded together without changing Core. It does not mean they automatically produce a complete campaign; the campaign state still defines actual world facts.

---

## 1. Compatibility Rule

**MC-001:** Modules may be combined only if all loaded modules obey Core.

**MC-002:** If two modules define overlapping procedures, the campaign must declare which procedure is active.

**MC-003:** If a module conflict affects Core behavior, treat it as a Rule Conflict and require review.

---

## 2. First Module Group

| Module | Best Used With | Watch For |
|---|---|---|
| Modern Realist | Corporate, Espionage, Horror, Military | Context overload from too many institutions |
| Corporate | Modern Realist, Espionage, Space, Cyberpunk | Over-modeling finance and legal details |
| Medieval Political | Horror, Fantasy, Espionage | Accidentally applying modern speed or institutions |
| Espionage | Modern, Corporate, Medieval, Horror | Operational detail becoming too granular |

---

## 3. Recommended Stacks

### Modern Corporate Campaign

```text
USTF Core
Modern Realist
Corporate
Optional: Espionage
```

Use for companies, contractors, biotech, logistics, private security, finance, and political-business campaigns.

### Medieval Court Campaign

```text
USTF Core
Medieval Political
Optional: Espionage
Optional: Horror / Occult
```

Use for dynasties, councils, marriages, secret networks, religious politics, and succession.

### Intelligence Campaign

```text
USTF Core
Modern Realist or Medieval Political
Espionage
Optional: Corporate
```

Use for covert conflict, source networks, information asymmetry, and counterintelligence.

---

## 4. Conflict Resolution Between Modules

When modules overlap:

```text
1. Identify affected procedure.
2. Identify active campaign domain.
3. Preserve Core invariant.
4. Select one procedure as active.
5. Record decision in Campaign State.
6. If permanent, create ADR or Module Note.
```

Example:

```text
Corporate Module contract procedure and Modern Realist legal trace model both apply.
Use Corporate contract procedure as primary.
Apply Modern Trace Model as additional consequence check.
```
