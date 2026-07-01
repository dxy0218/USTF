# USTF Core Specification — 00 Overview

**File Path:** `core/00-overview.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Purpose:** Define what USTF is, what it is not, and how its documents should be interpreted.

---

## 0. Summary

USTF is a universal campaign engine specification for persistent fictional worlds.

It is designed for long-form narrative campaigns in which world state, information, organizations, resources, and consequences must remain coherent over time.

USTF is not genre-bound.

USTF is not player-centered by default.

USTF is not a plot-generation system.

---

## 1. Definition

USTF stands for Universal Strategic TTRPG Framework.

The word TTRPG remains historically useful, but USTF is more accurately described as:

```text
A source-first, LLM-executable, book-ready campaign engine specification for persistent fictional worlds.
```

USTF defines how a fictional world changes over time.

It does not define a fixed setting, fixed genre, fixed character sheet, fixed dice mechanic, or fixed campaign structure.

---

## 2. Primary Use Cases

USTF is designed to support:

- modern realist campaigns;
- political campaigns;
- military campaigns;
- corporate and organization-management campaigns;
- medieval dynastic campaigns;
- espionage and investigation campaigns;
- horror and hidden-world campaigns;
- science-fiction and space-opera campaigns;
- long campaigns lasting months or years in real time;
- campaigns run with language-model assistance.

---

## 3. What USTF Optimizes For

USTF optimizes for:

```text
continuity
causality
information boundaries
strategic consequences
world autonomy
organization behavior
long-term maintainability
```

USTF does not primarily optimize for:

```text
fast tactical combat
cinematic pacing
balanced encounters
class-based advancement
scene-by-scene drama
```

These may be added by modules, but they are not Core goals.

---

## 4. Design Sentence

USTF does not create stories.

USTF defines how persistent fictional worlds change over time.

Stories are the observed result of world simulation.

---

## 5. Core Objects

USTF Core uses the following primary objects:

```text
Actor
World State
Knowledge State
Resource
Capability
Constraint
Project
Consequence
Conflict
Module
Session Delta
```

These objects form the minimum vocabulary for campaign operation.

---

## 6. Source and Deliverables

USTF is source-first.

The Markdown source files are canonical.

Generated products may include:

```text
ChatGPT Project Runtime Pack
Public GitHub Rulebook
PDF Rulebook
Web Documentation
Module Packs
Campaign Templates
```

Generated products MUST NOT change rule meaning relative to the source.

---

## 7. Reading Order

For runtime use, read:

```text
runtime/chatgpt-project-instructions.md
runtime/ustf-runtime-quickstart.md
runtime/ustf-minimal-core-pack.md
core/02-core-invariants.md
```

For design use, read:

```text
core/00-overview.md
core/01-architecture-principles.md
core/02-core-invariants.md
core/03-public-api.md
```

For campaign use, also read campaign state files and relevant modules.

---

## 8. Normative Language

USTF uses the following normative terms:

```text
MUST: absolute requirement.
MUST NOT: absolute prohibition.
SHOULD: expected default, with justified exceptions.
SHOULD NOT: discouraged default, with possible exceptions.
MAY: optional permission.
OPTIONAL: fully optional feature.
```

Examples are non-binding unless explicitly marked as normative.

---

## 9. Compatibility

A campaign, module, or tool may claim USTF compatibility only if it respects:

- Core Invariants;
- Core / Module boundary;
- Knowledge State separation;
- persistent consequences;
- versioned rule changes;
- canonical state files for long-term play.
