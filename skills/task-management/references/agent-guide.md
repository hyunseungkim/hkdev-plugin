# Task Agent Guide

## Agent Assignment Criteria

| Agent | Expertise | Task Examples | Tools |
|----------|----------|----------|------|
| **developer** | Feature implementation, bug fixing | API implementation, service logic | Read, Write, Edit, Bash, Glob, Grep |
| **devops** | Infrastructure, CI/CD | Docker, GitHub Actions | Read, Write, Edit, Bash, Glob, Grep |
| **architect** | Design, architecture | ADR, architecture documents | Read, Write, Edit, Glob, Grep |
| **qa-engineer** | Testing, quality verification | Integration testing, E2E | Read, Write, Edit, Bash, Glob, Grep |
| **tech-writer** | Documentation | README, API documentation | Read, Write, Edit, Glob, Grep |

---

## Agent Invocation Process

When starting a Task (`/hkdev:task:start`), invoke agents following this procedure:

```
1. Check assigned agent in Task file
   │
   ▼
2. Invoke corresponding agent with Task tool
   - subagent_type: {assigned agent}
   - prompt: Task requirements + completion criteria
   │
   ▼
3. Agent performs work
   │
   ▼
4. Verify work results and mark Task complete
```

---

## Task File Agent Assignment

```markdown
## Metadata

| Item | Value |
|------|-----|
| Assigned Agent | developer |  ← Required
```

**If no agent assigned**: Agent must be assigned before starting Task.

---

## Agent-Specific Tasks

### developer

- API endpoint implementation
- Service logic development
- Bug fixing
- Code refactoring
- Unit test writing

### devops

- Docker configuration
- CI/CD pipeline
- Environment variable setup
- Deployment scripts
- Monitoring setup

### architect

- ADR writing
- Architecture design documents
- Technology stack decisions
- System design review
- Domain model design

### qa-engineer

- Integration test writing
- E2E test writing
- Performance testing
- Test automation
- Quality reports

### tech-writer

- README writing/updating
- API documentation
- User guides
- Tutorial writing
- Release notes
