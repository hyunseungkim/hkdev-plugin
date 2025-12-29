---
description: Start new session - Load context and check status
allowed-tools: Bash(git:*), Bash(cat:*), Read, Glob
---

# Session Start

## Session File Structure

```
.work/
├── SESSION_LOG.md         # Main session log
├── PROGRESS.md            # Project progress status
├── CURRENT_TASK.md        # Current task information
└── tasks/                 # Task files
```

## Current Context

- **Git branch**: !`git branch --show-current 2>/dev/null || echo 'N/A'`
- **Git status**: !`git status --short 2>/dev/null | head -5`
- **Recent commits**: !`git log --oneline -5 2>/dev/null || echo 'No commits yet'`

## Progress Status

@.work/PROGRESS.md

## Current Task

@.work/CURRENT_TASK.md

## Session Number Rules

> **Important**: Session number only increments when starting a new session with `/hkdev:session:start`.

| Command | Session Number Change | Description |
|---------|----------------------|-------------|
| `/hkdev:session:start` | +1 increment | Start new session |
| `/hkdev:session:end` | No change | End current session |
| `/compact` | No change | Context compression only |
| `/hkdev:session:catchup` | No change | Context restoration only |
| Claude Code restart | No change | Same session continues |

> 📖 For details: See `session-management` skill

### How to Check Session Number

```bash
# Check last session number from SESSION_LOG.md
grep -oP 'Session #\K\d+' .work/SESSION_LOG.md | tail -1
```

## Instructions

1. Check "In Progress" items in PROGRESS.md
2. Identify tasks interrupted from previous session
3. Select Task to work on today
4. **Check session number: Last number in SESSION_LOG.md + 1**
5. Check context usage

## Session Checklist

- [ ] Check Git status (uncommitted changes)
- [ ] Check current Task status
- [ ] Verify Task files exist (create if `.work/tasks/backlog/` is empty)
- [ ] Set today's goals

## Output Format

Provide the following information when starting a session:

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
