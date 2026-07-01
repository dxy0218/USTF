# USTF v3.0 — Investigation Layer

**File Path:** `core/12-investigation-layer.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  
**Depends On:** Actor Model, World State Model, Knowledge System, Resolution System, Conflict Layer

## Summary

The Investigation Layer defines how facts, evidence, inquiry, uncertainty, interpretation, concealment, and discovery operate in USTF. Investigation is not a plot gate. Investigation is the structured process by which Actors attempt to update their Knowledge State about an Objective World State.

---

## INV-000: Design Principle

Investigation in USTF does not exist to reveal a predetermined story.

Investigation exists to connect three layers:

```text
Objective World State
Evidence State
Knowledge State
```

The truth may exist even if no Actor discovers it.

Evidence may exist even if it is misunderstood.

An Actor may reach a false conclusion and still act on it.

---

## INV-001: Investigation Trigger

The Investigation Layer SHOULD be used when an Actor attempts to learn, verify, infer, expose, conceal, reconstruct, or interpret information about:

- Past events
- Hidden Actors
- Unknown motives
- Secret projects
- Crimes
- Conspiracies
- Financial conditions
- Legal exposure
- Military dispositions
- Political alignments
- Supernatural or anomalous phenomena
- Market or social trends
- Operational risks

Routine perception MAY be handled without formal investigation if it does not affect durable state or significant decisions.

---

## INV-002: Investigation Is a World State Change Request

An investigative action is a request to change an Actor's Knowledge State.

```text
Actor attempts to convert Unknown, Suspected, or False Knowledge into more reliable Knowledge.
```

The target state change SHOULD be expressed as:

```text
Current Knowledge State → Desired Knowledge State
```

Examples:

```text
Unknown supplier ownership → Identified beneficial owner
Rumored coup plot → Corroborated political conspiracy
Unverified witness statement → Reliable timeline segment
Missing accounting record → Reconstructed financial trail
```

---

## INV-003: Core Fact vs Evidence vs Interpretation

USTF MUST distinguish:

```text
Core Fact: What is objectively true in the world.
Evidence: A trace, document, witness, pattern, signal, object, or testimony produced by or related to the fact.
Interpretation: What an Actor believes the evidence means.
```

An Actor may possess evidence without understanding it.

An Actor may understand part of the truth from incomplete evidence.

An Actor may form a false interpretation from real evidence.

---

## INV-004: Evidence Properties

Every significant Evidence item SHOULD record:

```text
Evidence ID
Related Fact or Unknown Fact
Physical / Digital / Social / Testimonial / Financial / Institutional / Anomalous Form
Location or Holder
Creation Time
Discovery Time
Source
Reliability
Completeness
Tamper Risk
Chain of Custody
Accessibility
Required Capability
Risk of Acquisition
Knowledge Produced
```

Evidence MUST NOT automatically become Knowledge for all Actors.

Evidence becomes Knowledge only when an Actor obtains, perceives, analyzes, or receives it through a valid process.

---

## INV-005: Reliability Ratings

Evidence reliability SHOULD use a small, runtime-friendly scale:

```text
Confirmed
Strong
Moderate
Weak
False
Compromised
Unknown
```

Reliability is not the same as truth.

A truthful witness may be unreliable.

A forged document may contain true information.

A weak signal may point to a real hidden structure.

---

## INV-006: Investigation Inputs

An investigative resolution SHOULD identify:

```text
Investigating Actor
Question Asked
Existing Knowledge
Available Leads
Method
Access
Capability
Resources
Time Available
Opposition or Concealment
Risk Exposure
Desired Knowledge Update
```

If the question is vague, the assistant SHOULD convert it into one or more answerable investigation questions.

Example:

```text
Vague: Find out what is going on with the company.
Structured:
- Who owns the company?
- What are its active contracts?
- What legal risks are visible?
- Who benefits from the transaction?
```

---

## INV-007: Investigation Methods

Common investigation methods include:

```text
Interview
Observation
Surveillance
Document Review
Financial Audit
Technical Analysis
Forensic Analysis
Open Source Research
Human Intelligence
Signals Intelligence
Legal Discovery
Social Mapping
Market Research
Historical Research
Occult / Anomalous Inquiry
```

Genre Modules MAY add methods.

Modules MUST NOT bypass Knowledge State rules.

---

## INV-008: Access Before Discovery

An Actor generally cannot discover evidence without access.

Access may be:

```text
Physical Access
Social Access
Legal Access
Technical Access
Institutional Access
Financial Access
Cultural Access
Temporal Access
Supernatural Access
```

Lack of access does not mean the fact does not exist.

It means the Actor cannot currently interact with relevant evidence through the declared method.

---

## INV-009: Core Leads

USTF does not use mandatory plot keys.

However, if a fact would naturally leave multiple traces, the assistant SHOULD model multiple possible leads.

A lead is not a guarantee.

A lead is an available route toward evidence or knowledge.

```text
Fact → Evidence → Lead → Investigative Action → Knowledge Update
```

If the players miss a lead, the world continues.

The hidden Actor may act.

The crisis may progress.

The opportunity may expire.

---

## INV-010: Failed Investigation

Failure in investigation SHOULD NOT mean “nothing happens” by default.

Possible outcomes include:

```text
No new knowledge
Partial knowledge
False confidence
Misleading interpretation
Exposure to opposition
Loss of time
Resource cost
Evidence contamination
Target alerted
New unrelated clue found
Investigator compromised
```

A failed investigation may still produce useful but incomplete information.

---

## INV-011: Concealment and Counter-Investigation

Concealment is an Actor action.

Counter-investigation may include:

```text
Destroying evidence
Creating false evidence
Compartmentalizing knowledge
Threatening witnesses
Legal obstruction
Encryption
Cover stories
Disinformation
Moving assets
Killing or recruiting investigators
Bureaucratic delay
Reputation attack
```

Concealment MUST obey Actor resources, capabilities, knowledge, and time constraints.

A hidden Actor cannot conceal a leak it does not know exists.

---

## INV-012: Knowledge Contamination

Investigation may contaminate Knowledge State.

Knowledge contamination occurs when an Actor receives information that is:

```text
False
Partially true
Outdated
Misinterpreted
Deliberately planted
Emotionally distorted
Politically filtered
Technically corrupted
Supernaturally distorted
```

Contaminated knowledge SHOULD be recorded rather than silently corrected.

Actors may act on contaminated knowledge.

Those actions create real consequences.

---

## INV-013: Investigation Time Scale

Investigations may occur at different scales:

```text
Immediate: seconds to minutes
Scene: minutes to hours
Operational: hours to days
Strategic: weeks to months
Historical: months to years
```

The assistant MUST advance relevant time.

Other Actors may act during long investigations.

---

## INV-014: Investigation and Conflict

Investigation may be a form of Conflict when:

- Another Actor is actively hiding information
- Multiple Actors race to discover the same truth
- Discovery creates legal, political, military, or social stakes
- Evidence control matters
- Public interpretation is contested

In such cases, use the Conflict Layer together with this Investigation Layer.

---

## INV-015: Investigation Output

An investigation SHOULD produce one or more of the following:

```text
Knowledge Entry
Evidence Entry
Lead Entry
Actor State Change
World State Change
Risk Change
Attention Change
Open Thread
Closed Thread
Contradiction Flag
```

The output MUST specify who knows the result.

The output MUST NOT globally reveal the result unless the result has actually become public.

---

## INV-016: Investigation Case File

Significant investigations SHOULD maintain a Case File.

A Case File tracks:

```text
Primary Question
Known Facts
Suspected Facts
Evidence
Leads
False Leads
Actors Involved
Opposition
Timeline
Knowledge Holders
Open Questions
Next Possible Actions
```

Case Files are active state, not archive, while unresolved.

---

## INV-017: Public Revelation

Discovery and public revelation are separate.

An Actor may know a fact privately.

Another Actor may suspect it.

The public may remain unaware.

Public revelation requires a communication event, publication, leak, trial, broadcast, rumor cascade, official statement, or other valid process.

Public revelation may trigger:

```text
Attention
Legitimacy shifts
Legal exposure
Market reaction
Faction realignment
Violence
Cover-up escalation
```

---

## INV-018: Unknown Preservation

If a fact has not been established, the assistant SHOULD mark it as Unknown.

If a fact exists but has not been discovered, it remains hidden.

If a fact is impossible to determine from available evidence, the assistant MUST NOT invent certainty.

---

## Runtime Summary

```text
Investigation changes Knowledge State, not objective truth.
Facts exist independently.
Evidence connects facts to possible discovery.
Interpretation may be wrong.
Failed investigation still changes time, risk, and sometimes knowledge.
Public revelation is separate from private discovery.
```
