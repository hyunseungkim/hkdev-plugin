# Work Unit Detailed Definitions

## Project Definition

| Item | Definition |
|------|------|
| **Scope** | Entire product or major initiative |
| **Duration** | 6-12 months |
| **Release Count** | 2-4 |
| **Deliverable** | Completed product |
| **Completion Criteria** | All Releases complete, product launched |

---

## Release Definition

| Item | Definition |
|------|------|
| **Scope** | Deployable feature set |
| **Duration** | 2-4 months |
| **Phase Count** | 2-4 |
| **Deliverable** | Version release |
| **Completion Criteria** | All Phases complete, deployment ready |

---

## Phase Definition

| Item | Definition |
|------|------|
| **Scope** | Development stage for specific goal |
| **Duration** | 4-8 weeks (2-4 Sprints) |
| **Sprint Count** | 2-4 |
| **Deliverable** | Major feature completion |
| **Completion Criteria** | All Sprints complete, integration tests pass |

---

## Sprint Definition

| Item | Definition |
|------|------|
| **Scope** | Iterative development cycle |
| **Duration** | 2 weeks |
| **Task Count** | 5-15 |
| **Total Workload** | 20-40 hours |
| **Folder Format** | `p{Phase}-s{Sprint}-{description}` |
| **Required Files** | `sprint-overview.md` + individual Task files |
| **Completion Criteria** | All Tasks complete, build/tests pass |

### Sprint Types

| Type | Pattern | Description |
|------|------|------|
| Regular Sprint | `p{N}-s{M}` | Planned development cycle |
| Improvements Sprint | `p{N}-improvements` | Review-based improvements |
| Hotfix Sprint | `p{N}-hotfix` | Emergency fixes |

---

## Task Definition

| Item | Definition |
|------|------|
| **Scope** | Single clear deliverable |
| **Assignee** | Single agent |
| **Verification** | Independently verifiable |
| **File Format** | `TASK-{ID}.md` |
| **ID Format** | 3-digit number, globally unique |

### Task Size Classification

| Size | Code | Expected Time | Example |
|------|------|----------|------|
| **XS** | 1 | 30 min or less | Typo fix, config change |
| **S** | 2 | 30 min - 2 hours | API endpoint, single method |
| **M** | 3 | 2-4 hours | New controller, test suite |
| **L** | 4 | 4-8 hours | New service, major refactoring |
| **XL** | 5 | 1-2 days | **Split recommended** |

### Task Priority

| Priority | Description | Action Timing |
|----------|------|----------|
| **P0** | Critical - Blocker | Immediate |
| **P1** | High - Sprint goal | Required in Sprint |
| **P2** | Medium - Improvement | When time permits |
| **P3** | Low - Nice-to-have | Backlog |

---

## Agent Task Types

| Agent | Expertise | Task Examples |
|----------|----------|----------|
| **developer** | Feature implementation, bug fixing | API implementation, service logic |
| **devops** | Infrastructure, CI/CD | Docker, GitHub Actions |
| **tech-writer** | Documentation | README, API documentation |
| **qa-engineer** | Testing | Integration tests, E2E |
| **architect** | Design | ADR, architecture review |
