# SLA/SLO Definition: {service-name}

## Overview

| Item | Description |
|------|-------------|
| Service | {service-name} |
| Version | 1.0 |
| Validity Period | {start-date} ~ {end-date} |
| Last Modified | {YYYY-MM-DD} |
| Owner Team | {team-name} |

---

## 1. Service Overview

{Service description}

### Service Scope

- {Scope 1}
- {Scope 2}

### Exclusions

- {Exclusion 1}
- {Exclusion 2}

---

## 2. SLO (Service Level Objectives)

### 2.1 Availability

| Metric | Target | Measurement Period |
|--------|--------|-------------------|
| Availability | 99.9% | Monthly |
| Allowed Downtime | 43.8 min/month | Monthly |

**Calculation Method:**
```
Availability = (Total Time - Downtime) / Total Time × 100
```

**Exclusions:**
- Scheduled maintenance
- External factors (infrastructure provider outages, etc.)

---

### 2.2 Latency

| Metric | Target | Measurement Period |
|--------|--------|-------------------|
| p50 Response Time | < 100ms | Daily |
| p95 Response Time | < 500ms | Daily |
| p99 Response Time | < 1000ms | Daily |

**Measurement Location:** {Measurement location}

---

### 2.3 Throughput

| Metric | Target | Measurement Period |
|--------|--------|-------------------|
| Maximum TPS | {X} TPS | - |
| Average TPS | {X} TPS | Daily |

---

### 2.4 Error Rate

| Metric | Target | Measurement Period |
|--------|--------|-------------------|
| Error Rate | < 0.1% | Daily |

**Error Definition:**
- 5xx responses
- Timeouts

---

## 3. SLI (Service Level Indicators)

| SLI | Data Source | Measurement Method |
|-----|-------------|-------------------|
| Availability | {Source} | {Method} |
| Response Time | {Source} | {Method} |
| Error Rate | {Source} | {Method} |

---

## 4. SLA (Service Level Agreement)

### 4.1 Service Tiers

| Tier | Availability | Response Time (p95) |
|------|--------------|---------------------|
| Platinum | 99.99% | < 200ms |
| Gold | 99.9% | < 500ms |
| Silver | 99.5% | < 1000ms |

### 4.2 Compensation Policy

| Availability | Service Credit |
|--------------|----------------|
| < 99.9% | 10% |
| < 99.5% | 25% |
| < 99.0% | 50% |

---

## 5. Error Budget

### Monthly Error Budget

| Target Availability | Monthly Allowed Downtime | Daily Allowed Downtime |
|---------------------|-------------------------|------------------------|
| 99.9% | 43.8 min | 1.44 min |
| 99.95% | 21.9 min | 0.72 min |
| 99.99% | 4.38 min | 0.14 min |

### Current Error Budget Usage

```
This Month's Error Budget: 43.8 min
Usage: {X} min
Remaining Budget: {Y} min
[████████░░░░░░░░░░░░] {Z}% used
```

---

## 6. Monitoring

### Dashboards

| Dashboard | Link |
|-----------|------|
| Real-time Monitoring | {Link} |
| SLO Dashboard | {Link} |

### Alert Configuration

| Condition | Alert Recipients | Severity |
|-----------|------------------|----------|
| Availability < 99.9% | {Recipients} | Critical |
| p95 > 500ms | {Recipients} | Warning |
| Error Rate > 0.1% | {Recipients} | Warning |

---

## 7. Review Schedule

| Review Type | Frequency | Attendees |
|-------------|-----------|-----------|
| SLO Achievement Review | Weekly | {Attendees} |
| SLA Review | Monthly | {Attendees} |
| SLO Redefinition | Quarterly | {Attendees} |

---

## 8. References

- [Monitoring Guide](../guides/operations/02-monitoring.md)
- [Incident Report Template](./incident-report.md)
