# ADR-0016 — Runtime Pack Is a Derived Artifact

**Status:** Accepted Draft  
**Date:** 2026-07-01  
**Layer:** LLM Deployment / Repository Governance

---

## Context

USTF must run inside ChatGPT Project, where file count and context budget are limited.

A compact runtime pack is necessary for reliable execution, but maintaining it as an independent source would create rule drift.

---

## Decision

The Runtime Pack is a derived artifact.

The canonical source remains the modular repository files.

The runtime pack may summarize, compress, and prioritize rules, but it must not introduce independent rule changes.

---

## Consequences

- Runtime Pack is safe to upload as a compact project reference file.
- Full Core Specification remains the authority for rule development.
- Runtime Pack must be regenerated or reviewed after Core changes.
- If Runtime Pack conflicts with Core Specification, Core Specification prevails.
