# USTF Template — Campaign State Pack

**File Path:** `templates/campaign-state-pack-template.md`  
**Document Type:** Template  
**Layer:** Campaign Operations  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Purpose:** Define the minimum file pack required to continue a long-form USTF campaign without relying on chat history or memory.

---

## 0. Summary

A Campaign State Pack is the canonical active state for a campaign.

It should be short enough to load into a ChatGPT Project, but complete enough to prevent continuity drift.

Do not use raw transcripts as active state.

Use summaries, registries, ledgers, and deltas.

---

## 1. Recommended File Pack

```text
campaign/
├── 00-campaign-brief.md
├── 01-current-state.md
├── 02-actor-registry.md
├── 03-organization-state.md
├── 04-knowledge-ledger.md
├── 05-open-threads.md
├── 06-event-log-summary.md
└── 99-archive-index.md
```

---

## 2. 00-campaign-brief.md

Purpose: Identify the campaign and its operating assumptions.

Recommended fields:

```text
Campaign Name
Genre Module
USTF Version
Starting Date / Era
Current Date / Era
Primary Player Actor
Campaign Scope
Realism Level
Tone Constraints
Core Themes
Public Premise
Private Operator Notes
```

---

## 3. 01-current-state.md

Purpose: Define active objective world state.

Recommended fields:

```text
Current Date / Era
Current Locations
Primary Actor Status
Current Strategic Situation
Active Conflicts
Active Projects
Major Resources
Political Conditions
Economic Conditions
Security Conditions
Recent Consequences
Continuity Flags
```

---

## 4. 02-actor-registry.md

Purpose: Track significant individual and non-individual Actors.

Recommended fields:

```text
Actor ID
Name
Type
Status
Location
Goals
Resources
Capabilities
Knowledge Reference
Relationships
Current Projects
Risk Tolerance
Notes
```

---

## 5. 03-organization-state.md

Purpose: Track organizations as Actors.

Recommended fields:

```text
Organization ID
Name
Type
Scale
Stability
Leadership
Structure
Resources
Capabilities
Internal Factions
External Relationships
Current Projects
Legal / Political Exposure
Knowledge Reference
Notes
```

---

## 6. 04-knowledge-ledger.md

Purpose: Enforce Need To Know.

Use `templates/knowledge-ledger-template.md`.

This file is essential.

Do not omit it in information-sensitive campaigns.

---

## 7. 05-open-threads.md

Purpose: Track unresolved campaign processes.

Recommended fields:

```text
Thread ID
Description
Relevant Actors
Current Status
Urgency
Trigger Conditions
Likely Next Development
Consequences If Ignored
Linked Files
```

---

## 8. 06-event-log-summary.md

Purpose: Preserve important history without loading full transcripts.

Recommended fields:

```text
Event ID
Date
Summary
Actors Involved
State Changes
Knowledge Changes
Consequences
Source Session
```

---

## 9. 99-archive-index.md

Purpose: Point to long-form logs and retired details.

Archive files are not active state.

Recommended fields:

```text
Archive File
Date Range
Contents
Relevance
When To Consult
```

---

## 10. Maintenance Rule

After every meaningful session:

```text
1. Produce Session Delta.
2. Review Delta.
3. Apply approved changes to Campaign State Pack.
4. Move raw detail to archive if needed.
5. Keep active files concise.
```
