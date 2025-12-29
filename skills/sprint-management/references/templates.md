# Sprint Template Collection

> 6 templates for the complete Sprint lifecycle

---

## Table of Contents

1. [Sprint Planning](#1-sprint-planning-template) - Planning
2. [Sprint Backlog](#2-sprint-backlog-template) - Task list management
3. [Sprint Progress](#3-sprint-progress-template) - Progress tracking
4. [Sprint Review](#4-sprint-review-template) - Results review
5. [Sprint Retrospective](#5-sprint-retrospective-template) - Retrospective
6. [Sprint Completion](#6-sprint-completion-template) - Completion report

---

## 1. Sprint Planning Template

```markdown
# Sprint Planning: {Sprint ID}

## Overview

| Item | Value |
|------|-----|
| Sprint ID | {p{N}-s{M}} |
| Name | {Sprint Name} |
| Phase | Phase {N} |
| Period | {Start Date} ~ {End Date} |
| Status | 📋 Planning |

---

## 1. Sprint Goals

### Core Goal

{Sprint core goal in 1-2 sentences}

### Detailed Goals

1. {Detailed goal 1}
2. {Detailed goal 2}
3. {Detailed goal 3}

---

## 2. Scope Definition

### In Scope

- {Included item 1}
- {Included item 2}

### Out of Scope

- {Excluded item 1}
- {Excluded item 2}

---

## 3. Task Plan

### 3.1 Task List

| ID | Title | Size | Assignee | Priority | Dependencies |
|----|------|------|------|----------|--------|
| TASK-XXX | {Title} | S/M/L | developer | P0 | - |
| TASK-YYY | {Title} | S/M/L | devops | P1 | TASK-XXX |

### 3.2 Workload Estimation

| Size | Count | Hours |
|------|------|------|
| XS | X | X hours |
| S | X | X hours |
| M | X | X hours |
| L | X | X hours |
| **Total** | **X** | **X hours** |

---

## 4. Dependency Analysis

### 4.1 Dependency Graph

TASK-XXX
    │
    ▼
TASK-YYY ──▶ TASK-ZZZ

### 4.2 External Dependencies

| Dependency | Owner | Status | Expected Resolution |
|--------|------|------|------------|
| {Dependency 1} | {Owner} | Waiting/Complete | {Date} |

---

## 5. Risk Analysis

| Risk | Probability | Impact | Mitigation Strategy |
|--------|------|------|----------|
| {Risk 1} | High/Med/Low | High/Med/Low | {Strategy} |
| {Risk 2} | High/Med/Low | High/Med/Low | {Strategy} |

---

## 6. Reference Design Documents

> **Required**: List of design documents referenced during Sprint planning

| Document Type | Path | Verified Items |
|----------|------|----------|
| Phase Spec | `docs/project/phases/phase{N}-spec.md` | Sprint goal basis |
| Feature Design | `docs/design/feature/{feature}.md` | Feature details |
| Domain Design | `docs/design/domain/{domain}.md` | Domain model |
| ADR | `docs/adr/ADR-{NNN}.md` | Technical decisions |

---

## 7. Completion Verification Checklist

### Functional Verification
- [ ] All Tasks completed
- [ ] {Functional criteria 1}
- [ ] {Functional criteria 2}

### Quality Verification
- [ ] Build successful
- [ ] Tests passed (coverage {X}% or higher)
- [ ] Code review completed

### Design Consistency Verification
- [ ] Implementation matches reference design documents
- [ ] ADR decisions followed
- [ ] Domain model consistency verified

### Documentation Verification
- [ ] Updated design documents updated
- [ ] API documentation updated (if applicable)
- [ ] Sprint results recorded

---

## 8. Schedule

| Week | Plan |
|------|------|
| Week 1 | {Plan} |
| Week 2 | {Plan} |
```

---

## 2. Sprint Backlog Template

```markdown
# Sprint Backlog: {Sprint ID}

## Overview

| Item | Value |
|------|-----|
| Sprint | {p{N}-s{M}} |
| Last Modified | {YYYY-MM-DD} |
| Total Tasks | {N} |
| Total Workload | {X} hours |

---

## 1. Task Status

### 1.1 Status Summary

| Status | Count | Ratio |
|------|------|------|
| 📋 Pending | X | X% |
| 🔄 In Progress | X | X% |
| ✅ Complete | X | X% |
| ⚠️ Blocked | X | X% |

### 1.2 Progress

[████████░░░░░░░░░░░░] 40%

---

## 2. Task Details

### 2.1 Pending (📋)

| ID | Title | Size | Assignee | Priority |
|----|------|------|------|----------|
| TASK-XXX | {Title} | S | developer | P0 |
| TASK-YYY | {Title} | M | devops | P1 |

### 2.2 In Progress (🔄)

| ID | Title | Assignee | Progress | Start Date |
|----|------|------|--------|--------|
| TASK-ZZZ | {Title} | developer | 50% | {Date} |

### 2.3 Complete (✅)

| ID | Title | Assignee | Completion Date |
|----|------|------|--------|
| TASK-AAA | {Title} | developer | {Date} |

### 2.4 Blocked (⚠️)

| ID | Title | Block Reason | Resolution Plan |
|----|------|----------|----------|
| TASK-BBB | {Title} | {Reason} | {Plan} |

---

## 3. Status by Priority

### P0 (Critical)

| ID | Title | Status | Assignee |
|----|------|------|------|
| TASK-XXX | {Title} | {Status} | {Assignee} |

### P1 (High)

| ID | Title | Status | Assignee |
|----|------|------|------|
| TASK-YYY | {Title} | {Status} | {Assignee} |

---

## 4. Status by Assignee

| Assignee | Pending | In Progress | Complete | Total Workload |
|------|------|------|------|----------|
| developer | X | X | X | X hours |
| devops | X | X | X | X hours |

---

## 5. Issues and Blockers

### Current Issues

| Issue | Related Task | Status | Owner |
|------|----------|------|------|
| {Issue} | TASK-XXX | Open | {Owner} |

### Resolved Issues

| Issue | Resolution | Resolution Date |
|------|----------|--------|
| {Issue} | {Method} | {Date} |
```

---

## 3. Sprint Progress Template

```markdown
# Sprint Progress: {Sprint ID}

## Overview

| Item | Value |
|------|-----|
| Sprint | {p{N}-s{M}} |
| Period | {Start Date} ~ {End Date} |
| Current Progress | {X}% |
| Last Modified | {YYYY-MM-DD} |

---

## 1. Progress Chart

Day 1  ████░░░░░░░░░░░░░░░░ 20%
Day 2  ██████░░░░░░░░░░░░░░ 30%
Day 3  ████████░░░░░░░░░░░░ 40%
Day 4  ██████████░░░░░░░░░░ 50%
Day 5  ████████████░░░░░░░░ 60%
...

---

## 2. Daily Status

### Day {N} ({YYYY-MM-DD})

**Completed:**
- TASK-XXX: {Title}

**In Progress:**
- TASK-YYY: {Title} - {Progress}

**Blocked:**
- TASK-ZZZ: {Block reason}

**Notes:**
- {Special notes}

---

## 3. Burndown Chart

Story
Points
   │
30 │ ━━━━━━━━━━━━━━━━━━━━━━━━━━
   │   ╲                    (Planned)
25 │     ╲
   │       ╲
20 │         ╲━━━(Actual)━━━━
   │           ╲        ╲
15 │             ╲        ━━
   │               ╲
10 │                 ╲
   │                   ╲
 5 │                     ╲
   │                       ╲
 0 └───────────────────────────▶ Days
     1  2  3  4  5  6  7  8  9  10

---

## 4. Key Achievements

### Completed This Period

| Task | Title | Assignee | Completion Date |
|------|------|------|--------|
| TASK-XXX | {Title} | {Assignee} | {Date} |

### Key Deliverables

- {Deliverable 1}
- {Deliverable 2}

---

## 5. Risks and Issues

### Current Risks

| Risk | Status | Impact | Response |
|--------|------|------|------|
| {Risk} | Active | High | {Response} |

### Current Issues

| Issue | Related Task | Status |
|------|----------|------|
| {Issue} | TASK-XXX | Open |

---

## 6. Next Plan

### Tomorrow's Plan

- [ ] {Plan 1}
- [ ] {Plan 2}

### This Week's Plan

- [ ] {Plan 1}
- [ ] {Plan 2}
```

---

## 4. Sprint Review Template

```markdown
# Sprint Review: {Sprint ID}

## Overview

| Item | Value |
|------|-----|
| Sprint | {p{N}-s{M}} |
| Review Date | {YYYY-MM-DD} |
| Attendees | {Attendee list} |

---

## 1. Sprint Summary

### Goal Achievement

| Goal | Achieved | Notes |
|------|----------|------|
| {Goal 1} | ✅ / ⚠️ / ❌ | {Notes} |
| {Goal 2} | ✅ / ⚠️ / ❌ | {Notes} |

### Statistics

| Item | Planned | Actual | Achievement |
|------|------|------|--------|
| Task count | X | Y | Z% |
| Story points | X | Y | Z% |
| Work hours | X | Y | Z% |

---

## 2. Completed Features

### Main Features

#### {Feature 1}

**Description:** {Feature description}

**Demo:**
- {Demo point 1}
- {Demo point 2}

**Related Tasks:** TASK-XXX, TASK-YYY

---

## 3. Incomplete Items

| Task | Title | Reason | Action |
|------|------|------|------|
| TASK-AAA | {Title} | {Reason} | Carry over to next Sprint |

---

## 4. Quality Metrics

| Metric | Target | Result | Status |
|--------|------|------|------|
| Build success rate | 100% | X% | ✅/❌ |
| Test coverage | 80% | X% | ✅/❌ |
| Bug count | 0 | X | ✅/❌ |

---

## 5. Demo Feedback

### Positive Feedback

- {Feedback 1}
- {Feedback 2}

### Improvement Requests

| Request | Priority | Action |
|------|----------|------|
| {Request 1} | High/Medium/Low | {Action} |

---

## 6. Technical Debt

### Generated Technical Debt

| Item | Cause | Impact | Resolution Plan |
|------|------|------|----------|
| {Item} | {Cause} | {Impact} | {Plan} |

### Resolved Technical Debt

| Item | Resolution Method |
|------|----------|
| {Item} | {Method} |

---

## 7. Deliverables

### Documents

| Document | Path | Status |
|------|------|------|
| {Document 1} | `docs/...` | New/Modified |

### Code

| Component | Path | Changes |
|----------|------|------|
| {Component} | `src/...` | New/Modified |

---

## 8. Next Sprint Recommendations

1. {Recommendation 1}
2. {Recommendation 2}
```

---

## 5. Sprint Retrospective Template

```markdown
# Sprint Retrospective: {Sprint ID}

## Overview

| Item | Value |
|------|-----|
| Sprint | {p{N}-s{M}} |
| Date | {YYYY-MM-DD} |
| Attendees | {Attendee list} |
| Facilitator | {Facilitator} |

---

## 1. Keep (What Went Well)

### Process

- {Well done 1}
- {Well done 2}

### Technical

- {Well done 1}
- {Well done 2}

### Collaboration

- {Well done 1}

---

## 2. Problem (Areas for Improvement)

### Process

| Problem | Impact | Priority |
|------|------|----------|
| {Problem 1} | {Impact} | High/Medium/Low |
| {Problem 2} | {Impact} | High/Medium/Low |

### Technical

| Problem | Impact | Priority |
|------|------|----------|
| {Problem 1} | {Impact} | High/Medium/Low |

### Collaboration

| Problem | Impact | Priority |
|------|------|----------|
| {Problem 1} | {Impact} | High/Medium/Low |

---

## 3. Try (Things to Try)

### Try in Next Sprint

| Item | Expected Effect | Owner |
|------|----------|------|
| {Try 1} | {Effect} | {Owner} |
| {Try 2} | {Effect} | {Owner} |

### Long-term Improvements

| Item | Expected Effect | Timeline |
|------|----------|------|
| {Improvement 1} | {Effect} | {Timeline} |

---

## 4. Action Items

| Action | Owner | Due Date | Status |
|------|------|------|------|
| {Action 1} | {Owner} | {Due Date} | ⬜ Pending |
| {Action 2} | {Owner} | {Due Date} | ⬜ Pending |
| {Action 3} | {Owner} | {Due Date} | ⬜ Pending |

---

## 5. Team Satisfaction

### Category Ratings

| Category | Score (1-5) | Notes |
|----------|-----------|------|
| Sprint goal achievement | ⭐⭐⭐⭐☆ | {Notes} |
| Process efficiency | ⭐⭐⭐☆☆ | {Notes} |
| Technical growth | ⭐⭐⭐⭐☆ | {Notes} |
| Collaboration quality | ⭐⭐⭐⭐⭐ | {Notes} |

### Overall Satisfaction

⭐⭐⭐⭐☆ (4/5)

---

## 6. Previous Action Items Review

| Action (Previous Sprint) | Result |
|-------------------|------|
| {Previous action 1} | ✅ Complete / ⚠️ In Progress / ❌ Incomplete |
| {Previous action 2} | ✅ Complete / ⚠️ In Progress / ❌ Incomplete |

---

## 7. Highlights

### Sprint MVP

{Most impactful part or person}

### Lessons Learned

1. {Lesson 1}
2. {Lesson 2}
```

---

## 6. Sprint Completion Template

```markdown
# Sprint Completion Report: {Sprint ID}

## Overview

| Item | Value |
|------|-----|
| Sprint | {p{N}-s{M}} |
| Name | {Sprint Name} |
| Period | {Start Date} ~ {End Date} |
| Status | ✅ Complete |
| Completion Date | {YYYY-MM-DD} |

---

## 1. Completion Summary

### 1.1 Goal Achievement

| Goal | Achieved |
|------|------|
| {Goal 1} | ✅ |
| {Goal 2} | ✅ |
| {Goal 3} | ⚠️ Partial |

### 1.2 Statistics

| Item | Planned | Actual |
|------|------|------|
| Task count | X | X |
| Completed Tasks | - | X |
| Carried over Tasks | - | X |
| Total hours | X hours | X hours |

---

## 2. Completed Tasks

| ID | Title | Assignee | Size |
|----|------|------|------|
| TASK-XXX | {Title} | developer | S |
| TASK-YYY | {Title} | devops | M |
| TASK-ZZZ | {Title} | developer | L |

---

## 3. Carried Over Tasks

| ID | Title | Reason | Carry Over Sprint |
|----|------|------|------------|
| TASK-AAA | {Title} | {Reason} | p{N}-s{M+1} |

---

## 4. Deliverables

### 4.1 Code

| Change | File Count | Added | Deleted |
|------|---------|------|------|
| New | X | +XXX | - |
| Modified | X | +XXX | -XXX |

### 4.2 Documents

| Document | Status | Path |
|------|------|------|
| {Document 1} | New | `docs/...` |
| {Document 2} | Modified | `docs/...` |

### 4.3 Tests

| Type | Added | Total | Coverage |
|------|------|---------|----------|
| Unit tests | +X | Y | Z% |
| Integration tests | +X | Y | - |

---

## 5. Commit History

{Recent commit summary}
- [S#XX] feat: {Commit 1}
- [S#XX] fix: {Commit 2}
- [S#XX] docs: {Commit 3}

Total commits: {N}

---

## 6. Quality Metrics

| Metric | Result | Target | Achieved |
|------|------|------|------|
| Build successful | ✅ | ✅ | ✅ |
| Tests passed | ✅ | ✅ | ✅ |
| Coverage | X% | Y% | ✅/❌ |
| Warnings | X | 0 | ✅/❌ |

---

## 7. Next Sprint

### Carried Over Items

| Item | Priority |
|------|----------|
| TASK-AAA | P1 |

### Recommended Priorities

1. {Recommendation 1}
2. {Recommendation 2}
```

---

## Status Icons

| Status | Icon | Description |
|------|--------|------|
| Pending | 📋 | Not yet started |
| In Progress | 🔄 | Currently in progress |
| Complete | ✅ | Completed |
| On Hold | ⏸️ | Temporarily suspended |
| Blocked | ⚠️ / 🚫 | Blocked due to dependencies |
| Warning | ⚠️ | Attention needed |
