# Universal Strategic TTRPG Framework — USTF v3.0

**Subtitle:** A Universal Framework for Long-form Narrative Campaigns  
**Repository Type:** Source-first campaign engine specification  
**Current Version:** v3.0.0-draft  
**Primary Use:** Persistent fictional world simulation for long-form campaigns  
**Secondary Use:** GitHub public rulebook, reference manual, and module library

---

## 1. What USTF Is

USTF is not a traditional TTRPG rulebook.

USTF is a source-first, LLM-executable, book-ready campaign engine specification for persistent fictional worlds.

It defines how fictional worlds change over time through:

- Actors
- World State
- Knowledge State
- Time
- Resources
- Organizations
- Conflict
- Investigation
- Economy and logistics
- Political and social pressure
- Campaign operations
- Versioned playtesting

USTF does not create stories. It defines how persistent fictional worlds change over time. Stories are the observed result of that simulation.

---

## 2. Core Design Statement

```text
USTF simulates worlds, not plots.
```

The framework is designed for campaigns where:

- The player is not the center of the world by default.
- NPCs and organizations act independently.
- Information is separated by who actually knows it.
- Consequences persist.
- Long-term projects and world processes advance over time.
- Rules are versioned and improved through playtest evidence.

---

## 3. Repository Philosophy

USTF follows a software-engineering model.

```text
Source files are canonical.
Runtime packs and public rulebooks are generated or derived artifacts.
```

This prevents the ChatGPT Project version, GitHub rulebook version, and private campaign files from drifting into separate incompatible systems.

---

## 4. Suggested Repository Layout

```text
USTF/
├── README.md
├── VERSION.md
├── CHANGELOG.md
├── INDEX.md
├── core/
├── reference/
├── runtime/
├── modules/
├── templates/
├── campaigns/
├── book/
├── appendix/
└── adr/
```

---

## 5. How to Use in ChatGPT Project

For actual campaign play, do not upload the entire repository as active reference context unless the model and project file limits permit it.

Instead, use a compact Runtime Pack plus the current campaign state.

Recommended active files:

```text
runtime/USTF_v3.0_runtime_pack.md
runtime/campaign-state-pack-standard.md
core/02-core-invariants.md
core/07-knowledge-information-system.md
campaigns/<campaign>/current-state.md
campaigns/<campaign>/knowledge-ledger.md
campaigns/<campaign>/open-threads.md
```

If file slots are limited, prioritize:

```text
1. Runtime Pack
2. Current Campaign State
3. Knowledge Ledger
4. Open Threads
5. Relevant Genre Module
```

Memory is helpful but non-canonical. Campaign state files are authoritative.

---

## 6. How to Use as a Public Rulebook

The GitHub public edition should expose:

- Core Specification
- Reference Procedures
- Module Standard
- Genre Modules
- Templates
- Glossary
- Rule ID Index
- Versioning and playtest protocol

Public campaign examples should be cleaned and separated from private playtest materials.

---

## 7. Compatibility

A campaign, module, or tool may claim compatibility with USTF only if it preserves the following:

- Actor-based simulation
- World State / Knowledge State separation
- Persistent consequences
- Time continuity
- Core-before-module hierarchy
- Versioned rule changes
- Non-canonical memory policy for LLM deployments

---

## 8. Development Roadmap

v3.0 establishes the foundation:

- Core engine model
- LLM deployment model
- Runtime pack
- Module architecture
- Playtest/versioning process

v3.x should focus on:

- More complete modules
- Better campaign state tooling
- Public rulebook compilation
- Playtest-derived rule revisions
- Compatibility tests

v4.0 should only occur if Core APIs require breaking revision.


---

## 8. License

USTF uses a split license model:

- Documentation, rules, templates, modules, ADRs, and book material: **CC BY 4.0**.
- Code, scripts, build tooling, and automation: **MIT License**.

See `LICENSE.md` for details.
