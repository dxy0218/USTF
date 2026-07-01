# USTF Module — Horror / Occult

**File Path:** `modules/horror-occult/index.md`  
**Document Type:** Genre Module  
**Layer:** Module  
**Version:** v3.0.0-draft  
**Status:** Playtest  
**Core Dependency:** Actor Model, World State Model, Knowledge System, Investigation Layer, Conflict Layer  
**Summary:** This module adapts USTF for horror, occult investigation, cosmic mystery, secret cults, cursed sites, forbidden knowledge, psychological pressure, and unknown forces. It preserves Core's rule that unknown facts remain unknown until established by evidence or process.

---

## 1. Module Purpose

The Horror / Occult Module supports campaigns where the world contains forces that are hidden, poorly understood, psychologically destabilizing, socially disbelieved, or metaphysically dangerous.

It is suitable for:

- Occult conspiracy
- Supernatural investigation
- Cosmic horror
- Folk horror
- Cursed locations
- Secret cults
- Paranormal containment
- Archaeological mystery
- Forbidden research
- Psychological horror

The module MUST NOT assume that every strange event is supernatural. It only provides procedures for handling worlds where the supernatural, anomalous, or unknowable may exist.

---

## 2. Core Compatibility

This module extends Core with:

```text
Occult Exposure
Psychological Integrity
Anomalous Actors
Forbidden Knowledge
Contamination Risk
Ritual Procedure
Containment State
Belief Pressure
```

This module MUST NOT override:

```text
Knowledge State isolation
World State persistence
Evidence requirements
Actor logic
Time continuity
Investigation as world evidence
Resolution as World State Change
```

Supernatural forces, if present, MUST still be represented as Actors, Processes, Conditions, or State Changes.

---

## 3. Horror Is Not Plot Immunity

HOR-001: Horror elements MUST NOT exist only to produce atmosphere.

HOR-002: If an occult force changes the world, the affected World State field MUST be updated.

HOR-003: If an NPC or organization knows occult information, that knowledge MUST be tracked.

HOR-004: If a phenomenon is not yet explained, it SHOULD be marked as Unknown, not improvised into certainty.

HOR-005: The assistant MUST NOT reveal objective occult truth to an Actor unless that Actor has a valid Knowledge State path.

---

## 4. Horror Actor Types

The module adds optional Actor types:

```text
Cult
Occult Cell
Cursed Site
Anomalous Artifact
Possessing Entity
Contagious Idea
Nightmare Pattern
Forbidden Text
Ritual Process
Hidden Patron
Cosmic Force
Paranormal Containment Agency
```

A Horror Actor SHOULD define:

```text
Manifestation
Trigger Conditions
Known Effects
Unknown Effects
Propagation Method
Vulnerability
Containment Method
Attention Pattern
Evidence Trail
Human Agents
```

A cosmic or unknown force MAY have incomplete Actor fields. Missing fields MUST be marked Unknown.

---

## 5. Occult Knowledge

Occult knowledge is a high-risk subtype of Knowledge Asset.

It may provide:

```text
Interpretation capability
Ritual access
Entity recognition
Containment procedures
Historical context
Symbolic decoding
```

It may also impose:

```text
Psychological strain
Social isolation
Contamination
Attention from hostile Actors
Legal or institutional disbelief
False certainty
```

HOR-KNO-001: Occult Knowledge MUST record source, reliability, and contamination risk.

HOR-KNO-002: Forbidden Knowledge MAY be useful and harmful at the same time.

HOR-KNO-003: False occult explanations SHOULD be allowed when evidence is weak or contaminated.

---

## 6. Psychological Integrity

This module MAY use `Psychological Integrity` as a Resource or State field.

It represents:

```text
Stability
Functional resilience
Trust in perception
Sleep quality
Social grounding
Resistance to obsession
```

It MUST NOT be treated as a universal sanity meter unless the campaign explicitly selects that implementation.

Recommended model:

```text
Stable
Stressed
Shaken
Compromised
Fragmented
Collapsed
```

Psychological harm SHOULD be tied to events, exposure, isolation, guilt, sleep loss, coercion, or impossible knowledge.

---

## 7. Occult Exposure

Occult Exposure tracks contact with anomalous forces.

Exposure sources include:

```text
Witnessing impossible events
Reading forbidden texts
Participating in rituals
Entering corrupted locations
Contacting entities
Dream intrusion
Symbolic infection
Possession attempts
```

Exposure may affect:

```text
Knowledge
Attention
Health
Sleep
Reputation
Relationships
Decision Logic
Future susceptibility
```

Exposure is not automatically damage. It can also unlock perception, access, or capability.

---

## 8. Rituals and Procedures

Rituals MUST be treated as procedural World State Change Requests.

A ritual SHOULD define:

```text
Intent
Required knowledge
Required materials
Location constraints
Timing constraints
Participants
Opposition
Failure modes
Side effects
Witnesses
World State target
```

HOR-RIT-001: Ritual success MUST NOT be reduced to a single roll unless the ritual is trivial.

HOR-RIT-002: Failed rituals SHOULD leave evidence, consequences, or contamination.

HOR-RIT-003: Ritual secrecy MUST follow Knowledge State rules.

---

## 9. Investigation in Horror

Horror investigation follows Core Investigation rules.

The key difference is that evidence may be:

```text
Fragmentary
Symbolic
Contaminated
Censored
Socially unbelievable
Psychologically damaging
Time-sensitive
Entity-manipulated
```

The assistant SHOULD distinguish:

```text
Objective Event
Physical Evidence
Witness Account
Occult Interpretation
False Theory
Actor Knowledge
```

Characters may discover evidence without understanding it.

---

## 10. Containment

Containment is a conflict against a dangerous Actor, process, site, artifact, or knowledge vector.

Containment states:

```text
Uncontained
Observed
Restricted
Partially Contained
Contained
Dormant
Breached
Neutralized
Unknown
```

Containment may require:

```text
Physical barriers
Information suppression
Ritual maintenance
Institutional secrecy
Witness management
Artifact isolation
Site control
Sacrifice of access or knowledge
```

Containment is persistent and MUST be tracked as World State.

---

## 11. Horror Attention

This module adds specialized Attention types:

```text
Entity Attention
Cult Attention
Institutional Attention
Public Panic
Media Sensationalism
Academic Interest
Religious Scrutiny
Dream Attention
```

Attention may be attracted by:

```text
Research
Ritual use
Symbol exposure
Investigation
Public discussion
Repeated dreams
Containment failures
Violence
Disappearance patterns
```

Attention can be useful, dangerous, or both.

---

## 12. Module Parameters

Before campaign start, define:

```text
Is the supernatural objectively real?
Can humans understand it?
Can humans control it?
Can evidence prove it publicly?
How common are occult Actors?
How lethal is exposure?
How reliable are rituals?
How strong is institutional disbelief?
What happens when truth becomes public?
```

These parameters MUST be stable unless changed through versioned campaign rules.

---

## 13. Common Failure Modes

Avoid:

```text
Making the occult omnipotent without constraints
Using insanity as arbitrary punishment
Giving cults impossible knowledge
Letting horror ignore time and logistics
Turning every mystery into a single correct clue chain
Treating Unknown as permission to invent contradictions
```

Corrective principle:

```text
The unknown may be vast, but every established effect must still leave a state trace.
```
