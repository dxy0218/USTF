# USTF v3.0 — GitHub Release Structure

**File Path:** `book/github-release-structure.md`  
**Document Type:** Publication Structure  
**Layer:** Repository / Public Release Layer  
**Version:** v3.0.0-draft  
**Status:** Draft  
**Priority:** Release Reference  

## Summary

USTF may later be published on GitHub for public use.

The public repository should preserve source-first architecture while remaining friendly to readers, contributors, and people using LLMs to run campaigns.

This document defines the recommended public repository structure.

---

## 1. Public Repository Goals

The GitHub release should support:

```text
Human reading
LLM runtime usage
Forking and modification
Module development
Version tracking
Issue reporting
Playtest feedback
Rulebook generation
```

It should not expose private campaign material unless intentionally cleaned and published.

---

## 2. Recommended Repository Structure

```text
USTF/
├── README.md
├── VERSION.md
├── CHANGELOG.md
├── LICENSE.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
│
├── runtime/
├── core/
├── reference/
├── modules/
├── templates/
├── adr/
├── book/
├── examples/
├── playtest/
└── tools/
```

Private campaign files should not be placed in the public repository unless scrubbed.

---

## 3. README Requirements

The README should answer:

```text
What is USTF?
What is it not?
Who is it for?
How do I use it in ChatGPT Projects?
How do I use it without AI?
What is the current version?
Where are the core rules?
Where are the modules?
How do I contribute?
```

The README should be short enough to read quickly.

---

## 4. Release Assets

A GitHub release MAY include:

```text
USTF-Core-Specification-v3.0.0.md
USTF-Runtime-Pack-v3.0.0.zip
USTF-Human-Rulebook-v3.0.0.pdf
USTF-Templates-v3.0.0.zip
USTF-Module-Pack-v3.0.0.zip
```

The repository source remains authoritative.

---

## 5. Branch Strategy

Recommended branches:

```text
main: stable public source
dev: active integration
module/<module-name>: module development
playtest/<campaign-name>: optional playtest branches
archive/<version>: preserved historical snapshots
```

For a small project, `main` plus tags is sufficient.

---

## 6. Tags and Versions

Use semantic-style tags:

```text
v3.0.0
v3.0.1
v3.1.0
v4.0.0
```

Meaning:

```text
MAJOR: Core incompatibility
MINOR: Compatible feature/module expansion
PATCH: Compatible correction or clarification
```

Runtime Pack and Rulebook builds may have build suffixes:

```text
v3.0.0-runtime.1
v3.0.0-book.1
```

---

## 7. Issue Labels

Recommended issue labels:

```text
core
module
runtime
documentation
template
playtest-feedback
continuity-problem
rule-conflict
clarification
breaking-change
proposal
```

---

## 8. Contribution Model

Public contributions should use a proposal model.

A contribution SHOULD identify:

```text
Affected file
Problem
Proposed change
Reason
Compatibility impact
Playtest evidence
Alternative considered
```

Major changes should create or update an ADR.

---

## 9. Public vs Private Playtest

Private campaigns may inspire rules, but public release should not require readers to know private campaign lore.

Public examples SHOULD be:

```text
Generic
Cleaned
IP-safe
Short
Marked as non-binding
```

Private campaign names may appear as playtest sources only if appropriate.

---

## 10. Licensing

USTF should choose a license before public release.

Possible approaches:

```text
Creative Commons for text
Open gaming style license if desired
MIT-style license for tooling scripts
Separate license for examples or modules
```

License choice affects whether others can fork, remix, translate, commercialize, or bundle USTF.

Do not publish publicly without choosing a license.

---

## 11. Public Release Checklist

Before public release:

```text
[ ] Remove private campaign data.
[ ] Confirm license.
[ ] Freeze version number.
[ ] Update CHANGELOG.
[ ] Verify file links.
[ ] Verify module compatibility matrix.
[ ] Mark drafts clearly.
[ ] Include runtime instructions.
[ ] Include templates.
[ ] Add contribution guide.
[ ] Add release notes.
```

---

## 12. Public Positioning Statement

Recommended short positioning:

```text
USTF is a source-first, LLM-executable, book-ready campaign engine specification for persistent fictional worlds.
```

Recommended Chinese positioning:

```text
USTF 是一套源码优先、可由语言模型执行、可生成完整规则书的持续性虚构世界战役引擎规范。
```
