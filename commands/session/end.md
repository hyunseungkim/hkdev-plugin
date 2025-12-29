---
description: End session - Record work and cleanup
allowed-tools: Bash(git:*), Read, Write, Edit
---

# Session End

## Instructions

Perform the following tasks when ending a session:

1. **Check current work status**
   - Check CURRENT_TASK.md status
   - Organize work in progress

2. **Organize completed Task list**
   - Check Tasks completed in this session
   - Update PROGRESS.md

3. **Update SESSION_LOG.md**
   - Add session end record
   - Record completed work
   - Note tasks for next session

4. **Organize incomplete work**
   - Save status of work in progress
   - Note work to continue in next session

## Session Log Update

Add to SESSION_LOG.md in the following format:

```markdown
### End
- **Time**: {HH:MM}
- **Completed**: {list of completed Tasks}
- **In Progress**: {Task in progress}
- **Next**: {tasks for next session}
```

## Output Format

```markdown
## Session #N Ended

**Date**: YYYY-MM-DD HH:MM
**Duration**: X hours

### Completed
- TASK-XXX: {title}
- TASK-YYY: {title}

### In Progress
- TASK-ZZZ: {title} ({progress}%)

### Next Session
- {tasks for next session}

### Notes
- {other notes}
```

## Checklist

- [ ] Work in progress saved
- [ ] Checked if commit needed
- [ ] PROGRESS.md updated
- [ ] SESSION_LOG.md updated
- [ ] Next session tasks noted
