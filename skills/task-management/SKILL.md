---
name: task-management
description: |
  This skill should be used when the user asks to "create task", "new task",
  "task template", "batch create tasks", "convert to task", or needs guidance on
  Task creation, file generation, batch creation, and template application.
---

# Task Management Skill

> Task creation and management guide

---

## Task Creation Procedure

### 0. Pre-review Design Documents (Required)

Before writing Tasks, always check related design documents:
- `docs/design/feature/` - Feature specifications
- `docs/design/domain/` - Domain models
- `docs/adr/` - Technical decisions

### 1. Check Task ID

```bash
find .work/tasks -name "TASK-*.md" | sed 's/.*TASK-//' | sed 's/.md//' | sort -n | tail -1
```

### 2. Create Task File

```bash
# Check/create Sprint folder
mkdir -p .work/tasks/backlog/{sprint-id}/

# Create Task file
# .work/tasks/backlog/{sprint-id}/TASK-{NNN}.md
```

---

## Task File Key Fields

| Field | Required | Description |
|-------|----------|-------------|
| Status | Yes | Pending / In Progress / Completed |
| Priority | Yes | P0-P3 |
| Size | Yes | XS / S / M / L |
| Assigned Agent | Yes | developer / devops / architect / qa-engineer / tech-writer |
| Sprint | Yes | p{N}-s{M} |
| Requirements | Yes | Specific requirements |
| Completion Criteria | Yes | Checklist format |

---

## Task Size Classification

| Size | Time | Example |
|------|------|---------|
| **XS** | Under 30min | Typo fix, config change |
| **S** | 30min-2hours | API endpoint, single method |
| **M** | 2-4hours | New controller, test suite |
| **L** | 4-8hours | New service, major refactoring |
| **XL** | 1-2days | **Split recommended** |

---

## Agent Assignment Guide

| Agent | Assignment Criteria |
|-------|---------------------|
| **developer** | Feature implementation, bug fixes |
| **devops** | Infrastructure, CI/CD |
| **architect** | Design, ADR |
| **qa-engineer** | Testing, quality verification |
| **tech-writer** | Documentation |

---

## File Location Rules

| Status | Location |
|--------|----------|
| Pending | `.work/tasks/backlog/{sprint-id}/TASK-{NNN}.md` |
| In Progress | `.work/tasks/active/TASK-{NNN}.md` |
| Completed | `.work/tasks/completed/{sprint-id}/TASK-{NNN}.md` |

---

## Additional Resources

### Reference Files

See `references/` for detailed guides:

- **`references/templates.md`** - Task file template, size/priority definitions
- **`references/agent-guide.md`** - Specialized Tasks by agent and invocation methods
- **`references/checklists.md`** - Creation/completion checklists

### Example Files

See `examples/` for complete examples:

- **`examples/sample-task-xs.md`** - XS size Task example (typo fix)
- **`examples/sample-task-l.md`** - L size Task example (service refactoring)

---

## Related Commands

| Command | Description |
|---------|-------------|
| `/hkdev:task:start` | Start Task - Load context, change status |
| `/hkdev:task:complete` | Complete Task - Verify, record result, Git commit |
| `/hkdev:task:next` | Recommend next Task - Priority-based |

---

## Related Documents

- Work units definition: `work-units` skill
- Sprint management: `sprint-management` skill
