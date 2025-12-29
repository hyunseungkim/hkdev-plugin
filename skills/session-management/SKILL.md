---
name: session-management
description: |
  This skill should be used when the user asks to "start session", "end session",
  "restore context", "session log", "session numbering", or needs guidance on
  session lifecycle management, context loading, and session log handling.
---

# Session Management Skill

> Session management and context guide

---

## Session File Structure

```
.work/
+-- SESSION_LOG.md         # Main session log
+-- PROGRESS.md            # Project progress status
+-- CURRENT_TASK.md        # Current task info
+-- tasks/                 # Task files
    +-- active/
    +-- backlog/
    +-- completed/
```

---

## Session Number Rules

| Command | Session Number Change | Description |
|---------|----------------------|-------------|
| `/hkdev:session:start` | +1 increment | Start new session |
| `/hkdev:session:end` | No change | End current session |
| `/compact` | No change | Context compression only |
| `/hkdev:session:catchup` | No change | Context restoration only |
| Claude Code restart | No change | Same session maintained |

### How to Check Session Number

```bash
# Check last session number from SESSION_LOG.md
grep -oP 'Session #\K\d+' .work/SESSION_LOG.md | tail -1

# Check recent session number from Git log
git log --oneline -5 | grep -oE '\[S#[0-9]+\]' | head -1
```

---

## Session Start Workflow

### When /session:start is executed

1. Check Git status (uncommitted changes)
2. Check current Task status
3. Load PROGRESS.md
4. Load CURRENT_TASK.md
5. Increment session number +1
6. Record new session in SESSION_LOG.md

### Output Format

```markdown
## Session #N Started

**Date**: YYYY-MM-DD HH:MM
**Branch**: {branch_name}
**Continuing Task**: {task_id} or "New task selection needed"

### Today's Goals
1. ...
2. ...

### Notes
- ...
```

---

## Session End Workflow

### When /session:end is executed

1. Check current work status
2. Organize completed Tasks list
3. Record session end in SESSION_LOG.md
4. Update PROGRESS.md
5. Organize incomplete work

### Output Format

```markdown
## Session #N Ended

**Date**: YYYY-MM-DD HH:MM
**Duration**: X hours

### Completed
- TASK-XXX: {title}

### In Progress
- TASK-YYY: {title} ({progress}%)

### Notes
- ...
```

---

## Context Restoration Workflow

### When /session:catchup is executed

1. Read previous session log
2. Check recent commit history
3. Check CURRENT_TASK.md status
4. Understand work continuity
5. **Maintain** session number (do not increment)

---

## Session Checklists

### Before Session Start

- [ ] Check Git status (uncommitted changes)
- [ ] Check current Task status
- [ ] Check infrastructure status (if needed)
- [ ] Set today's goals

### Before Session End

- [ ] Save work in progress
- [ ] Check if commit needed
- [ ] Update PROGRESS.md
- [ ] Note next session work

---

## SESSION_LOG.md Format

```markdown
# Session Log

## Session #45 - 2025-01-15

### Start
- **Time**: 09:00
- **Branch**: feature/new-api
- **Task**: TASK-123

### Progress
- 09:30 - Started API endpoint implementation
- 11:00 - Test writing completed
- 12:00 - Lunch

### End
- **Time**: 18:00
- **Completed**: TASK-123
- **Next**: TASK-124

---

## Session #44 - 2025-01-14
...
```

---

## Commit Message Session Format

```
[S#{current_session}] type(scope): description
```

**Examples**:
- `[S#45] feat(api): Add user authentication endpoint`
- `[S#45] fix(db): Resolve connection timeout issue`

---

## Cases Where Session Number Should NOT Change

The session number should not be changed in these situations:

1. After executing `/compact` command
2. After executing `/hkdev:session:catchup` command
3. After Claude Code restart
4. When conversation continues
5. When resuming conversation after context summary

---

## Related Commands

| Command | Description |
|---------|-------------|
| `/hkdev:session:start` | Start session - Status check, session number +1 |
| `/hkdev:session:end` | End session - Save status, record log |
| `/hkdev:session:catchup` | Restore context - Load previous session info |

---

## Related Documents

- Work units definition: `work-units` skill
- Task management: `task-management` skill
