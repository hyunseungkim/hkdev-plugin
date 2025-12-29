---
description: Select next task - Priority-based recommendations
allowed-tools: Bash, Read, Glob
---

# Task Next

## Instructions

Recommend the next task based on priority.

1. **Check Current Sprint**
   - Check sprints in active/ folder
   - Check sprints in backlog/ folder

2. **List Pending Tasks**
   ```bash
   find .work/tasks/backlog -name "TASK-*.md" -exec grep -l "Pending" {} \;
   find .work/tasks/active -name "TASK-*.md" -exec grep -l "Pending" {} \;
   ```

3. **Sort by Priority**
   - P0 > P1 > P2 > P3
   - Check dependencies (whether prerequisite tasks are completed)

4. **Recommend Task**
   - Recommend highest priority task
   - Only recommend tasks with resolved dependencies

## Priority Order

| Priority | Description | When to Handle |
|----------|-------------|----------------|
| **P0** | Critical - Blocker | Immediate |
| **P1** | High - Sprint goal | Required within sprint |
| **P2** | Medium - Improvement | When time permits |
| **P3** | Low - Nice-to-have | Backlog |

## Output Format

```markdown
## Next Task Recommendations

### Top Priority

**TASK-{NNN}**: {title}
- Priority: {priority}
- Size: {size}
- Agent: {agent}
- Sprint: {sprint}

### Other Pending Tasks

| ID | Title | Priority | Size | Dependencies |
|----|-------|----------|------|--------------|
| TASK-XXX | ... | P1 | S | - |
| TASK-YYY | ... | P2 | M | TASK-XXX |

### Blocked Tasks
- TASK-ZZZ (waiting for TASK-XXX)

---

To start a task, use: `/task:start TASK-{NNN}`
```

## Notes

- Tasks with dependencies are recommended after prerequisite tasks are completed
- Current sprint tasks are recommended first
- Backlog sprint tasks are recommended after active sprint
