# ADR-0014 — Source-First, Book-Ready Architecture

**Status:** Accepted  
**Date:** v3.0 Draft Phase  
**Related Files:** `book/book-build-plan.md`, `book/github-release-structure.md`

## Context

USTF has two major deployment targets:

1. ChatGPT Project runtime files for long campaign execution.
2. Public-facing rulebooks or GitHub documentation for human users.

Maintaining separate rule texts would create drift.

## Decision

USTF will use a source-first, book-ready architecture.

The modular Markdown repository is canonical.

Runtime Packs, public rulebooks, PDFs, websites, and module guides are build products.

## Consequences

Rules should be written in small, structured files.

Public-facing books can expand explanation but must not alter rule meaning.

Corrections must be made in source files before rebuilding publication artifacts.

This supports both LLM execution and public GitHub release without maintaining divergent systems.
