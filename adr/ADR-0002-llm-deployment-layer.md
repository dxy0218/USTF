# ADR-0002 — LLM Deployment Layer

**Status:** Accepted Draft  
**Date:** v3.0.0-draft phase  
**Affected Files:** Runtime Pack, Core Invariants, Templates, Campaign State Pack

---

## Context

USTF is intended to be used inside ChatGPT Projects as a reference-file-driven campaign engine.

Language models have context limits, imperfect recall, and non-canonical memory.

A traditional large single-file rulebook is not ideal for model execution.

---

## Decision

USTF includes an LLM Deployment Layer.

This layer defines:

```text
runtime instructions
quickstart procedure
minimal core pack
context budget policy
memory policy
file priority order
session delta workflow
campaign state pack templates
```

USTF must be readable by humans but executable by language models.

---

## Consequences

Positive:

- Better long-term continuity.
- Lower context burden.
- Reduced memory drift.
- Easier ChatGPT Project deployment.
- Clear separation between active state and archive.

Negative:

- Requires additional operational discipline.
- Runtime files may feel less literary than a rulebook.

---

## Compatibility

Public rulebook generation remains possible.

The canonical source should remain modular.

The runtime pack and public rulebook are derived from the same source.
