---
name: work-units
description: |
  This skill should be used when the user asks about "work unit definition",
  "Project/Release/Phase/Sprint/Task hierarchy", "size classification", "status flow",
  or needs guidance on work unit hierarchy structure, size criteria, and state
  transitions.
---

# Work Units Definition

> Clear definition and classification criteria for Project, Release, Phase, Sprint, Task

---

## Hierarchy Structure

```
Project (6-12 months)
+-- Release (2-4 months)
    +-- Phase (4-8 weeks)
        +-- Sprint (2 weeks)
            +-- Task (30min-8hours)
```

---

## Work Unit Summary

| Unit | Duration | Sub-units | Example |
|------|----------|-----------|---------|
| Project | 6-12 months | 2-4 Releases | MVP |
| Release | 2-4 months | 2-4 Phases | Release 1.0 |
| Phase | 4-8 weeks | 2-4 Sprints | Phase 1: Data Collection |
| Sprint | 2 weeks | 5-15 Tasks | p1-s1 |
| Task | 30min-8hours | - | TASK-001 |

---

## Task Size Classification

| Size | Estimated Time | Example |
|------|----------------|---------|
| **XS** | Under 30min | Typo fix, config change |
| **S** | 30min-2hours | API endpoint, single method |
| **M** | 2-4hours | New controller, test suite |
| **L** | 4-8hours | New service, major refactoring |
| **XL** | 1-2days | **Split recommended** |

---

## Task Priority

| Priority | Description | Handling Timing |
|----------|-------------|-----------------|
| **P0** | Critical - Blocker | Immediate |
| **P1** | High - Sprint goal | Required in Sprint |
| **P2** | Medium - Improvement | When time permits |
| **P3** | Low - Nice-to-have | Backlog |

---

## Work Status

| Status | Icon | Folder |
|--------|------|--------|
| Pending | (backlog icon) | `backlog/` |
| In Progress | (progress icon) | `active/` |
| Blocked | (warning icon) | `active/` |
| Completed | (check icon) | `completed/` |

---

## Naming Conventions

| Item | Pattern | Example |
|------|---------|---------|
| Sprint folder | `p{N}-s{M}-{desc}` | `p2-s10-api` |
| Task ID | `TASK-{NNN}` | `TASK-307` |
| Session | `S#{N}` | `S#45` |

---

## Additional Resources

### Reference Files

See `references/` for detailed guides:

- **`references/definitions.md`** - Detailed definition of each work unit, Task types by agent
- **`references/state-flow.md`** - State transition diagram, file location rules

### Example Files

See `examples/` for complete examples:

- **`examples/sample-hierarchy.md`** - E-Commerce project hierarchy structure example
- **`examples/sample-task.md`** - M-size Task example (Login API implementation)

---

## Related Documents

- Sprint management: `sprint-management` skill
- Task management: `task-management` skill
- Session management: `session-management` skill
