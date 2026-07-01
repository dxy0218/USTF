# ADR-0017: License Policy

**Status:** Accepted  
**Date:** 2026-07-01  
**Layer:** Repository Governance  
**Affected Files:** `LICENSE.md`, `README.md`, `CONTRIBUTING.md`, `VERSION.md`, `CHANGELOG.md`

---

## Context

USTF is primarily a written campaign engine specification, not a software library. Most repository content consists of rules, templates, modules, reference procedures, ADRs, and book-ready Markdown documentation. Future repository tooling may include scripts, build automation, or publishing utilities.

A single software license would not fit the documentation-heavy nature of the project. A single Creative Commons license would not be ideal for future code or automation.

---

## Decision

USTF adopts a split license policy:

- Documentation, rules, templates, modules, ADRs, examples, runtime guides, and book material are licensed under **Creative Commons Attribution 4.0 International (CC BY 4.0)**.
- Code, scripts, build tools, and automation are licensed under the **MIT License**.

---

## Rationale

CC BY 4.0 allows sharing and adaptation, including commercial use, while requiring attribution. This fits a public rules/specification project intended for forks, translations, campaign adaptations, and derivative modules.

MIT is a permissive and widely recognized license for software utilities and future build tooling.

The split model supports both human-readable rule distribution and software-style repository maintenance without forcing one license type onto all content.

---

## Consequences

- Public users may reuse and adapt USTF rules if they provide attribution.
- Future scripts and tooling can be reused under MIT.
- Contributors must license their submissions under the same split policy unless otherwise agreed before submission.
- Private campaign material should remain outside the public release unless explicitly cleaned and marked as example content.
