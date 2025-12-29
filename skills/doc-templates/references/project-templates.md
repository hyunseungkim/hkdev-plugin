# Project Document Template Collection

> 3 templates for project management

---

## Table of Contents

1. [PDD (Project Definition Document)](#1-pdd-template)
2. [Roadmap](#2-roadmap-template)
3. [Phase Specification](#3-phase-specification-template)

---

## 1. PDD Template

```markdown
# Project Definition Document (PDD)

## Project Overview

| Item | Content |
|------|------|
| Project Name | {Project Name} |
| Version | 1.0 |
| Created | {YYYY-MM-DD} |
| Author | {Author} |
| Status | Draft / Review / Approved |

---

## 1. Vision and Goals

### 1.1 Vision

{Ultimate vision the project pursues}

### 1.2 Goals

1. {Goal 1}
2. {Goal 2}
3. {Goal 3}

### 1.3 Success Criteria

| Criteria | Measurement Method | Target Value |
|------|----------|--------|
| {Criteria 1} | {Method} | {Value} |
| {Criteria 2} | {Method} | {Value} |

---

## 2. Scope

### 2.1 In Scope

- {Included item 1}
- {Included item 2}

### 2.2 Out of Scope

- {Excluded item 1}
- {Excluded item 2}

---

## 3. Stakeholders

| Role | Person | Responsibility |
|------|--------|------|
| Project Owner | {Name} | {Responsibility} |
| Developer | {Name} | {Responsibility} |

---

## 4. Constraints

### 4.1 Technical Constraints

- {Technical constraint 1}

### 4.2 Business Constraints

- {Business constraint 1}

### 4.3 Schedule Constraints

- {Schedule constraint 1}

---

## 5. Risks

| Risk | Impact | Probability | Mitigation Strategy |
|--------|------|--------|----------|
| {Risk 1} | High/Medium/Low | High/Medium/Low | {Strategy} |

---

## 6. Technology Stack

| Category | Technology | Version |
|----------|------|------|
| Language | {Language} | {Version} |
| Framework | {Framework} | {Version} |
| Database | {DB} | {Version} |

---

## 7. Milestones

| Phase | Name | Goal | Expected Duration |
|-------|------|------|----------|
| Phase 1 | {Name} | {Goal} | {Duration} |
| Phase 2 | {Name} | {Goal} | {Duration} |

---

## 8. References

- [Roadmap](roadmap.md)
- [Architecture](../design/architecture/architecture-overview.md)

---

## Change History

| Version | Date | Changes | Author |
|------|------|----------|--------|
| 1.0 | {Date} | Initial creation | {Author} |
```

---

## 2. Roadmap Template

```markdown
# Project Roadmap

## Overview

| Item | Content |
|------|------|
| Project | {Project Name} |
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## Phase Overview

```
Phase 1          Phase 2          Phase 3          Phase 4
    │                │                │                │
    ▼                ▼                ▼                ▼
┌────────┐      ┌────────┐      ┌────────┐      ┌────────┐
│  MVP   │ ──▶  │ Expand │ ──▶  │ Enhance│ ──▶  │ Stable │
└────────┘      └────────┘      └────────┘      └────────┘
```

---

## Phase Details

### Phase 1: {Phase Name}

| Item | Content |
|------|------|
| Goal | {Goal} |
| Duration | {Duration} |
| Sprint Count | {N} |
| Status | 📋 Planned / 🔄 In Progress / ✅ Complete |

**Key Features:**
- {Feature 1}
- {Feature 2}

**Deliverables:**
- {Deliverable 1}
- {Deliverable 2}

---

### Phase 2: {Phase Name}

| Item | Content |
|------|------|
| Goal | {Goal} |
| Duration | {Duration} |
| Sprint Count | {N} |
| Status | 📋 Planned / 🔄 In Progress / ✅ Complete |

**Key Features:**
- {Feature 1}
- {Feature 2}

---

## Milestones

| Milestone | Phase | Date | Status |
|----------|-------|------|------|
| {Milestone 1} | Phase 1 | {Date} | ⬜/✅ |
| {Milestone 2} | Phase 2 | {Date} | ⬜/✅ |

---

## Dependencies

```
Phase 1 ──▶ Phase 2 ──▶ Phase 3
              │
              └──▶ Phase 4 (Parallel)
```

---

## Risks and Mitigation

| Risk | Phase | Mitigation Strategy |
|--------|-------|----------|
| {Risk 1} | Phase 1 | {Strategy} |

---

## Change History

| Version | Date | Changes |
|------|------|----------|
| 1.0 | {Date} | Initial creation |
```

---

## 3. Phase Specification Template

```markdown
# Phase {N} Specification: {Phase Name}

## Overview

| Item | Content |
|------|------|
| Phase | Phase {N} |
| Name | {Phase Name} |
| Duration | {Start Date} ~ {End Date} |
| Sprint Count | {N} |
| Status | 📋 Planned / 🔄 In Progress / ✅ Complete |

---

## Goals

### Core Goal

{Phase core goal in 1-2 sentences}

### Detailed Goals

1. {Detailed goal 1}
2. {Detailed goal 2}
3. {Detailed goal 3}

---

## Key Features

| Feature | Description | Priority |
|------|------|----------|
| {Feature 1} | {Description} | P0/P1/P2 |
| {Feature 2} | {Description} | P0/P1/P2 |

---

## Technical Requirements

### Functional Requirements

- {FR-001}: {Requirement description}
- {FR-002}: {Requirement description}

### Non-Functional Requirements

- {NFR-001}: {Requirement description}
- {NFR-002}: {Requirement description}

---

## Sprint Plan

| Sprint | Name | Duration | Goal | Status |
|--------|------|------|------|------|
| p{N}-s1 | {Name} | Week 1-2 | {Goal} | ⬜ |
| p{N}-s2 | {Name} | Week 3-4 | {Goal} | ⬜ |

---

## Deliverables

| Deliverable | Description | Assignee |
|--------|------|------|
| {Deliverable 1} | {Description} | {Assignee} |
| {Deliverable 2} | {Description} | {Assignee} |

---

## Dependencies

### Prerequisites

- {Prerequisite 1}
- {Prerequisite 2}

### Next Phase Impact

- {Impact 1}

---

## Risks

| Risk | Impact | Mitigation Strategy |
|--------|------|----------|
| {Risk 1} | High/Medium/Low | {Strategy} |

---

## Completion Criteria

- [ ] All Sprints complete
- [ ] Build successful
- [ ] Tests passed (coverage {X}% or higher)
- [ ] Documentation updated
- [ ] Review complete

---

## References

- [PDD](../pdd.md)
- [Roadmap](../roadmap.md)
- [Sprint Plan](phase{N}-sprints.md)
```
