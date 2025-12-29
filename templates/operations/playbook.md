# Playbook: {scenario-name}

## Overview

| Item | Description |
|------|-------------|
| Scenario | {scenario-name} |
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |
| Owner Team | {team-name} |

---

## 1. Purpose

{Purpose of this Playbook and applicable scenarios}

---

## 2. Scope

### Applicable Conditions

- {Condition 1}
- {Condition 2}

### Exclusions

- {Exclusion 1}

---

## 3. Scenario Flow

```
┌─────────────────────────────────────────────────────────┐
│                  Verify Start Conditions                 │
└─────────────────────────────────────────────────────────┘
                          │
                          ▼
              ┌───────────────────────┐
              │ Situation A?          │
              └───────────────────────┘
                    │         │
              Yes   │         │ No
                    ▼         ▼
            ┌───────────┐  ┌───────────┐
            │ Runbook A │  │ Situation B? │
            └───────────┘  └───────────┘
                    │         │         │
                    │   Yes   │         │ No
                    │         ▼         ▼
                    │  ┌───────────┐  ┌───────────┐
                    │  │ Runbook B │  │ Runbook C │
                    │  └───────────┘  └───────────┘
                    │         │             │
                    └─────────┼─────────────┘
                              ▼
              ┌───────────────────────┐
              │  Verification & Done   │
              └───────────────────────┘
```

---

## 4. Decision Criteria

### Decision Point 1: {decision-point}

| Condition | Criteria | Next Step |
|-----------|----------|-----------|
| Condition A | {Criteria} | Execute Runbook A |
| Condition B | {Criteria} | Execute Runbook B |
| Other | - | Execute Runbook C |

---

### Decision Point 2: {decision-point}

| Condition | Criteria | Next Step |
|-----------|----------|-----------|
| {Condition} | {Criteria} | {Step} |

---

## 5. Related Runbooks

| Runbook | Purpose | Execution Condition |
|---------|---------|---------------------|
| [Runbook A](./runbook-a.md) | {Purpose} | {Condition} |
| [Runbook B](./runbook-b.md) | {Purpose} | {Condition} |
| [Runbook C](./runbook-c.md) | {Purpose} | {Condition} |

---

## 6. Execution Procedure

### Phase 1: Situation Assessment

1. **Check Current Status**
   - {Check item 1}
   - {Check item 2}

2. **Determine Impact Scope**
   - {Assessment item 1}

3. **Decision Making**
   - Refer to Decision Point 1

### Phase 2: Response

1. **Execute Appropriate Runbook**
   - Refer to selected Runbook

2. **Record Progress**
   - {Record item}

### Phase 3: Verification & Completion

1. **Verify Results**
   - {Verification item}

2. **Follow-up Actions**
   - {Follow-up action}

---

## 7. Communication

### Notification Recipients

| Situation | Recipients | Channel |
|-----------|------------|---------|
| Start | {Recipients} | {Channel} |
| Completion | {Recipients} | {Channel} |
| Escalation | {Recipients} | {Channel} |

### Templates

**Start Notification:**
```
[{Scenario}] Response Started
- Situation: {Situation}
- Owner: {Owner}
- Estimated Duration: {Duration}
```

---

## 8. Escalation

| Condition | Escalation Target | Time Limit |
|-----------|-------------------|------------|
| {Condition 1} | {Target} | {Time} |
| {Condition 2} | {Target} | {Time} |

---

## 9. References

- [Runbook List](../runbooks/)
- [Incident Report Template](./incident-report.md)

---

## Change History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | {Date} | Initial creation | {Author} |
