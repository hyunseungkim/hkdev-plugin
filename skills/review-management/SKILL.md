---
name: review-management
description: |
  This skill should be used when the user asks to "review sprint", "review phase",
  "create sprint review", "create phase review", "evaluate code quality",
  "identify technical debt", "generate review report", or needs guidance on
  Sprint/Phase review processes, evaluation criteria, and improvement recommendations.
---

# Review Management Skill

> Sprint and Phase review process guide

---

## Overview

Defines the review process performed upon Sprint and Phase completion. Pursues continuous quality improvement through code quality evaluation, technical debt identification, and improvement derivation.

---

## Review Types

| Type | Timing | Purpose | File Pattern |
|------|--------|---------|--------------|
| Sprint Review | Upon Sprint completion | Implementation quality evaluation, improvement derivation | `{sprint-id}-review.md` |
| Phase Review | Upon Phase completion | Comprehensive evaluation, next Phase preparation | `{phase}-summary.md` |

---

## Review Folder Structure

```
docs/project/reviews/
+-- README.md              # Review guidelines
+-- phase1/
|   +-- p1-s1-review.md   # Sprint review
|   +-- p1-s2-review.md
|   +-- phase1-summary.md # Phase comprehensive review
+-- phase2/
    +-- p2-s1-review.md
    +-- phase2-summary.md
```

---

## Sprint Review Process

### 1. Completed Task Evaluation

Check completion status of all Tasks in Sprint:

| Task | Title | Owner | Quality | Notes |
|------|-------|-------|---------|-------|
| TASK-XXX | Title | Agent | Grade | Remarks |

Quality grade: Stars (3 stars: Excellent, 2 stars: Good, 1 star: Average)

### 2. Code Quality Evaluation

**Architecture Evaluation:**

| Item | Grade | Notes |
|------|-------|-------|
| Clean Architecture Compliance | A-F | Layer separation status |
| Inter-layer Dependencies | A-F | Dependency inversion principle |
| Interface Segregation | A-F | Abstraction level |

**SOLID Principles Evaluation:**

| Principle | Grade | Notes |
|-----------|-------|-------|
| Single Responsibility | A-F | Single responsibility |
| Open/Closed | A-F | Extensibility |
| Liskov Substitution | A-F | Substitutability |
| Interface Segregation | A-F | Interface separation |
| Dependency Inversion | A-F | Dependency inversion |

**Coding Convention Evaluation:**

| Item | Grade | Notes |
|------|-------|-------|
| Naming Rules | A-F | PascalCase/camelCase |
| Comment Quality | A-F | XML docs, inline |
| File Structure | A-F | Classes per file |

### 3. Test Status Evaluation

| Item | Value |
|------|-------|
| Test file count | N |
| Test case count | N |
| Pass rate | N% |
| Core logic coverage | ~N% |

Test area checklist:
- [ ] Core business logic
- [ ] Boundary value tests
- [ ] Exception handling
- [ ] Integration tests

### 4. Technical Debt Identification

Record technical debt items:

| ID | Area | Description | Priority |
|----|------|-------------|----------|
| TD-XXX | Area | Description | P0-P3 |

**Priority Criteria:**

| Priority | Description | Action Timing |
|----------|-------------|---------------|
| P0 | Immediate fix required (blocker) | Current Sprint |
| P1 | Fix in next Sprint | Next Sprint |
| P2 | Improvements Sprint | Improvement Sprint |
| P3 | Future consideration | Backlog |

### 5. Improvement Derivation

| ID | Description | Estimated Effort | Rationale |
|----|-------------|------------------|-----------|
| IMP-XXX | Improvement description | S/M/L | TD reference |

**Effort Criteria:**
- **S (Small)**: 30min-2hours
- **M (Medium)**: 2-4hours
- **L (Large)**: 4-8hours

### 6. Overall Grade Calculation

| Area | Grade | Score |
|------|-------|-------|
| Architecture | A-F | 0-100 |
| Code Quality | A-F | 0-100 |
| SOLID Principles | A-F | 0-100 |
| Coding Conventions | A-F | 0-100 |
| Testing | A-F | 0-100 |
| Security | A-F | 0-100 |
| **Overall** | **A-F** | **Average** |

---

## Phase Review Process

### 1. Goal Achievement Status

Evaluate actual results against Phase goals:

| Goal | Status | Notes |
|------|--------|-------|
| Goal 1 | Yes/No | Completion status |

Achievement rate: N% (Completed/Total)

### 2. Sprint Summary

| Sprint | Tasks | Tests | Overall Grade |
|--------|-------|-------|---------------|
| p{N}-s{M} | N/N completed | N passed | A-F |

