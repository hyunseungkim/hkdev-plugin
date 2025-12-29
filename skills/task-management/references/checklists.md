# Task Checklists

## Pre-Task Design Document Review

Review relevant design documents before writing Task:

| Task Type | Document to Check | What to Check |
|----------|----------|----------|
| Feature implementation | `docs/design/feature/` | Feature spec, API spec |
| Domain logic | `docs/design/domain/` | Domain model, business rules |
| UI/UX | `docs/design/ux/` | Screen design, user flows |
| Infrastructure/deployment | `docs/design/deployment/` | Deployment config, environment settings |
| Architecture | `docs/adr/` | Technical decisions, constraints |

### Review Procedure

```
1. Identify design documents related to Task
2. Extract requirements from design documents
3. Write completion criteria based on design documents
4. Specify reference documents in technical notes
```

---

## Task Creation Checklist

- [ ] **Related design document review complete**
- [ ] Task ID duplication check
- [ ] Sprint folder existence check
- [ ] All template fields filled
- [ ] Agent assigned
- [ ] Size estimated
- [ ] Priority set
- [ ] **Reference documents specified**
- [ ] sprint-overview.md updated (if applicable)

---

## Task Completion Verification Checklist

### Functional Verification

- [ ] Requirements met (per design document)
- [ ] Build successful
- [ ] Tests passed
- [ ] Code review completed (if applicable)

### Design Consistency Verification

- [ ] Implementation matches design document
- [ ] ADR decisions followed
- [ ] Interface specs followed (API, types, etc.)

### Documentation Verification

- [ ] Result section written
- [ ] Changed file list recorded
- [ ] Follow-up tasks identified (if any)

---

## File Location Rules

| Status | Location |
|------|------|
| Pending | `.work/tasks/backlog/{sprint-id}/TASK-{NNN}.md` |
| In Progress | `.work/tasks/active/TASK-{NNN}.md` (or stay in backlog) |
| Complete | `.work/tasks/completed/{sprint-id}/TASK-{NNN}.md` |
