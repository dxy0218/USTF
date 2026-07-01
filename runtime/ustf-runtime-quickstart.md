# USTF v3.0 — Runtime Quickstart

**File Path:** `runtime/ustf-runtime-quickstart.md`  
**Document Type:** Runtime Guide  
**Layer:** LLM Deployment Layer  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Runtime / Hot Context  
**Purpose:** Provide the minimum operational procedure for running USTF inside a ChatGPT Project.

---

## 0. Summary

This file defines the active procedure for starting, continuing, resolving, and closing a USTF campaign session inside ChatGPT.

It is designed for limited model context.

Use this file together with:

```text
runtime/chatgpt-project-instructions.md
core/02-core-invariants.md
campaigns/<campaign-id>/01-current-state.md
campaigns/<campaign-id>/04-knowledge-ledger.md
campaigns/<campaign-id>/05-open-threads.md
```

This file is procedural.

It does not replace Core rules.

---

## 1. Runtime Modes

USTF sessions operate in one of five runtime modes.

```text
MODE-001: New Campaign Setup
MODE-002: Session Continuation
MODE-003: Action Resolution
MODE-004: World Update
MODE-005: Session Closeout
```

The assistant SHOULD identify the active mode before processing major campaign work.

If the mode is unclear, infer it from user intent.

---

## 2. New Campaign Setup

Use this mode when starting a new campaign, new setting, or new playtest branch.

### Required Inputs

```text
Campaign Name
Genre / Module
Starting Date or Era
Primary Player Actor
Initial Scope
Simulation Realism Level
Starting World State
Initial Major Actors
Initial Known Information
Initial Open Threads
```

### Setup Procedure

```text
1. Identify campaign premise.
2. Select relevant USTF Core files.
3. Select relevant Genre Module.
4. Create Campaign Brief.
5. Create Current State.
6. Create Actor Registry.
7. Create Knowledge Ledger.
8. Create Open Threads.
9. Define first active situation.
10. Begin play only after state files exist or have been summarized.
```

### Output Files Recommended

```text
campaigns/<campaign-id>/00-campaign-brief.md
campaigns/<campaign-id>/01-current-state.md
campaigns/<campaign-id>/02-actor-registry.md
campaigns/<campaign-id>/03-organization-state.md
campaigns/<campaign-id>/04-knowledge-ledger.md
campaigns/<campaign-id>/05-open-threads.md
campaigns/<campaign-id>/07-event-log-summary.md
```

---

## 3. Session Continuation

Use this mode when continuing an existing campaign.

### Required Load Order

```text
1. Runtime Instructions
2. Core Invariants
3. Current Campaign State
4. Knowledge Ledger
5. Open Threads
6. Relevant Actor Registry entries
7. Relevant Organization State entries
8. Most recent approved Session Delta
9. Relevant Genre Module
```

### Continuation Procedure

```text
1. Establish current in-world date and location.
2. Identify active player actor.
3. Identify active scene or strategic situation.
4. Check unresolved open threads.
5. Check immediate risks.
6. Check what the active actor actually knows.
7. Present the current situation without revealing hidden information.
8. Await or process player intent.
```

### Runtime Rule

The assistant MUST NOT rely on memory alone to continue campaign canon.

If current state is unavailable, the assistant SHOULD request or reconstruct a provisional current state from explicit user-approved summaries.

---

## 4. Action Resolution

Use this mode whenever an actor attempts to change the world state.

### Action Resolution Frame

Every major action is treated as:

```text
Actor attempts to change World State by using Method under Constraints.
```

### Required Questions

Before resolving a major action, check:

```text
Who is acting?
What do they intend?
What do they know?
What method are they using?
What capabilities apply?
What resources are available?
What time is required?
What opposition exists?
What risks exist?
What state may change?
```

### Resolution Procedure

```text
1. Identify Actor.
2. Identify Intent.
3. Identify Method.
4. Check Knowledge State.
5. Check Capability.
6. Check Resources.
7. Check Time Cost.
8. Check Constraints.
9. Check Opposition.
10. Classify the resolution type.
11. Resolve outcome.
12. Apply consequences.
13. Update World State.
14. Update Knowledge State.
15. Update Open Threads.
```

---

## 5. Resolution Types

USTF uses three resolution types.

### 5.1 Deterministic Resolution

Use when the result follows directly from established facts.

Examples:

```text
No license → cannot legally perform licensed activity.
No fuel → vehicle cannot continue operating.
No knowledge → actor cannot act on that information.
Destroyed asset → asset cannot be used until repaired or replaced.
```

No randomization is used.

---

### 5.2 Procedural Resolution

Use when the action requires time, steps, resources, or milestones.

Examples:

```text
Building a company department
Training a military unit
Conducting due diligence
Researching technology
Lobbying a political body
Investigating a conspiracy
Establishing a supply chain
```

Procedure format:

```text
Requirement
Time Cost
Resource Cost
Risk
Opposition
Milestones
Failure Modes
Completion Effects
```

---

### 5.3 Uncertainty Resolution

Use only when genuine uncertainty remains after facts, procedure, resources, and opposition are checked.

Uncertainty may involve:

```text
Human reaction
Market response
Weather or environment
Enemy detection
Operational friction
Information reliability
Negotiation outcome
Combat outcome
```

Randomness MAY be used.

Randomness MUST NOT replace world logic.

---

## 6. Knowledge Check Procedure

Before any actor makes a meaningful decision, apply this check.

```text
KCP-001: Does the Actor know the relevant fact?
KCP-002: How did the Actor learn it?
KCP-003: When did the Actor learn it?
KCP-004: Is the information reliable?
KCP-005: Has the Actor misunderstood it?
KCP-006: Can the Actor share it?
KCP-007: Who else knows it?
```

If the answer cannot be established, mark it:

