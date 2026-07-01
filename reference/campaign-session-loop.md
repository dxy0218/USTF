# USTF v3.0 — Campaign Session Loop

**File Path:** `reference/campaign-session-loop.md`  
**Document Type:** Reference Procedure  
**Layer:** Reference  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Priority:** Reference Procedure

## Summary

The Campaign Session Loop defines a repeatable way to start, run, and close a USTF session in ChatGPT Project or any long-form campaign environment.

---

## 1. Start Session

At session start:

```text
1. Confirm campaign name.
2. Confirm current in-world date.
3. Load Current Campaign State.
4. Load Open Threads.
5. Load relevant Knowledge Ledger entries.
6. Load relevant Module.
7. Identify current acting Actor.
8. Identify immediate situation.
9. Confirm unresolved continuity issues.
```

---

## 2. During Session

For each meaningful action:

```text
1. Identify intent.
2. Identify acting Actor.
3. Check Knowledge State.
4. Check capability and resources.
5. Check time and opposition.
6. Resolve using USTF Resolution System.
7. Apply state changes.
8. Track consequences.
9. Advance other actors when time passes.
```

---

## 3. Close Session

At session close:

```text
1. Summarize player decisions.
2. Summarize world changes.
3. Summarize actor changes.
4. Summarize organization changes.
5. Summarize knowledge changes.
6. Summarize resource changes.
7. Update open threads.
8. Identify risks.
9. Identify contradictions.
10. Produce Session Delta.
```

---

## 4. Session Delta Is Required When

Produce a Session Delta if:

- In-world time advanced.
- A major decision was made.
- A meaningful actor state changed.
- Any organization changed state.
- Knowledge state changed.
- A risk, project, conflict, or investigation opened or closed.
- A continuity issue appeared.

---

## 5. Runtime Note

A session should not rely on raw transcript memory for continuation.

Current State files and approved Session Deltas are preferred.
