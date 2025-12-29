---
description: Complete task - Update status and cleanup
allowed-tools: Bash(git:*), Read, Write, Edit, Glob
---

# Task Complete

## Instructions

Mark the current task as complete.

1. **Check CURRENT_TASK.md**
   - Verify current task ID
   - Check acceptance criteria

2. **Verify Acceptance Criteria**
   - Confirm all checklist items are complete
   - Confirm build/tests pass

3. **Update Task File**
   - Change status to "Completed"
   - Write results section
   - Record completion time

4. **Move Task File**
   ```bash
   # Move from backlog to completed
   mv .work/tasks/backlog/{sprint}/{task}.md .work/tasks/completed/{sprint}/
   ```

5. **Reset CURRENT_TASK.md**

6. **Update PROGRESS.md**

7. **Perform Git Commit**
   - Stage changed files
   - Write commit message in Korean
   - Format: `{type}: {Task ID} - {work summary}`
   ```bash
   git add -A
   git commit -m "feat: TASK-001 - Implement user authentication feature"
   ```

8. **Check Sprint Completion**
   - Check if all tasks in the sprint are completed
   - Clean up sprint folder when completed

## Task File Update

Add results section to task file:

```markdown
## Results

**Completion Date**: YYYY-MM-DD
**Session**: S#{N}

### Changed Files
- `path/to/file1` - {Change description}
- `path/to/file2` - {Change description}

### Key Decisions
- {Decision 1}

### Follow-up Work
- {Follow-up task if any}
```

## Output Format

```markdown
## Task Completed: {task-id}

**Title**: {title}
**Completed**: YYYY-MM-DD HH:MM
**Session**: S#{N}

### Summary
{Work summary}

### Changes
- {Change 1}
- {Change 2}

### Files Modified
- `{file1}`
- `{file2}`

### Next Steps
- {Next steps or follow-up tasks}

---

Sprint Progress: {completed}/{total} tasks
```

## Sprint Completion Check

Check sprint completion after task completion:

```bash
# Check remaining tasks in backlog
ls .work/tasks/backlog/{sprint-folder}/

# If only sprint-overview.md remains, mark sprint as completed
```

When sprint is completed:
1. Move sprint-overview.md to completed
2. Delete empty backlog folder
3. Update PROGRESS.md

## Git Commit Guidelines

### Commit Types

| Type | Description |
|------|-------------|
| `feat` | New feature |
| `fix` | Bug fix |
| `refactor` | Code refactoring |
| `docs` | Documentation |
| `test` | Test code |
| `chore` | Build, configuration changes |

### Commit Message Format

```
{type}: {Task ID} - {work summary}

{detailed description (optional)}

Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>
```

### Example

```bash
git commit -m "feat: TASK-101 - Implement user login API

- Apply JWT token authentication
- Add error handling for login failure

Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>"
```

## Notes

- All acceptance criteria must be met before completion
- Resolve any unmet items before completing
- Sprint folder is automatically cleaned up on sprint completion
- **Must perform git commit when completing a task**