```text
Unknown
```

Unknown information MUST NOT be treated as known.

---

## 7. World Update Procedure

Use after major player action, time skip, downtime, strategic turn, or major offscreen development.

```text
1. Apply immediate consequences.
2. Advance in-world time.
3. Advance ongoing projects.
4. Advance relevant non-player actors.
5. Update resource states.
6. Update organization states.
7. Update relationships and attention.
8. Update knowledge propagation.
9. Update open threads.
10. Detect new risks.
11. Record state changes.
```

The world does not pause when the player actor changes location, rests, researches, negotiates, travels, or waits.

---

## 8. Actor Advancement Procedure

When advancing non-player actors, use the Actor Model.

```text
1. What is the Actor's goal?
2. What does the Actor know?
3. What resources can the Actor use?
4. What constraints limit action?
5. What current projects are active?
6. What opportunity or threat changed?
7. What is the Actor likely to do next?
8. What state changes follow?
```

Do not advance every actor every time.

Advance only actors that are:

```text
Relevant
Time-sensitive
Directly affected
Strategically important
Likely to affect future play
```

---

## 9. Open Threads Management

Open Threads are unresolved situations that may develop over time.

Each Open Thread SHOULD record:

```text
Thread ID
Description
Actors Involved
Current Status
Known To
Hidden Factors
Time Pressure
Risk Level
Next Likely Development
Resolution Conditions
```

Open Threads may be:

```text
Active
Dormant
Escalating
Blocked
Resolved
Archived
```

The assistant SHOULD review Open Threads during Session Continuation and World Update.

---

## 10. Attention and Exposure Check

When an action is public, illegal, violent, expensive, politically sensitive, unusual, or strategically significant, check Attention.

Attention may include:

```text
Legal Attention
Media Attention
Political Attention
Military Attention
Intelligence Attention
Market Attention
Religious Attention
Public Attention
Criminal Attention
Supernatural Attention
```

Attention can create:

```text
Opportunity
Pressure
Investigation
Reputation Change
Deterrence
Escalation
Recruitment
Surveillance
Retaliation
```

Attention is not automatically negative.

---

## 11. Session Closeout

Use this mode when the session has produced meaningful changes or when the user asks to pause.

### Closeout Procedure

```text
1. Identify in-world time elapsed.
2. List major player decisions.
3. List major world state changes.
4. List actor state changes.
5. List organization state changes.
6. List resource changes.
7. List knowledge changes.
8. List open threads added or changed.
9. List risks added or reduced.
10. Identify contradictions or uncertain continuity.
11. Produce Session Delta.
12. Recommend files to update.
```

The assistant SHOULD NOT generate an unnecessarily long archive unless requested.

Session Delta is preferred.

---

## 12. Session Delta Template

```markdown
# Session Delta

**Campaign:**  
**Session ID:**  
**Date Created:**  
**In-World Time:**  
**Runtime Mode:** Session Closeout  

---

## 1. Time Advanced

- From:
- To:
- Time elapsed:

---

## 2. Player Decisions

- 

---

## 3. World State Changes

- 

---

## 4. Actor State Changes

- 

---

## 5. Organization State Changes

- 

---

## 6. Resource Changes

- 

---

## 7. Knowledge Changes

| Information | Holder | Source | Reliability | Transferable | Notes |
|---|---|---|---|---|---|
| | | | | | |

---

## 8. Open Threads

### Added

- 

### Updated

- 

### Resolved

- 

---

## 9. Risks

### Added

- 

### Reduced

- 

### Escalated

- 

---

## 10. Continuity Issues

- None recorded.

---

## 11. Recommended File Updates

- `campaigns/<campaign-id>/01-current-state.md`
- `campaigns/<campaign-id>/02-actor-registry.md`
- `campaigns/<campaign-id>/03-organization-state.md`
- `campaigns/<campaign-id>/04-knowledge-ledger.md`
- `campaigns/<campaign-id>/05-open-threads.md`
- `campaigns/<campaign-id>/07-event-log-summary.md`
```

---

## 13. Context Overflow Procedure

When context becomes crowded, the assistant SHOULD pause active expansion and produce a compact state summary.

Use this priority:

```text
1. Current World State
2. Player Actor State
3. Active Actors
4. Knowledge Ledger
5. Open Threads
6. Resources and Constraints
7. Recent Decisions
8. Unresolved Risks
9. Rules or Continuity Conflicts
```

Archive detailed narration separately.

Do not treat raw transcript as active state.

---

## 14. Contradiction Procedure

When contradiction appears:

```text
1. Identify conflicting sources.
2. Classify conflict type.
3. Apply file priority order.
4. Use highest-priority source provisionally.
5. Mark Continuity Review Required if unresolved.
6. Do not silently retcon.
```

Conflict types:

```text
Rule Conflict
Timeline Conflict
Knowledge Conflict
Actor State Conflict
Organization State Conflict
Resource Conflict
Archive Conflict
Memory Conflict
Version Conflict
```

---

## 15. Minimal Runtime Checklist

Before resolving major action:

```text
Actor checked?
Intent checked?
Knowledge checked?
Capability checked?
Resources checked?
Time checked?
Opposition checked?
Consequences checked?
Other actors advanced if needed?
State change recorded?
```

If any answer is missing, resolve only what can be logically established.

Mark the rest Unknown.

---

## 16. Quick Command Phrases

Users may use the following phrases during play.

```text
开始新战役
继续当前战役
检查当前状态
推进时间
处理这个行动
更新世界状态
检查谁知道什么
生成 Session Delta
总结当前战役状态
列出开放线程
检查连续性问题
```

The assistant SHOULD map these phrases to the appropriate runtime mode.

---

## 17. Runtime Principle

Run the world first.

Narrate second.

Record always.

