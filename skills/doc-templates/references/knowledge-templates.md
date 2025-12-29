# Knowledge Document Template Collection

> 2 templates for lessons learned and analysis reports

---

## Table of Contents

1. [Lessons Learned](#1-lessons-learned-template)
2. [Analysis Report](#2-analysis-report-template)

---

## 1. Lessons Learned Template

```markdown
# L-{NNN}: {Title}

## Overview

| Item | Content |
|------|------|
| ID | L-{NNN} |
| Title | {Title} |
| Category | Technical / Process / Collaboration / Tools |
| Occurred | {YYYY-MM-DD} |
| Author | {Author} |
| Related Task | {TASK-XXX} |

---

## 1. Context

{Explain the situation in which this lesson occurred}

### Background

- {Background 1}
- {Background 2}

### Goal

{Goal being pursued at the time}

---

## 2. Problem

{Problem or challenge that occurred}

### Symptoms

- {Symptom 1}
- {Symptom 2}

### Causes

- **Direct Cause:** {Direct cause}
- **Root Cause:** {Root cause}

### Impact

- {Impact 1}
- {Impact 2}

---

## 3. Solution

{How the problem was solved}

### Attempted Methods

| Attempt | Result | Notes |
|------|------|------|
| {Attempt 1} | Failed/Succeeded | {Notes} |
| {Attempt 2} | Failed/Succeeded | {Notes} |

### Final Solution

{Solution that finally worked}

```
{Code or command example}
```

---

## 4. Lessons

### Core Lesson

> {Core lesson in one sentence}

### Detailed Lessons

1. **{Lesson 1}**
   - {Description}

2. **{Lesson 2}**
   - {Description}

### Incorrect Assumptions

- {Incorrect assumption 1}
- {Incorrect assumption 2}

---

## 5. Application

### Immediate Application

| Application | Target | Status |
|----------|------|------|
| {Application 1} | {Target} | ⬜ Pending |
| {Application 2} | {Target} | ⬜ Pending |

### Future Application

| Application | Timing | Owner |
|----------|------|------|
| {Application 1} | {Timing} | {Owner} |

### Documentation/Guide Updates

| Document | Update Content |
|------|--------------|
| {Document 1} | {Content} |

---

## 6. Related Information

### Related Documents

- {Document 1}
- {Document 2}

### Related Lessons

- L-{NNN}: {Related lesson}

### Tags

`{tag1}` `{tag2}` `{tag3}`

---

## Change History

| Date | Changes | Author |
|------|----------|--------|
| {Date} | Initial creation | {Author} |
```

---

## 2. Analysis Report Template

```markdown
# Analysis Report: {Topic}

## Overview

| Item | Content |
|------|------|
| Title | {Analysis topic} |
| Created | {YYYY-MM-DD} |
| Author | {Author} |
| Version | 1.0 |
| Status | Draft / Under Review / Final |

---

## 1. Executive Summary

{Summary of analysis results - 3-5 sentences}

### Key Findings

1. {Finding 1}
2. {Finding 2}
3. {Finding 3}

### Recommendations

1. {Recommendation 1}
2. {Recommendation 2}

---

## 2. Analysis Purpose

### Background

{Background for why this analysis is needed}

### Objectives

1. {Objective 1}
2. {Objective 2}

### Scope

**Included:**
- {Included item}

**Excluded:**
- {Excluded item}

---

## 3. Methodology

### Analysis Method

{Description of analysis method used}

### Data Sources

| Source | Type | Period |
|------|------|------|
| {Source 1} | {Type} | {Period} |
| {Source 2} | {Type} | {Period} |

### Tools

- {Tool 1}
- {Tool 2}

---

## 4. Current State Analysis

### 4.1 {Analysis Area 1}

**Current State:**
{Current state description}

**Data:**

| Item | Value | Notes |
|------|-----|------|
| {Item 1} | {Value} | {Notes} |
| {Item 2} | {Value} | {Notes} |

**Analysis:**
{Analysis result}

---

### 4.2 {Analysis Area 2}

**Current State:**
{Current state description}

**Analysis:**
{Analysis result}

---

## 5. Findings

### 5.1 {Finding 1}

**Description:**
{Detailed finding description}

**Evidence:**
- {Evidence 1}
- {Evidence 2}

**Impact:**
{Impact of this finding}

---

### 5.2 {Finding 2}

**Description:**
{Description}

**Impact:**
{Impact}

---

## 6. Comparative Analysis

### {Comparison Item}

| Item | Option A | Option B | Option C |
|------|--------|--------|--------|
| {Criteria 1} | {Value} | {Value} | {Value} |
| {Criteria 2} | {Value} | {Value} | {Value} |
| **Total** | {Score} | {Score} | {Score} |

---

## 7. Risks and Opportunities

### Risk Factors

| Risk | Probability | Impact | Mitigation |
|------|--------|------|----------|
| {Risk 1} | High/Med/Low | High/Med/Low | {Mitigation} |

### Opportunity Factors

| Opportunity | Probability | Value | Utilization |
|------|--------|------|----------|
| {Opportunity 1} | High/Med/Low | High/Med/Low | {Utilization} |

---

## 8. Conclusion

### Overall Assessment

{Overall assessment content}

### Key Insights

1. {Insight 1}
2. {Insight 2}

---

## 9. Recommendations

### Short-term (1-2 weeks)

| Recommendation | Priority | Owner | Expected Effect |
|----------|----------|------|----------|
| {Recommendation 1} | High | {Owner} | {Effect} |

### Medium-term (1-3 months)

| Recommendation | Priority | Owner | Expected Effect |
|----------|----------|------|----------|
| {Recommendation 1} | Medium | {Owner} | {Effect} |

### Long-term (3-6 months)

| Recommendation | Priority | Owner | Expected Effect |
|----------|----------|------|----------|
| {Recommendation 1} | Low | {Owner} | {Effect} |

---

## 10. Next Steps

- [ ] {Next step 1}
- [ ] {Next step 2}
- [ ] {Next step 3}

---

## Appendix

### A. Detailed Data

{Detailed data or links}

### B. References

- {Reference 1}
- {Reference 2}

---

## Change History

| Version | Date | Changes | Author |
|------|------|----------|--------|
| 1.0 | {Date} | Initial creation | {Author} |
```

---

## Lesson Category Guide

| Category | Description | Examples |
|----------|------|------|
| **Technical** | Technical decisions, implementation, debugging | Library selection, performance optimization |
| **Process** | Development process, workflow | Code review, deployment procedures |
| **Collaboration** | Team collaboration, communication | Meeting efficiency, document sharing |
| **Tools** | Development tools, environment setup | IDE settings, CI/CD configuration |

---

## Tag Examples

- Technical: `architecture`, `performance`, `security`, `testing`
- Process: `deployment`, `code-review`, `planning`
- Collaboration: `communication`, `documentation`
- Tools: `docker`, `ci-cd`, `monitoring`
