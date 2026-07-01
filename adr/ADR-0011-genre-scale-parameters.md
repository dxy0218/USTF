# ADR-0011 — Genre Scale Parameters

**File Path:** `adr/ADR-0011-genre-scale-parameters.md`  
**Status:** Accepted  
**Date:** 2026-07-01  
**Version:** v3.0.0-draft

---

## Context

USTF modules cover very different genres: modern realism, corporate strategy, medieval politics, espionage, horror, space opera, military war, and cyberpunk. These genres differ less by Core logic and more by scale, scarcity, technology, information flow, and recovery assumptions.

Without explicit scale parameters, modules risk smuggling setting assumptions into Core.

---

## Decision

Every major Genre Module SHOULD define scale parameters before campaign start.

Common scale parameters include:

```text
Time scale
Distance scale
Communication model
Institutional reach
Technology level
Resource scarcity
Lethality
Recovery assumptions
Attention speed
Information reliability
```

These parameters are module configuration, not Core changes.

---

## Consequences

Modules can support many campaign tones without rewriting Core.

A Space Opera campaign may use instant FTL communication or courier delay, but either choice must be explicit.

A Horror campaign may include real supernatural forces or only human superstition, but the boundary must be stated.

A Cyberpunk campaign may emphasize street scarcity or corporate high-tech operations, but access and resource rules remain intact.

---

## Compatibility

This ADR reinforces:

```text
Core/Module boundary
Technology boundary template
Unknown state preservation
Context budget discipline
```
