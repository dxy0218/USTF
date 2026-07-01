# USTF v3.0 Document Priority Index

**Document Type:** Priority Index  
**Layer:** Appendix / Runtime Governance  
**Version:** v3.0.0-draft  
**Status:** Draft

---

## 1. Priority Order

```text
Priority 0: System / safety / platform rules
Priority 1: User Project Instructions
Priority 2: USTF Runtime Instructions
Priority 3: USTF Core Invariants
Priority 4: USTF Core Specification
Priority 5: Current Campaign State
Priority 6: Relevant Genre Module
Priority 7: Reference Procedures
Priority 8: Session Delta
Priority 9: Archive / Old Logs
Priority 10: Examples / Design Notes
```

---

## 2. Conflict Rules

### Rule Conflict

Use the highest priority active rule source. Mark lower-priority conflict for review.

### State Conflict

Use Current Campaign State over Archive. Mark continuity review if the contradiction affects major outcomes.

### Knowledge Conflict

Use the Knowledge Ledger over narrative summary. If the ledger is absent, mark the knowledge state Unknown.

### Module Conflict

Core prevails. Modules may extend but not override.

### Memory Conflict

Project state files prevail. Memory is non-canonical.

---

## 3. Runtime Compression Rule

When context is limited, preserve in this order:

```text
1. Core invariants
2. Current campaign state
3. Knowledge ledger
4. Open threads
5. Immediate scene context
6. Relevant module excerpt
7. Recent session delta
8. Archive excerpts
```

---

## 4. Public Documentation Rule

Public rulebook prose must not be treated as more authoritative than numbered Core Specification if they diverge.

If divergence is found:

```text
1. Follow Core Specification.
2. Record documentation issue.
3. Patch public rulebook in next release.
```
