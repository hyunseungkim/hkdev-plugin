---
description: Start task - Load task context
allowed-tools: Bash(git:*), Read, Write, Edit, Glob
argument-hint: "[task-id]"
---

# Task Start

## Arguments

- `task-id`: Task ID (e.g., TASK-001)

## Instructions

1. **Find Task File**
   ```bash
   find .work/tasks -name "{task-id}.md" 2>/dev/null
   ```

2. **Load Task File**
   - Review task requirements
   - Check acceptance criteria
   - Review technical notes

3. **Update CURRENT_TASK.md**
   - Record current task information
   - Record start time

4. **Check Related Files**
   - Load related files specified in the task
   - Verify dependencies

## Task File Location

```bash
# Search for task files
find .work/tasks -name "TASK-*.md" | head -20
```

## CURRENT_TASK.md Update

```markdown
# Current Task

## Active Task

| Field | Value |
|-------|-------|
| ID | {task-id} |
| Title | {title} |
| Status | In Progress |
| Start Time | {YYYY-MM-DD HH:MM} |
| Sprint | {sprint-id} |

## Requirements

{Task requirements}

## Acceptance Criteria

{Acceptance criteria list}

## Progress

- [ ] Work started
- [ ] ...
```

## Output Format

```markdown
## Task Started: {task-id}

**Title**: {title}
**Priority**: {priority}
**Size**: {size}
**Agent**: {agent}

### Requirements
{Requirements summary}

### Acceptance Criteria
- [ ] {Criterion 1}
- [ ] {Criterion 2}

### Related Files
- `{file1}` - {Description}
- `{file2}` - {Description}

### Ready to Work
{Ready to start message}
```

## Subagent Invocation

> **Important**: Task work must be performed by the assigned subagent.

### Agent Invocation Procedure

1. **Check assigned agent in task file**
   ```markdown
   | Assigned Agent | developer |
   ```

2. **Invoke the agent using the Task tool**
   ```
   Use Task tool:
   - subagent_type: {assigned agent}  (e.g., developer, devops, architect, qa-engineer, tech-writer)
   - prompt: Pass task requirements and acceptance criteria
   ```

3. **Review results after agent completes work**

### Agent Specializations

| Agent | Specialization | Tools |
|-------|----------------|-------|
| **developer** | Feature implementation, bug fixes, unit tests | Read, Write, Edit, Bash, Glob, Grep |
| **devops** | Infrastructure, CI/CD, Docker | Read, Write, Edit, Bash, Glob, Grep |
| **architect** | Design, ADR, architecture documentation | Read, Write, Edit, Glob, Grep |
| **qa-engineer** | Testing, quality verification | Read, Write, Edit, Bash, Glob, Grep |
| **tech-writer** | Documentation, guides | Read, Write, Edit, Glob, Grep |

---

## Notes

- Change task status to "In Progress"
- Update CURRENT_TASK.md
- Load related context
- **Must delegate work to assigned agent**
