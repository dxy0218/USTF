# ADR-0013 — Character Is an Actor Subtype

**Status:** Accepted  
**Date:** v3.0 Draft Phase  
**Related Files:** `core/18-character-layer.md`, `core/04-actor-model.md`

## Context

Traditional TTRPG systems often place characters at the center of the rule architecture.

USTF is not character-centered.

USTF simulates persistent worlds through Actors.

Characters are important, but so are organizations, states, factions, markets, armies, crises, and hidden forces.

## Decision

USTF treats Character as an Actor subtype.

A Character inherits the Actor interface and adds individual-scale fields only when needed.

The Core will not require fixed universal character attributes such as Strength, Dexterity, Class, Sanity, or Level.

These may exist in modules.

## Consequences

This keeps USTF compatible across modern, medieval, corporate, espionage, horror, space, military, cyberpunk, and future modules.

It reduces traditional RPG character-sheet dependency.

It ensures that organizations and nonhuman entities remain first-class simulation entities.

Character-focused campaigns remain possible, but the engine does not make characters the default center of the world.
