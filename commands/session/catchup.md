---
description: Restore context - Quickly understand previous work
allowed-tools: Bash(git:*), Read, Glob
---

# Session Catchup

## Purpose

Quickly understand previous work after context is lost.

> **Important**: `/hkdev:session:catchup` does not change the session number.

## Instructions

1. **Check SESSION_LOG.md**
   - Check last session content
   - Identify work in progress

2. **Check Git log**
   - Check recent commit history
   - Understand last work done

3. **Check CURRENT_TASK.md**
   - Check current Task in progress
   - Check acceptance criteria

4. **Check PROGRESS.md**
   - Understand overall progress
   - Check Sprint status

## Context Load

### Recent Session Log

@.work/SESSION_LOG.md (recent section)

### Current Task

@.work/CURRENT_TASK.md

### Progress

@.work/PROGRESS.md

### Recent Commits

```bash
git log --oneline -10
```

## Output Format

```markdown
## Session Catchup Complete

**Current Session**: S#{N} (no change)
**Last Activity**: YYYY-MM-DD HH:MM

### Current Task
- **ID**: TASK-XXX
- **Title**: {title}
- **Status**: {status}
- **Progress**: {progress}%

### Recent Commits
1. {commit 1}
2. {commit 2}

### Context Summary
- {previous work summary}

### Ready to Continue
- {next work items}
```

## Notes

- Session number is not changed
- Restore previous context as much as possible
- Read additional related files if needed
