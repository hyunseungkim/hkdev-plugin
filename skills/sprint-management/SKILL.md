---
name: sprint-management
description: |
  This skill should be used when the user asks to "create sprint", "plan sprint",
  "start sprint", "complete sprint", "sprint progress", or needs guidance on
  Sprint lifecycle management including planning, task breakdown, execution tracking,
  and completion handling.
---

# Sprint Management Skill

> Sprint planning, execution, and completion management guide

---

## Sprint Folder Structure

```
.work/tasks/
+-- active/              # In-progress Sprint
+-- backlog/             # Pending Sprint
|   +-- p{N}-s{M}[-desc]/
|       +-- sprint-overview.md   # Required
|       +-- TASK-{NNN}.md
+-- completed/           # Completed Sprint
```

---

## Sprint ID Naming Convention

| Type | Pattern | Example |
|------|---------|---------|
| Regular Sprint | `p{N}-s{M}` or `p{N}-s{M}-{desc}` | `p1-s1`, `p2-s10-api-completion` |
| Improvement Sprint | `p{N}-s{M}-improvements` | `p2-s16-improvements` |
| Hotfix | `p{N}-hotfix[-scope]` | `p2-hotfix-security` |

---

## Sprint Creation Procedure

### 1. Create Sprint Folder

```bash
mkdir -p .work/tasks/backlog/{sprint-id}-{description}/
```

### 2. Create sprint-overview.md

Create overview file in Sprint folder (see `references/templates.md` for template)

### 3. Create Task Files

Create Task files in batch (see `task-management` Skill)

---

## Sprint Planning Essentials

### Pre-review Design Documents (Required)

Before Sprint planning, always check project planning/design documents:
- `docs/project/pdd.md` - Project goals
- `docs/project/roadmap.md` - Phase goals
- `docs/design/` - Design documents

### Task Breakdown Principles

| Criterion | Description |
|-----------|-------------|
| **Single Deliverable** | One Task = One clear deliverable |
| **Independent Verification** | Can be tested independently after completion |
| **Appropriate Size** | S-M size recommended (30min-4hours) |
| **Agent Assignment Required** | Specify responsible sub-agent for each Task |

### Agent Assignment Guide

| Agent | Assignment Criteria |
|-------|---------------------|
| **developer** | Code implementation, bug fixes |
| **devops** | Infrastructure, deployment, environment setup |
| **architect** | Design decisions, ADR writing |
| **qa-engineer** | Test writing, quality verification |
| **tech-writer** | Documentation, guide writing |

---

## Sprint Completion Processing

### Completion Conditions

- All Tasks completed
- Build/tests passing
- Only sprint-overview.md remains

### Completion Procedure

1. Update sprint-overview.md status
2. Move to completed folder
3. **Perform Git Commit**

```bash
git commit -m "chore: p2-s10 complete - API endpoint implementation done"
```

---

## Additional Resources

### Reference Files

See `references/` for detailed guides:

- **`references/templates.md`** - Sprint Overview, Review, Retrospective templates
- **`references/estimation.md`** - Workload estimation guide
- **`references/completion-guide.md`** - Completion processing details and checklists

### Example Files

See `examples/` for complete examples:

- **`examples/sample-sprint-overview.md`** - Actual Sprint document example (p1-s2)

---

## Related Documents

- Work units definition: `work-units` skill
- Task management: `task-management` skill
