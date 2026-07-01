# USTF Template — Knowledge Ledger

**File Path:** `templates/knowledge-ledger-template.md`  
**Document Type:** Template  
**Layer:** Campaign Operations / Knowledge System  
**Version:** v3.0.0-draft  
**Status:** Stable Draft  
**Purpose:** Track who knows what, when they learned it, how reliable it is, and whether it may be used for action.

---

# Knowledge Ledger

## 1. Metadata

```text
Campaign:
USTF Version:
Last Updated:
Status: Active / Needs Review / Archived
```

---

## 2. Ledger Rule

No Actor may act on information absent from its Knowledge State.

If a fact is not recorded here or in an approved Actor file, it should be treated as Unknown for that Actor.

---

## 3. Knowledge Entry Format

```text
Knowledge ID:
Content:
Objective Truth Link:
Holder Actor:
Holder Type: Individual / Organization / Faction / Public / Unknown
Source:
Time Acquired:
Method Acquired:
Reliability: Confirmed / Likely / Rumor / False / Unknown
Confidence: High / Medium / Low / Unknown
Classification: Public / Private / Confidential / Secret / Compartmentalized / Unknown
Transferability: Free / Limited / Forbidden / Dangerous / Unknown
Who Else Knows:
Who Does Not Know:
Misinterpretation Risk:
Actionable: Yes / No / Conditional
Notes:
```

---

## 4. Active Knowledge Entries

### KNO-0001

```text
Content:
Objective Truth Link:
Holder Actor:
Holder Type:
Source:
Time Acquired:
Method Acquired:
Reliability:
Confidence:
Classification:
Transferability:
Who Else Knows:
Who Does Not Know:
Misinterpretation Risk:
Actionable:
Notes:
```

---

## 5. Public Knowledge

Public knowledge is information widely available to relevant society or scene participants.

```text
- Public Fact ID:
  Content:
  Scope: Local / Regional / National / Global / Factional / Other
  Reliability:
  Start Time:
  Notes:
```

---

## 6. Compartmentalized Knowledge

Compartmentalized knowledge is limited by role, clearance, secrecy, faction, geography, or relationship.

```text
- Compartment ID:
  Content:
  Holders:
  Excluded Actors:
  Leakage Risk:
  Consequence If Revealed:
```

---

## 7. False or Contaminated Knowledge

False knowledge should be tracked because Actors may still act on it.

```text
- False Knowledge ID:
  Believed Content:
  Holder:
  Actual Truth If Known:
  Source of Error:
  Confidence:
  Likely Consequences:
```

---

## 8. Unknowns

Unknowns are preserved rather than invented.

```text
- Unknown ID:
  Question:
  Affected Actors:
  Why Unknown:
  How It Could Become Known:
  Current Impact:
```

---

## 9. Review Flags

```text
- Review ID:
  Issue:
  Affected Knowledge Entries:
  Reason for Review:
  Provisional Handling:
```
