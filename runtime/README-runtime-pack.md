# USTF v3.0 Runtime Pack

**Document Type:** Runtime Pack Guide  
**Layer:** LLM Deployment  
**Version:** v3.0.0-draft  
**Status:** Draft

---

## Purpose

The Runtime Pack is a compact operational bundle for running USTF inside ChatGPT Projects.

It is optimized for:

- Low context usage
- High rule recall
- Strong continuity enforcement
- Fast campaign continuation
- Clear file priority

It is not the full rulebook.

---

## Recommended Project Files

Minimum setup:

```text
USTF_v3.0_runtime_pack.md
current-state.md
knowledge-ledger.md
open-threads.md
selected-module.md
```

Expanded setup:

```text
chatgpt-project-instructions.md
ustf-runtime-quickstart.md
ustf-minimal-core-pack.md
campaign-state-pack-standard.md
USTF_v3.0_runtime_pack.md
current-state.md
actor-registry.md
organization-state.md
knowledge-ledger.md
open-threads.md
session-delta-template.md
```

---

## Runtime Pack Maintenance

The runtime pack should be regenerated when:

- Core invariants change
- Public API changes
- Runtime load order changes
- Memory policy changes
- Session Delta format changes
- Campaign state pack standard changes

It should not be hand-edited into a separate fork.
