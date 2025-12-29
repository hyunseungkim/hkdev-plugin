# Work Units Hierarchy Example: E-Commerce Project

> Practical example of Project -> Release -> Phase -> Sprint -> Task hierarchy structure

---

## Project Overview

| Item | Value |
|------|-------|
| Project | E-Commerce Platform v1.0 |
| Duration | 2025-01 ~ 2025-09 (9 months) |
| Releases | 3 |
| Goal | Build online shopping mall platform |

---

## Hierarchy Diagram

```
Project: E-Commerce Platform v1.0 (9 months)
|
+-- Release 1: MVP (3 months)
|   +-- Phase 1: User Authentication (4 weeks)
|   |   +-- Sprint p1-s1: Basic Auth (2 weeks)
|   |   |   +-- TASK-001: Sign-up API [M, developer]
|   |   |   +-- TASK-002: Login API [M, developer]
|   |   |   +-- TASK-003: JWT Token Implementation [S, developer]
|   |   |   +-- TASK-004: Authentication Tests [S, qa-engineer]
|   |   |
|   |   +-- Sprint p1-s2: Token Management (2 weeks)
|   |       +-- TASK-005: Token Refresh API [S, developer]
|   |       +-- TASK-006: Logout API [S, developer]
|   |       +-- TASK-007: Token Blacklist [M, developer]
|   |       +-- TASK-008: API Documentation [S, tech-writer]
|   |
|   +-- Phase 2: Product Management (4 weeks)
|       +-- Sprint p2-s1: Product CRUD (2 weeks)
|       |   +-- TASK-009: Product Entity Design [S, architect]
|       |   +-- TASK-010: Product Create API [M, developer]
|       |   +-- TASK-011: Product Query API [M, developer]
|       |   +-- TASK-012: Product Tests [M, qa-engineer]
|       |
|       +-- Sprint p2-s2: Category & Search (2 weeks)
|           +-- TASK-013: Category API [M, developer]
|           +-- TASK-014: Product Search API [M, developer]
|           +-- TASK-015: Search Index Setup [L, devops]
|
+-- Release 2: Core Features (3 months)
|   +-- Phase 3: Shopping Cart (4 weeks)
|   |   +-- Sprint p3-s1 ~ p3-s2
|   |
|   +-- Phase 4: Order/Payment (4 weeks)
|       +-- Sprint p4-s1 ~ p4-s2
|
+-- Release 3: Enhancement (3 months)
    +-- Phase 5: Review System (4 weeks)
    |   +-- Sprint p5-s1 ~ p5-s2
    |
    +-- Phase 6: Recommendation System (4 weeks)
        +-- Sprint p6-s1 ~ p6-s2
```

---

## Detailed Example: Phase 1

### Phase 1 Definition

| Item | Value |
|------|-------|
| Phase | Phase 1: User Authentication |
| Duration | 2025-01-06 ~ 2025-02-02 (4 weeks) |
| Sprints | 2 |
| Goal | Build JWT-based user authentication system |
| Acceptance Criteria | Complete sign-up, login, token management APIs |

### Sprint p1-s1 Details

| Item | Value |
|------|-------|
| Sprint ID | p1-s1 |
| Name | Basic Auth |
| Duration | 2025-01-06 ~ 2025-01-17 (2 weeks) |
| Tasks | 4 |
| Total Effort | ~20 hours |

#### Task List

| ID | Title | Size | Assignee | Priority | Status |
|----|-------|------|----------|----------|--------|
| TASK-001 | Implement Sign-up API | M (2-4h) | developer | P1 | Completed |
| TASK-002 | Implement Login API | M (2-4h) | developer | P1 | Completed |
| TASK-003 | Implement JWT Token Issuance | S (1-2h) | developer | P1 | Completed |
| TASK-004 | Write Authentication Unit Tests | S (1-2h) | qa-engineer | P2 | Completed |

---

## Task Examples by Size

### XS (30 minutes or less)

```markdown
TASK-050: Fix README Typos
- Assignee: tech-writer
- Work: Fix "Instalation" to "Installation"
```

### S (30 minutes - 2 hours)

```markdown
TASK-003: Implement JWT Token Issuance
- Assignee: developer
- Work: JWT library integration and token generation logic
```

### M (2-4 hours)

```markdown
TASK-001: Implement Sign-up API
- Assignee: developer
- Work: Endpoint, validation, service logic, unit tests
```

### L (4-8 hours)

```markdown
TASK-015: Search Index Setup
- Assignee: devops
- Work: Elasticsearch cluster setup, index design, sync pipeline
```

### XL (1-2 days) -> Should be split

```markdown
TASK-099: Payment System Integration (before split)
-> After split:
  TASK-099-1: Payment Gateway Integration [L]
  TASK-099-2: Payment Status Management [M]
  TASK-099-3: Payment Testing [M]
```

---

## Status Flow

### Sprint Status

```
Planned -> In Progress -> Completed
              |
           On Hold
```

### Task Status

```
Pending -> In Progress -> Completed
   |           |
 Blocked    On Hold
```

---

## Folder Structure

```
.work/tasks/
+-- active/
|   +-- p1-s2-token-management/
|       +-- sprint-overview.md
|       +-- TASK-005.md
|       +-- TASK-006.md
|       +-- TASK-007.md
|       +-- TASK-008.md
|
+-- backlog/
|   +-- p2-s1-product-crud/
|       +-- sprint-overview.md
|       +-- TASK-009.md
|       +-- TASK-010.md
|       +-- TASK-011.md
|       +-- TASK-012.md
|
+-- completed/
    +-- p1-s1-basic-auth/
        +-- sprint-overview.md
        +-- TASK-001.md
        +-- TASK-002.md
        +-- TASK-003.md
        +-- TASK-004.md
```

---

## Task Distribution by Agent

| Agent | Specialty | Task Examples | Ratio |
|-------|-----------|---------------|-------|
| **developer** | Feature Implementation | API implementation, service logic | 50% |
| **architect** | Design | Domain design, ADR writing | 15% |
| **qa-engineer** | Testing | Unit/integration tests | 15% |
| **devops** | Infrastructure | CI/CD, cluster setup | 10% |
| **tech-writer** | Documentation | API docs, README | 10% |

---

## Related Documents

- Project Definition: `docs/project/pdd.md`
- Roadmap: `docs/project/roadmap.md`
- Phase Specs: `docs/project/phases/`
- Sprint Management: `.work/tasks/`
