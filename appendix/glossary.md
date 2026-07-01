# USTF v3.0 Glossary

**Document Type:** Glossary  
**Layer:** Appendix / Reference  
**Version:** v3.0.0-draft  
**Status:** Draft

---

## Actor

Any entity capable of affecting World State.

Actors may include individuals, organizations, states, armies, companies, institutions, markets, diseases, crises, AI systems, secret societies, supernatural forces, or long-term historical pressures.

---

## World State

The objective condition of the fictional world, regardless of who knows it.

World State includes locations, resources, events, organizations, damage, deaths, contracts, institutions, political conditions, conflicts, and active processes.

---

## Knowledge State

What an Actor believes or knows about World State.

Knowledge State is not necessarily accurate. It may be incomplete, outdated, false, uncertain, secret, or contaminated.

---

## Need To Know

The rule that Actors may only act on information present in their Knowledge State.

User knowledge, assistant knowledge, or dramatic convenience does not grant knowledge to an Actor.

---

## Resource

Anything an Actor can spend, risk, convert, defend, accumulate, or lose.

Examples include wealth, personnel, time, legitimacy, attention, intelligence, access, infrastructure, technology, force, reputation, territory, trust, political capital, and operational capacity.

---

## Capability

An Actor's ability to attempt a type of action.

Capabilities may be personal, organizational, technical, social, military, supernatural, economic, or informational.

---

## Constraint

A limit on an Actor's action.

Constraints may include law, time, resources, geography, knowledge, chain of command, social expectation, logistics, health, morale, institutional inertia, or physical impossibility.

---

## Consequence Chain

A sequence of persistent effects caused by a meaningful decision, event, or action.

Consequences do not disappear unless changed by further action.

---

## Session Delta

A patch-style record of what changed during a session.

Session Delta does not replace the full campaign state. It is used to update state files.

---

## Campaign State

The canonical current record of a campaign.

Campaign State normally includes current state, actor registry, organization state, knowledge ledger, event log summary, and open threads.

---

## Archive

Historical material that may contain useful information but is not automatically active state.

Archive should be searched when needed, not loaded as active memory by default.

---

## Core

Stable engine specification. Core defines how USTF works across all genres.

Modules may extend Core but must not override Core.

---

## Module

A genre or setting-specific extension layer.

Modules add resources, procedures, risks, and calibration but must remain compatible with Core.

---

## Reference Procedure

A recommended execution workflow.

Reference Procedures help run campaigns consistently but are less stable than Core.

---

## Public API

The stable interface exposed by USTF Core to modules, campaigns, and tools.

Examples include Actor API, Knowledge API, World State API, Resolution API, Resource API, Conflict API, and Versioning API.

---

## Runtime Pack

A compact derived file or file set optimized for ChatGPT Project use.

Runtime Packs are not the source of truth. They are operational summaries derived from source files.

---

## Simulation Director

The operational role performed by the assistant or human facilitator when running USTF.

A Simulation Director maintains world logic, state, information isolation, consequences, and procedures.

---

## World Operator

A synonym for Simulation Director emphasizing operational maintenance rather than storytelling authorship.

---

## Unknown

A valid state for unresolved facts.

USTF prefers Unknown over invented certainty.
