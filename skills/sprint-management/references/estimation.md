# Sprint Workload Estimation

## Task Size Definition

| Size | Code | Time | Suitable Tasks |
|------|------|------|------------|
| XS | Extra Small | 30min | Configuration changes, typo fixes |
| S | Small | 1-2 hours | Single function, simple API |
| M | Medium | 2-4 hours | Component, service class |
| L | Large | 4-8 hours | Complex feature, integration work |
| XL | Extra Large | 8+ hours | **Needs decomposition** |

---

## Sprint Workload Estimation

```
Sprint Workload = Sum (Estimated time per Task)

Example:
- XS x 3 = 1.5 hours
- S x 5 = 7.5 hours
- M x 4 = 14 hours
- L x 1 = 6 hours
────────────────────
Total: 29 hours

✅ Appropriate range (20-40 hours)
```

---

## Recommended Sprint Size

| Size | Task Count | Workload | Suitable For |
|------|---------|--------|------------|
| Small | 3-5 | 10-20 hours | Short cycles, maintenance |
| **Standard** | **5-15** | **20-40 hours** | **Recommended** |
| Large | 15-20 | 40-60 hours | Intensive development periods |

---

## Priority Matrix

```
                Importance
            High     Low
        ┌─────────┬─────────┐
 High   │   P0    │   P1    │
Urgency │ Immediate│ Planned │
        ├─────────┼─────────┤
 Low    │   P2    │   P3    │
        │ Scheduled│ Backlog │
        └─────────┴─────────┘
```

| Priority | Description | Action |
|----------|------|------|
| P0 | Blocker, immediate resolution needed | Top priority in current Sprint |
| P1 | Important, within planned schedule | Include in current Sprint |
| P2 | Schedule adjustable | Can be next Sprint |
| P3 | Backlog | Proceed when available |

---

## Improving Estimation Accuracy

### Utilizing Historical Data

```markdown
## Estimate vs Actual Comparison

| Sprint | Estimate | Actual | Variance |
|--------|------|------|--------|
| p1-s1 | 30h | 35h | +17% |
| p1-s2 | 25h | 28h | +12% |
| p1-s3 | 32h | 30h | -6% |

Average variance: +7.7%
→ Add 10% buffer to next Sprint estimate
```

### Uncertainty Buffer

| Uncertainty | Buffer | When to Apply |
|----------|------|----------|
| Low | +10% | Familiar technology |
| Medium | +25% | New technology introduction |
| High | +50% | Unknown territory |
