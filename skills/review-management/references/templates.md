# Review Document Template Collection

> 5 templates for various review types

---

## Table of Contents

1. [Sprint Review Template](#sprint-review-template)
2. [Phase Comprehensive Review Template](#phase-comprehensive-review-template)
3. [Code Review Report Template](#code-review-report-template)
4. [Design Review Template](#design-review-template)
5. [Review Folder README Template](#review-folder-readme-template)

---

## Sprint Review Template

```markdown
# Sprint {sprint-id} Review

## Metadata

| Item | Value |
|------|-----|
| Sprint | {sprint-id} |
| Period | Week X-Y |
| Review Date | YYYY-MM-DD |
| Status | ✅ Review Complete / 📝 Under Review |

## Completed Tasks

| Task | Title | Assignee | Quality | Notes |
|------|------|------|------|------|
| TASK-XXX | {Title} | {Agent} | ⭐⭐⭐ | {Notes} |
| TASK-YYY | {Title} | {Agent} | ⭐⭐ | {Notes} |

## Implementation Status

### Project Structure

```
src/
├── {folder1}/         # N files
├── {folder2}/         # N files
└── {folder3}/         # N files
```

**Total Files**: N files

### Key Implementations

1. **{Feature 1}**: {Description}
2. **{Feature 2}**: {Description}
3. **{Feature 3}**: {Description}

## Code Quality Assessment

### Architecture

| Item | Grade | Notes |
|------|------|------|
| Clean Architecture Compliance | A | {Details} |
| Layer Dependencies | A | {Details} |
| Interface Segregation | A | {Details} |

**Strengths:**
- {Strength 1}
- {Strength 2}

**Code Example:**
```{lang}
// Excellent example
{code}
```

### Coding Conventions

| Item | Grade | Notes |
|------|------|------|
| Naming Rules | A | {PascalCase/camelCase compliance rate} |
| Comment Quality | A | {XML doc comments + inline} |
| File Structure | A | {Classes per file} |

### SOLID Principles

| Principle | Grade | Notes |
|------|------|------|
| Single Responsibility | A | {Details} |
| Open/Closed | A | {Details} |
| Liskov Substitution | A | {Details} |
| Interface Segregation | A | {Details} |
| Dependency Inversion | A | {Details} |

## Test Status

| Item | Value |
|------|-----|
| Test Files | N files |
| Test Cases | N cases |
| Pass Rate | N% |
| Core Logic Coverage | ~N% |

### Test Areas

- [x] {Test area 1}
- [x] {Test area 2}
- [ ] {Incomplete area} (Integration tests needed)

## Technical Debt

### Identified Items

| ID | Area | Description | Priority |
|----|------|------|----------|
| TD-XXX | {Area} | {Description} | P2 |
| TD-YYY | {Area} | {Description} | P3 |

### TODO/FIXME

```
{file path}:
  Line XX: {TODO content}
  Line YY: {FIXME content}
```

## Improvements

### P1 (Next Sprint)

| ID | Description | Estimated Effort |
|----|------|------------|
| IMP-XXX | {Description} | S |

### P2 (Improvements Sprint)

| ID | Description | Estimated Effort |
|----|------|------------|
| IMP-YYY | {Description} | M |

### P3 (Future Consideration)

| ID | Description | Estimated Effort |
|----|------|------------|
| IMP-ZZZ | {Description} | L |

## Overall Assessment

### Strengths

1. **{Strength 1}**: {Description}
2. **{Strength 2}**: {Description}
3. **{Strength 3}**: {Description}

### Needs Improvement

1. **{Improvement 1}**: {Description}
2. **{Improvement 2}**: {Description}

### Overall Grade

| Area | Grade | Score |
|------|------|------|
| Architecture | A | 95/100 |
| Code Quality | A | 92/100 |
| SOLID Principles | A | 92/100 |
| Coding Conventions | A+ | 98/100 |
| Tests | B+ | 85/100 |
| Security | B | 78/100 |
| **Overall** | **A-** | **90/100** |

## Next Sprint Recommendations

1. **{Recommendation 1}**: {Rationale}
2. **{Recommendation 2}**: {Rationale}
3. **{Recommendation 3}**: {Rationale}

---

*Reviewer: Claude Code*
*Last Updated: YYYY-MM-DD*
```

---

## Phase Comprehensive Review Template

```markdown
# Phase {N} Comprehensive Review

## Metadata

| Item | Value |
|------|-----|
| Phase | Phase {N}: {Name} |
| Period | Week X-Y |
| Review Date | YYYY-MM-DD |
| Status | ✅ Review Complete |

## Phase Goals

> **Goal**: {Phase goal summary}

### Goal Achievement Status

| Goal | Status | Notes |
|------|------|------|
| {Goal 1} | ✅ Complete | {Details} |
| {Goal 2} | ✅ Complete | {Details} |
| {Goal 3} | ⏳ In Progress | {Details} |

**Achievement Rate**: N% (Completed/Total goals)

## Sprint Summary

### {sprint-id-1}

| Item | Value |
|------|-----|
| Tasks | N/N completed |
| Tests | N passed |
| Overall Grade | A- (88/100) |

**Key Achievements:**
- {Achievement 1}
- {Achievement 2}
- {Achievement 3}

### {sprint-id-2}

| Item | Value |
|------|-----|
| Tasks | N/N completed |
| Tests | N passed |
| Overall Grade | A (94/100) |

**Key Achievements:**
- {Achievement 1}
- {Achievement 2}
- {Achievement 3}

## Overall Test Status

| Sprint | Test Count | Pass Rate |
|--------|----------|--------|
| {sprint-1} | N tests | 100% |
| {sprint-2} | N tests | 100% |
| **Total** | **N tests** | **100%** |

### Test Coverage

| Area | Coverage | Notes |
|------|----------|------|
| Core Logic | ~N% | {Details} |
| Infrastructure | ~N% | {Details} |
| Controllers | ~N% | {Details} |

## Technology Stack Verification

| Technology | Version | Purpose | Assessment |
|------|------|------|------|
| {Tech 1} | X.Y | {Purpose} | ✅ Excellent |
| {Tech 2} | X.Y | {Purpose} | ✅ Excellent |
| {Tech 3} | X.Y | {Purpose} | ⚠️ Needs Improvement |

## Architecture Assessment

### Clean Architecture

| Layer | Implementation Status | Assessment |
|------|----------|------|
| Domain | ✅ Complete | A+ |
| Application | ✅ Complete | A+ |
| Infrastructure | ✅ Complete | A |
| Presentation | ✅ Complete | A |

### Service Separation

| Service | Port | Role | Status |
|--------|------|------|------|
| {Service 1} | XXXX | {Role} | ✅ Complete |
| {Service 2} | XXXX | {Role} | ✅ Complete |
| {Service 3} | XXXX | {Role} | ⏳ Next Phase |

## Technical Debt Summary

### Accumulated Technical Debt

| ID | Area | Description | Priority | Sprint |
|----|------|------|----------|--------|
| TD-XXX | {Area} | {Description} | P2 | {sprint} |
| TD-YYY | {Area} | {Description} | P3 | {sprint} |

### Technical Debt Statistics

| Priority | Count |
|----------|------|
| P0 | 0 |
| P1 | 0 |
| P2 | N |
| P3 | N |
| **Total** | **N** |

**Analysis**:
- No P0/P1 blockers
- Most P2 items related to {area}
- P3 items are refactoring level

## Improvements Sprint Candidates

### Required (P0-P1)

{N/A - No P0/P1 technical debt}

### Recommended (P2)

| ID | Description | Estimated Effort | Rationale |
|----|------|------------|------|
| IMP-XXX | {Description} | S | {TD reference} |
| IMP-YYY | {Description} | M | {TD reference} |

### Optional (P3)

| ID | Description | Estimated Effort | Rationale |
|----|------|------------|------|
| IMP-ZZZ | {Description} | M | {TD reference} |

## Next Phase Readiness

### Prerequisite Fulfillment

| Condition | Status | Notes |
|------|------|------|
| {Condition 1} API | ✅ Ready | {Path} |
| {Condition 2} API | ✅ Ready | {Path} |
| Tests Passed | ✅ 100% | N tests |
| Build Success | ✅ Complete | 0 warnings, 0 errors |

### Next Phase Start Recommendations

1. **{Recommendation 1}**: {Details}
2. **{Recommendation 2}**: {Details}
3. **{Recommendation 3}**: {Details}

## Overall Assessment

### Phase Strengths

1. **{Strength 1}**: {Description}
2. **{Strength 2}**: {Description}
3. **{Strength 3}**: {Description}

### Phase Improvements Needed

1. **{Improvement 1}**: {Description}
2. **{Improvement 2}**: {Description}

### Phase Overall Grade

| Area | Grade | Notes |
|------|------|------|
| Goal Achievement | A+ | N% complete |
| Code Quality | A+ | SOLID compliance |
| Tests | A | N tests, ~N% coverage |
| Architecture | A+ | Clean Architecture |
| Documentation | A | Review docs complete |
| Security | B | Development environment level |
| **Overall** | **A** | **91/100** |

## Conclusion and Recommendations

### Improvements Sprint Decision

- [ ] Required: Must-have improvements exist
- [x] **Optional**: P2 improvements recommended
- [ ] Not Needed: Can proceed directly to next Phase

**Rationale**:
- {Rationale 1}
- {Rationale 2}
- {Rationale 3}

### Final Recommendations

1. **{Recommendation 1}**: {Details}
2. **{Recommendation 2}**: {Details}
3. **{Recommendation 3}**: {Details}

### Next Phase Priority Tasks

| Order | Task | Description |
|------|------|------|
| 1 | {Task 1} | {Description} |
| 2 | {Task 2} | {Description} |
| 3 | {Task 3} | {Description} |

---

## Code Statistics

| Item | Value |
|------|-----|
| Total Files | N files |
| {Service 1} | ~N files |
| {Service 2} | N files |
| Shared Libraries | ~N files |
| Test Files | N files |
| Test Cases | N cases |

---

*Reviewer: Claude Code*
*Last Updated: YYYY-MM-DD*
```

---

## Code Review Report Template

```markdown
# Code Review Report: {Scope}

## Overview

| Item | Content |
|------|------|
| Review ID | REVIEW-{YYYYMMDD}-{NNN} |
| Created | {YYYY-MM-DD} |
| Session | S#{N} |
| Review Scope | {Scope description} |
| Reviewer | {Reviewer} |

---

## 1. Review Purpose

- [ ] Compare design documents with implementation
- [ ] Verify architecture principle compliance
- [ ] Evaluate code quality
- [ ] Identify technical debt
- [ ] Check security vulnerabilities

---

## 2. Review Scope

| Item | Content |
|------|------|
| Projects | {Project list} |
| File Count | {File count} |
| Lines of Code | {Line count} |
| Period | {Review target period} |

### Files Reviewed

| File | Type | Lines |
|------|------|---------|
| `path/to/file1` | {Type} | {Lines} |
| `path/to/file2` | {Type} | {Lines} |

---

## 3. Architecture Principle Compliance

| Principle | Status | Notes |
|------|------|------|
| {Principle 1} | ✅ / ⚠️ / ❌ | {Notes} |
| {Principle 2} | ✅ / ⚠️ / ❌ | {Notes} |
| {Principle 3} | ✅ / ⚠️ / ❌ | {Notes} |

---

## 4. Design vs Implementation Comparison

### {Component 1}

**Design Specification:** {Design content}

**Implementation Status:** ✅ Match / ⚠️ Partial / ❌ Mismatch

**Differences:**
- {Difference 1}

---

### {Component 2}

**Design Specification:** {Design content}

**Implementation Status:** ✅ Match / ⚠️ Partial / ❌ Mismatch

---

## 5. Issues Found

### 5.1 Critical Issues

| # | File | Line | Issue | Recommended Action |
|---|------|------|------|----------|
| 1 | `path/file` | {Line} | {Issue} | {Action} |

### 5.2 Major Issues

| # | File | Line | Issue | Recommended Action |
|---|------|------|------|----------|
| 1 | `path/file` | {Line} | {Issue} | {Action} |

### 5.3 Minor Issues

| # | File | Line | Issue | Recommended Action |
|---|------|------|------|----------|
| 1 | `path/file` | {Line} | {Issue} | {Action} |

### 5.4 Suggestions

| # | File | Suggestion |
|---|------|------|
| 1 | `path/file` | {Suggestion} |

---

## 6. Code Quality Metrics

| Metric | Current | Target | Status |
|------|---------|------|------|
| Test Coverage | {X}% | {Y}% | ✅/❌ |
| Code Duplication | {X}% | < {Y}% | ✅/❌ |
| Complexity (Avg) | {X} | < {Y} | ✅/❌ |
| Build Warnings | {X} | 0 | ✅/❌ |

---

## 7. Security Check

| Item | Status | Notes |
|------|------|------|
| Input Validation | ✅/⚠️/❌ | {Notes} |
| Authentication/Authorization | ✅/⚠️/❌ | {Notes} |
| Sensitive Data Exposure | ✅/⚠️/❌ | {Notes} |
| SQL Injection | ✅/⚠️/❌ | {Notes} |
| XSS | ✅/⚠️/❌ | {Notes} |

---

## 8. Generated Tasks

| ID | Title | Priority | Related Issue |
|----|------|----------|----------|
| TASK-XXX | {Title} | P0/P1/P2 | Critical #1 |
| TASK-YYY | {Title} | P0/P1/P2 | Major #1 |

---

## 9. Conclusion

### Overall Assessment

| Item | Score | Notes |
|------|------|------|
| Architecture Compliance | /100 | {Notes} |
| Design Match | /100 | {Notes} |
| Code Quality | /100 | {Notes} |
| Security | /100 | {Notes} |
| **Overall** | **/100** | |

### Recommended Actions

**Immediate Actions (Critical):**
1. {Action 1}

**Short-term Actions (Major):**
1. {Action 1}

**Improvement Recommendations (Minor/Suggestion):**
1. {Action 1}

---

*Code Review Report*
*Reviewed by: {Reviewer}*
```

---

## Design Review Template

```markdown
# Design Review: {Design Document Name}

## Overview

| Item | Content |
|------|------|
| Review ID | DR-{YYYYMMDD}-{NNN} |
| Target Document | {Design document path} |
| Created | {YYYY-MM-DD} |
| Reviewer | {Reviewer} |
| Status | Under Review / Approved / Revision Required |

---

## 1. Review Purpose

- [ ] Verify requirements fulfillment
- [ ] Review architecture suitability
- [ ] Evaluate technical feasibility
- [ ] Identify risks
- [ ] Verify consistency

---

## 2. Design Overview

### Design Summary

{Design content summary}

### Main Components

| Component | Role |
|----------|------|
| {Component 1} | {Role} |
| {Component 2} | {Role} |

---

## 3. Requirements Review

| Requirement | Design Reflection | Status | Notes |
|----------|----------|------|------|
| {FR-001} | {Reflection content} | ✅/⚠️/❌ | {Notes} |
| {FR-002} | {Reflection content} | ✅/⚠️/❌ | {Notes} |
| {NFR-001} | {Reflection content} | ✅/⚠️/❌ | {Notes} |

---

## 4. Architecture Suitability

### Architecture Principle Compliance

| Principle | Status | Assessment |
|------|------|------|
| {Principle 1} | ✅/⚠️/❌ | {Assessment} |
| {Principle 2} | ✅/⚠️/❌ | {Assessment} |

### Consistency with Existing Architecture

| Item | Consistent | Notes |
|------|--------|------|
| Naming Rules | ✅/❌ | {Notes} |
| Communication Patterns | ✅/❌ | {Notes} |
| Data Model | ✅/❌ | {Notes} |

---

## 5. Technical Assessment

### Feasibility

| Item | Assessment | Notes |
|------|------|------|
| Technology Stack Suitability | ✅/⚠️/❌ | {Notes} |
| Team Capability | ✅/⚠️/❌ | {Notes} |
| Schedule Realism | ✅/⚠️/❌ | {Notes} |

### Performance Considerations

| Item | Design Content | Assessment |
|------|----------|------|
| Response Time | {Content} | {Assessment} |
| Throughput | {Content} | {Assessment} |
| Scalability | {Content} | {Assessment} |

---

## 6. Risk Analysis

### Identified Risks

| Risk | Impact | Probability | Mitigation Strategy |
|--------|------|--------|----------|
| {Risk 1} | High/Med/Low | High/Med/Low | {Strategy} |
| {Risk 2} | High/Med/Low | High/Med/Low | {Strategy} |

### Unconsidered Items

- {Item 1}
- {Item 2}

---

## 7. Issues and Questions

### Issues to Resolve

| # | Issue | Severity | Suggestion |
|---|------|--------|------|
| 1 | {Issue} | Critical/Major/Minor | {Suggestion} |

### Questions

| # | Question | Answer |
|---|------|------|
| 1 | {Question} | {Answer - record after discussion} |

---

## 8. Recommendations

### Required Revisions (Blocking)

1. {Revision 1}
2. {Revision 2}

### Recommended Revisions (Non-blocking)

1. {Revision 1}
2. {Revision 2}

### Alternative Proposals

{Explanation if alternatives exist}

---

## 9. Conclusion

### Review Result

| Result | |
|------|---|
| **Approved** | ⬜ Can proceed without changes |
| **Conditionally Approved** | ⬜ Proceed after minor revisions |
| **Revision Required** | ⬜ Re-review after major revisions |
| **Redesign Required** | ⬜ Fundamental redesign needed |

### Overall Opinion

{Overall opinion}

---

## 10. Next Steps

- [ ] {Next step 1}
- [ ] {Next step 2}

---

*Design Review*
*Reviewed by: {Reviewer}*
*Date: {Date}*
```

---

## Review Folder README Template

```markdown
# Review Reports

> Sprint and Phase review documents

## Overview

Records review results performed upon Sprint and Phase completion.

## Review Types

| Type | Timing | Purpose |
|------|------|------|
| Sprint Review | On Sprint completion | Implementation quality assessment, improvement identification |
| Phase Review | On Phase completion | Comprehensive assessment, next Phase preparation |

## Folder Structure

```
reviews/
├── README.md              # This document
├── phase1/
│   ├── p1-s1-review.md   # Sprint p1-s1 review
│   ├── p1-s2-review.md   # Sprint p1-s2 review
│   └── phase1-summary.md # Phase 1 comprehensive review
└── phase2/
    ├── p2-s1-review.md
    ├── p2-s2-review.md
    └── phase2-summary.md
```

## Review Process

### 1. Sprint Review

On each Sprint completion:

1. **Code Quality Assessment**
   - Architecture compliance
   - Coding convention compliance
   - SOLID principle application

2. **Test Coverage**
   - Unit test pass rate
   - Core logic coverage

3. **Technical Debt Identification**
   - TODO/FIXME items
   - Temporary code
   - Areas needing refactoring

4. **Improvement Identification**
   - Improvements Sprint Task candidates

### 2. Phase Review

On Phase completion:

1. **Goal Achievement**
   - Actual results vs Phase goals
   - Missing features

2. **Quality Comprehensive Assessment**
   - Overall test status
   - Performance criteria fulfillment

3. **Next Phase Preparation**
   - Prerequisite fulfillment
   - Risk identification

## Assessment Criteria

### Code Quality Grades

| Grade | Criteria |
|------|------|
| A | Exemplary, no improvement needed |
| B | Good, minor improvements recommended |
| C | Average, improvements needed |
| D | Poor, improvements required |

### Priority

| Priority | Description |
|----------|------|
| P0 | Immediate fix (blocker) |
| P1 | Fix in next Sprint |
| P2 | Fix in improvements Sprint |
| P3 | Future consideration |

## Related Documents

- [Roadmap](../roadmap.md)
- [Phase Specs](../phases/)

---

*Last Updated: YYYY-MM-DD*
```

---

## Effort Estimation Guide

| Size | Time | Examples |
|------|------|------|
| **S** | 30 min - 2 hours | Config change, single file modification, documentation update |
| **M** | 2-4 hours | New component, test suite, refactoring |
| **L** | 4-8 hours | New service, major changes, architecture improvements |

---

## Grade Calculation Guide

### Score → Grade Conversion

```
95-100: A+
90-94:  A
85-89:  A-
80-84:  B+
75-79:  B
70-74:  B-
60-69:  C
50-59:  D
0-49:   F
```

### Area-Specific Assessment Criteria

**Architecture (20%)**
- A+: Perfect Clean Architecture compliance, 100% dependency inversion
- A: Mostly compliant, minor improvement points
- B: Some layer mixing, improvements needed
- C: Insufficient layer separation
- D/F: No architecture pattern

**SOLID Principles (15%)**
- A+: All principles perfectly applied
- A: Mostly applied, some improvements
- B: Major principles applied
- C: Only some principles applied
- D/F: SOLID not applied

**Tests (20%)**
- A+: 100% pass, 90%+ coverage
- A: 100% pass, 80%+ coverage
- B: 100% pass, 60%+ coverage
- C: Some failures or 40%+ coverage
- D/F: No tests or many failures

**Security (15%)**
- A+: Production-level security
- A: Most security applied
- B: Development environment level
- C: Only basic security
- D/F: Security vulnerabilities exist
