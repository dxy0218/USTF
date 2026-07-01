# ADR-0005 — Conflict Is Not Combat

**Status:** Accepted  
**Date:** v3.0.0-draft  
**Related Files:** `core/11-conflict-layer.md`

## Context

Many RPG systems place combat at the center of rules design. USTF must support campaigns focused on corporations, politics, espionage, law, economics, diplomacy, investigation, war, and long-term organizational conflict. A combat-first architecture would distort the system.

## Decision

USTF Core will define conflict broadly as incompatible Actor goals under constraints.

Combat is a possible module-level or sub-procedure expression of conflict, not the default form.

The same Core framework must support:

```text
Gunfight
Lawsuit
Election
Contract negotiation
Boardroom coup
Intelligence operation
Trade war
Succession crisis
Religious schism
Military campaign
```

## Consequences

Benefits:

- Cross-genre compatibility
- Better support for strategic campaigns
- Avoids combat-centered design bias
- Allows organizations to participate in conflict naturally
- Makes nonviolent stakes mechanically meaningful

Costs:

- Requires modules for tactical combat details
- Players familiar with combat-first systems may need onboarding
- Conflict tracking must remain concise to avoid overhead

## Compatibility

All future tactical systems must implement the Conflict interface rather than bypass it.
