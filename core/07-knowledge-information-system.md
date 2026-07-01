# USTF Core Specification — 07 Knowledge & Information System

**File Path:** `core/07-knowledge-information-system.md`  
**Document Type:** Core Specification  
**Layer:** Core  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Priority:** Core Specification  

## Summary

- Knowledge State is separate from World State.
- Actors may act only on information they possess or can reasonably infer.
- Information has source, reliability, timing, transferability, and interpretation.
- Unknown is a valid and preferred state when facts are not established.
- Knowledge management is mandatory for long-form USTF play.

---

## 1. Definition

**KNO-001:** Knowledge State is the set of information available to an Actor at a specific time.

Knowledge State includes:

```text
Facts known
Beliefs held
Rumors heard
Secrets possessed
False assumptions
Classified information
Inferences
Suspicions
Ignorance
```

**KNO-002:** Knowledge State MUST be separated from objective World State.

---

## 2. Need To Know Principle

**KNO-003:** No Actor may act on information absent from its Knowledge State.

Actors may act on:

```text
Known facts
Reasonable inferences
Orders received
Rumors believed
False information believed true
Institutional procedures
Habitual assumptions
```

Actors MUST NOT act on:

```text
Player-only knowledge
Assistant-only knowledge
Archive-only information not accessible to them
Future events
Secrets they have not learned
Hidden state without access
```

---

## 3. Knowledge Entry Minimum Fields

Every significant knowledge entry SHOULD include:

```yaml
KnowledgeID:
Content:
Holder:
Source:
TimeAcquired:
Reliability:
Confidence:
Transferability:
Classification:
Interpretation:
Status:
LastUpdated:
```

**KNO-004:** For major secrets, investigations, conspiracies, contracts, betrayals, or hidden threats, Knowledge Entries SHOULD be explicit.

---

## 4. Knowledge Holder

A Holder may be:

```text
Individual Actor
Organization Actor
Faction inside organization
Public
Rumor network
Archive
Unknown holder
```

**KNO-005:** Organizational knowledge MUST distinguish between institution-level access and individual awareness where relevant.

Example:

```text
A file exists in an agency archive.
Only two analysts have read it.
The director has not been briefed.
The field team does not know it exists.
```

---

## 5. Source

Knowledge should have a source.

Source types:

```text
Direct observation
Document
Witness
Report
Interrogation
Rumor
Sensor
Divination
Inference
Memory
Archive
Order
Media
Market signal
```

**KNO-006:** Source affects reliability and transferability.

Example:

```text
A notarized contract is more transferable than a private hunch.
A battlefield observation may be accurate but local.
A rumor may spread widely but be unreliable.
```

---

## 6. Reliability and Confidence

Reliability describes the information's objective accuracy.

Confidence describes the Holder's belief in it.

Recommended values:

```text
Reliability:
  True
  MostlyTrue
  Partial
  Misleading
  False
  Unknown

Confidence:
  Certain
  High
  Medium
  Low
  Suspicious
  Unknown
```

**KNO-007:** Reliability and Confidence SHOULD NOT be conflated.

Example:

```text
An Actor may be highly confident in false information.
An Actor may doubt true information.
```

---

## 7. Transferability

Transferability describes whether knowledge can be shared.

Recommended values:

```text
FreelyShareable
ShareableWithRisk
Classified
PersonalSecret
NonVerbal
HardToExplain
RequiresProof
BoundByOath
Compartmentalized
Untransferable
```

**KNO-008:** Sharing information SHOULD require a plausible channel, time, and willingness.

---

## 8. Classification

Classification describes access limitation.

Suggested values:

```text
Public
Private
Internal
Confidential
Secret
TopSecret
NeedToKnow
OccultHidden
UnknownClassification
```

**KNO-009:** Classification does not guarantee secrecy.

Classified information may leak.

Public information may remain unnoticed.

---

## 9. Interpretation

Actors may interpret information incorrectly.

Interpretation states:

```text
CorrectlyUnderstood
PartiallyUnderstood
Misunderstood
Overestimated
Underestimated
Ignored
Denied
Weaponized
```

**KNO-010:** The assistant SHOULD track misinterpretation when it may affect decisions.

Example:

