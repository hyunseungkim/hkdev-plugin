# ADR (Architecture Decision Record) Template

> Template for recording architecture decisions

---

## ADR Template

```markdown
---
title: ADR-{NNN} {Title}
status: proposed | accepted | deprecated | superseded
date: {YYYY-MM-DD}
deciders: {Decider list}
---

# ADR-{NNN}: {Title}

## Status

{proposed | accepted | deprecated | superseded by ADR-XXX}

## Date

{YYYY-MM-DD}

---

## Context

{Explain the background and situation requiring this decision.}

- Current situation
- Problems
- Constraints
- Requirements

---

## Considered Options

### Option 1: {Option Name}

**Description:**
{Option description}

**Pros:**
- {Pro 1}
- {Pro 2}

**Cons:**
- {Con 1}
- {Con 2}

### Option 2: {Option Name}

**Description:**
{Option description}

**Pros:**
- {Pro 1}

**Cons:**
- {Con 1}

---

## Decision

{Clearly explain the chosen decision and its rationale.}

**Chosen Option:** Option {N}

**Decision Rationale:**
- {Reason 1}
- {Reason 2}

---

## Consequences

### Positive Consequences

- {Positive consequence 1}
- {Positive consequence 2}

### Negative Consequences

- {Negative consequence 1}
- {Negative consequence 2}

### Mitigation Strategies

- {How to mitigate negative consequences}

---

## References

- {Related document 1}
- {Related ADR}
- {External resources}

---

## Change History

| Date | Changes | Author |
|------|----------|--------|
| {Date} | Initial creation | {Author} |
```

---

## ADR Status Definitions

| Status | Description |
|------|------|
| **proposed** | Proposal under review |
| **accepted** | Approved and in effect |
| **deprecated** | No longer recommended |
| **superseded** | Replaced by new ADR |

---

## ADR Writing Guide

### When to write an ADR?

- Decisions affecting architecture
- Technology stack selection
- Design pattern adoption
- Development process changes
- Hard-to-reverse decisions

### Characteristics of good ADRs

1. **Clear context**: Why was this decision needed
2. **Sufficient option review**: Compare at least 2+ alternatives
3. **Evidence-based decision**: Why that option was chosen
4. **Expected outcomes**: Record both positive and negative outcomes

### ADR File Naming

```
docs/adr/
├── ADR-001-use-clean-architecture.md
├── ADR-002-select-postgresql-database.md
└── ADR-003-adopt-cqrs-pattern.md
```
