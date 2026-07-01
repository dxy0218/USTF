# ADR-0015 — Indexes Are Operational Tools

**Status:** Accepted Draft  
**Date:** 2026-07-01  
**Layer:** Repository / Runtime Support

---

## Context

USTF contains many small files to support ChatGPT Project deployment, GitHub publication, and future rulebook generation.

Without indexes, the repository becomes hard for both humans and language models to navigate.

---

## Decision

USTF will maintain operational indexes:

```text
Repository Index
Glossary
Rule ID Index
File Map
Document Priority Index
```

These indexes are not decorative appendices. They are part of the operational infrastructure.

---

## Consequences

- Models can locate relevant rules more reliably.
- Human maintainers can understand file priority and scope.
- Public rulebook builds can use indexes for navigation.
- Indexes must be updated when major files, rule families, or priorities change.
