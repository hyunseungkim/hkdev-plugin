# Incident Report: {incident-title}

## Overview

| Item | Description |
|------|-------------|
| Incident ID | INC-{YYYYMMDD}-{NNN} |
| Title | {incident-title} |
| Severity | Critical / High / Medium / Low |
| Status | Open / Investigating / Resolved / Closed |
| Occurred At | {YYYY-MM-DD HH:MM} |
| Resolved At | {YYYY-MM-DD HH:MM} |
| Total Downtime | {Duration} |
| Owner | {Owner} |

---

## 1. Summary

{Incident summary - 1-2 sentences}

### Impact

| Item | Description |
|------|-------------|
| Affected Services | {Service list} |
| Affected Users | {Count} |
| Business Impact | {Impact description} |

---

## 2. Timeline

| Time | Event | Owner |
|------|-------|-------|
| {HH:MM} | First alert detected | Monitoring |
| {HH:MM} | Incident declared | {Owner} |
| {HH:MM} | {Action 1} | {Owner} |
| {HH:MM} | {Action 2} | {Owner} |
| {HH:MM} | Service recovery confirmed | {Owner} |
| {HH:MM} | Incident resolved | {Owner} |

---

## 3. Root Cause Analysis

### Direct Cause

{Direct cause of the incident}

### Root Cause

{Root cause - why did the direct cause occur}

### Contributing Factors

- {Contributing factor 1}
- {Contributing factor 2}

---

## 4. Response Details

### Detection

{How was the incident detected}

- Detection Method: {Method}
- Time to Detection: {Duration}

### Diagnosis

{Problem diagnosis process}

1. {Diagnosis step 1}
2. {Diagnosis step 2}

### Resolution

{Resolution actions}

1. {Resolution step 1}
   ```bash
   {Command executed}
   ```

2. {Resolution step 2}

### Verification

{Service recovery verification method}

---

## 5. Impact Analysis

### Service Impact

| Service | Impact Duration | Impact Level |
|---------|-----------------|--------------|
| {Service 1} | {Duration} | Complete Outage / Partial Degradation |
| {Service 2} | {Duration} | Complete Outage / Partial Degradation |

### Metrics

| Metric | Normal | During Incident |
|--------|--------|-----------------|
| Response Time | {Value} | {Value} |
| Error Rate | {Value} | {Value} |
| Availability | {Value} | {Value} |

---

## 6. Prevention Measures

### Short-term Actions (1-2 weeks)

| Action | Owner | Deadline | Status |
|--------|-------|----------|--------|
| {Action 1} | {Owner} | {Deadline} | ⬜ |
| {Action 2} | {Owner} | {Deadline} | ⬜ |

### Long-term Actions (1-3 months)

| Action | Owner | Deadline | Status |
|--------|-------|----------|--------|
| {Action 1} | {Owner} | {Deadline} | ⬜ |

---

## 7. Lessons Learned

### What Went Well

- {What went well 1}
- {What went well 2}

### Areas for Improvement

- {Area for improvement 1}
- {Area for improvement 2}

### Process Improvements

- {Process improvement}

---

## 8. References

- [Related Runbook](../runbooks/)
- [Related Playbook](../playbooks/)
- [Monitoring Dashboard]({Link})

---

## Change History

| Date | Changes | Author |
|------|---------|--------|
| {Date} | Initial creation | {Author} |
| {Date} | Added prevention measures | {Author} |