### 3. Overall Test Status

| Sprint | Test Count | Pass Rate |
|--------|------------|-----------|
| Total | N | N% |

### 4. Tech Stack Verification

| Technology | Version | Purpose | Evaluation |
|------------|---------|---------|------------|
| Tech name | Version | Purpose | Pass/Warning/Fail |

### 5. Architecture Evaluation

| Layer | Implementation Status | Evaluation |
|-------|----------------------|------------|
| Domain | Yes/No | A-F |
| Application | Yes/No | A-F |
| Infrastructure | Yes/No | A-F |
| Presentation | Yes/No | A-F |

### 6. Technical Debt Summary

Accumulated technical debt from all Sprints:

| Priority | Count |
|----------|-------|
| P0 | N |
| P1 | N |
| P2 | N |
| P3 | N |
| **Total** | **N** |

### 7. Improvements Sprint Candidates

**Required (P0-P1):** Items requiring immediate resolution
**Recommended (P2):** Quality improvement items
**Optional (P3):** Future consideration items

### 8. Next Phase Readiness

| Condition | Status | Notes |
|-----------|--------|-------|
| Prerequisite 1 | Yes/No | Status |
| Build success | Yes/No | Warning/error count |
| Tests passing | Yes/No | Pass rate |

---

## Evaluation Criteria

### Grade System

| Grade | Score Range | Criteria |
|-------|-------------|----------|
| A+ | 95-100 | Exemplary, no improvement needed |
| A | 90-94 | Excellent, minor improvements |
| A- | 85-89 | Good, slight improvements |
| B+ | 80-84 | Above average |
| B | 75-79 | Average |
| B- | 70-74 | Below average |
| C | 60-69 | Needs improvement |
| D | 50-59 | Insufficient, must improve |
| F | 0-49 | Critical, immediate action required |

### Evaluation Area Weights

| Area | Weight | Notes |
|------|--------|-------|
| Architecture | 20% | Structural quality |
| Code Quality | 20% | Implementation quality |
| SOLID Principles | 15% | Design principles |
| Coding Conventions | 10% | Consistency |
| Testing | 20% | Verification level |
| Security | 15% | Security level |

---

## Review Execution Procedure

### Sprint Review Execution

```
1. Confirm Sprint completion
   |
   v
2. Analyze codebase
   - Understand structure
   - Check patterns
   - Test status
   |
   v
3. Perform evaluation
   - Assign grades by area
   - Identify technical debt
   |
   v
4. Write review document
   - Apply template
   - Record results
   |
   v
5. Derive improvements
   - Identify Task candidates
   - Assign priorities
```

### Phase Review Execution

```
1. Confirm all Sprint reviews complete
   |
   v
2. Aggregate Sprint results
   - Compile statistics
   - Analyze trends
   |
   v
3. Evaluate goal achievement
   - Compare to Phase goals
   - Identify missing features
   |
   v
4. Summarize technical debt
   - Analyze overall accumulation
   - Improvements Sprint candidates
   |
   v
5. Prepare next Phase
   - Check prerequisites
   - Identify risks
```

---

## Review Checklists

### Before Sprint Review

- [ ] All Tasks completed confirmed
- [ ] Build success confirmed
- [ ] Tests passing confirmed

### During Sprint Review

- [ ] Completed Task list created
- [ ] Code quality evaluation done
- [ ] Test status recorded
- [ ] Technical debt identified
- [ ] Improvements derived
- [ ] Overall grade calculated

### Before Phase Review

- [ ] All Sprint reviews completed
- [ ] Phase goals document reviewed

### During Phase Review

- [ ] Goal achievement status evaluated
- [ ] Sprint results aggregated
- [ ] Technical debt accumulation analyzed
- [ ] Improvements Sprint candidates selected
- [ ] Next Phase readiness confirmed

---

## Review Results Utilization

### Improvements Sprint Creation

When there are many P2+ improvements:

1. Create improvements Sprint folder
2. Convert improvements to Tasks
3. Execute based on priority

### Next Sprint/Phase Planning

Reflect review results in next planning:

- Add technical debt resolution Tasks
- Add test enhancement Tasks
- Add architecture improvement Tasks

---

## Additional Resources

### Reference Files

See `references/templates.md` for detailed templates:
- Sprint review template
- Phase review template
- Review README template

### Example Files

See `examples/` for complete examples:

- **`examples/sample-sprint-review.md`** - Sprint p1-s2 review example (User Authentication Sprint)

---

## Related Documents

- Sprint management: `sprint-management` skill
- Task management: `task-management` skill
- Work units: `work-units` skill