```text
A noble interprets a diplomatic delay as insult.
A company interprets regulatory silence as approval.
An investigator interprets cult symbolism as ordinary vandalism.
```

---

## 10. Inference

Actors may infer information they do not directly know.

**KNO-011:** Inference MUST be grounded in available Knowledge State and Actor capability.

Valid inference example:

```text
A logistics officer sees fuel shipments stop and infers operational delay.
```

Invalid inference example:

```text
An NPC instantly knows a secret meeting occurred because the plot needs pressure.
```

---

## 11. Knowledge Propagation

Knowledge spreads through channels.

Channels include:

```text
Conversation
Documents
Radio
Letters
Media
Leaks
Markets
Battlefield observation
Spy networks
Religious confession
Academic publication
Dreams or visions, if module permits
```

Propagation fields:

```yaml
From:
To:
Channel:
SentAt:
ReceivedAt:
DistortionRisk:
InterceptionRisk:
ProofAttached:
```

**KNO-012:** Knowledge propagation requires time and channel unless a module explicitly defines otherwise.

---

## 12. Information Decay

Knowledge may become outdated.

Decay causes:

```text
Time passes
Situation changes
Source dies
Documents become obsolete
Rumors mutate
Technology changes
Political conditions shift
Memory becomes unreliable
```

**KNO-013:** The assistant SHOULD review knowledge validity after major time advancement.

---

## 13. Information Pollution

Information may be polluted.

Pollution types:

```text
Disinformation
Misinformation
Forgery
Propaganda
False flag
Misleading omission
Corrupted archive
Hostile interpretation
Supernatural distortion
```

**KNO-014:** Polluted information MAY be treated as Knowledge State if an Actor believes or uses it.

False information can produce real consequences.

---

## 14. Secrets

A Secret is knowledge intentionally restricted.

Secret fields:

```yaml
SecretID:
Content:
TrueState:
KnownBy:
SuspectedBy:
ProtectedBy:
ExposureRisk:
ConsequenceIfRevealed:
```

**KNO-015:** Secrets SHOULD have exposure risk if active in play.

A secret with no possible exposure is usually archive detail, not active state.

---

## 15. Public Knowledge

Public Knowledge is available to broad groups but not necessarily noticed.

**KNO-016:** Public availability does not imply every Actor knows it.

Example:

```text
A court filing is public.
Most villagers have never read it.
A journalist may find it.
A spy agency may index it.
```

---

## 16. Knowledge Ledger

Long campaigns SHOULD maintain a Knowledge Ledger.

The ledger tracks important information distribution.

Minimum structure:

```yaml
KnowledgeID:
Content:
ObjectiveTruth:
KnownBy:
NotKnownBy:
Source:
TimeAcquired:
Reliability:
ConfidenceByHolder:
Transferability:
Consequences:
LastUpdated:
```

**KNO-017:** Knowledge Ledger is mandatory for campaigns involving secrets, investigation, espionage, politics, horror, military operations, or organizational management.

---

## 17. Unknown

**KNO-018:** Unknown is a valid Knowledge value.

The assistant MUST use Unknown when:

```text
The fact is not established.
The Actor has no access.
The source is unreliable.
The archive is missing.
The timeline is contradictory.
The player has not investigated.
```

Unknown is preferable to invented certainty.

---

## 18. Runtime Requirements

Before an Actor acts on information, the assistant SHOULD check:

```text
Does this Actor know this?
How did they learn it?
When did they learn it?
Do they believe it?
Is it accurate?
Can they share it?
Could they infer it?
Is it outdated?
```

If the answer is unclear, mark as Unknown or require investigation.

---

## 19. Non-Binding Example

```yaml
KnowledgeID: KNO-FSS-Zeta-Existence-001
Content: Zeta-related internal context exists.
ObjectiveTruth: True within campaign state.
KnownBy:
  - Francis
NotKnownBy:
  - Canadian mining company
  - General FSS staff
  - External legal counsel unless explicitly briefed
Source: Prior internal campaign events
TimeAcquired: Before current contract negotiation
Reliability: True
ConfidenceByHolder:
  Francis: High
Transferability: Classified / NeedToKnow
Consequences:
  - Must not leak into Canadian contract negotiation unless disclosed.
  - NPCs cannot act on Zeta information without acquisition path.
Status: Active
```

This example is illustrative and non-binding.
