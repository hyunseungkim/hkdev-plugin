---
description: Project initialization - Collect information through conversation and auto-generate structure and documents
allowed-tools: Bash, Read, Write, Edit, Glob, AskUserQuestion
argument-hint: "<project description>"
---

# Project Init - Interactive Project Initialization

## Overview

Extract as much project information as possible from the user's prompt, collect missing information through conversation, then auto-generate the project structure and initial document versions.

## Phase 1: Information Extraction

Extract the following information from the user's prompt:

### Required Information
| Item | Extraction Keywords | Default |
|------|---------------------|---------|
| Project Name | name, title, project | folder name |
| Purpose | for ~, to ~, purpose | required question |
| Type | web app, API, CLI, library, etc. | required question |

### Optional Information
| Item | Extraction Keywords |
|------|---------------------|
| Tech Stack | Python, TypeScript, React, etc. |
| Target Users | users, customers, developers, etc. |
| Core Features | feature, can ~, supports ~ |
| Constraints | constraint, limitation, without ~ |
| Timeline | weeks, months, deadline |

## Phase 2: Additional Questions (Missing Information)

Use AskUserQuestion for missing required information:

```
Example questions:
- "What is the main purpose of this project?"
- "What type of application is this? (web app/API/CLI/library)"
- "What is the main tech stack?"
- "Who are the primary users?"
```

## Phase 3: Structure Generation

### Directory Structure
```bash
# Documentation structure
mkdir -p docs/{project/phases,adr,design/{architecture,domain,features,ux,api,deployment,configuration},guides/{development,operations},runbooks,playbooks,knowledge}

# Source/tests/deployment
mkdir -p src tests deploy scripts tools

# Work management
mkdir -p .work/tasks/{active,backlog,completed}

# Claude configuration
mkdir -p .claude/context
```

## Phase 4: Document Auto-Generation

Based on collected information, auto-generate **initial versions** of the following documents:

### 1. README.md
Project overview, purpose, getting started guide

### 2. CLAUDE.md
Claude Code main context

### 3. docs/project/pdd.md
**Project Definition Document** - Filled with collected information:
- Project name, purpose, goals
- Target users, core features
- Tech stack, constraints
- Success metrics (marked as TODO)

### 4. docs/project/roadmap.md
**Roadmap** - Based on timeline information:
- Phase structure (default 3 Phases)
- Milestones (marked as TODO)

### 5. docs/design/architecture/overview.md
**Architecture Overview** - Based on tech stack:
- System type
- Tech stack summary
- Component structure (TODO)

### 6. docs/adr/ADR-001-{stack}-selection.md
**First ADR** - Rationale for tech stack selection

### 7. docs/design/ux/user-personas.md
**User Personas** - Draft based on target users

### 8. docs/project/phases/phase1-spec.md
**Phase 1 Spec** - Based on initial features

### 9. .work/PROGRESS.md, SESSION_LOG.md, CURRENT_TASK.md
Work management files

## Phase 5: Completion Report

```markdown
## Project Initialization Complete: {project-name}

### Generated Documents
| Document | Status | Next Steps |
|----------|--------|------------|
| README.md | Created | Add detailed content |
| PDD | Draft | Define success metrics |
| Roadmap | Draft | Detail milestones |
| Architecture | Draft | Design components |
| ADR-001 | Created | - |
| User Persona | Draft | Refine with interviews |
| Phase 1 Spec | Draft | Detail features |

### Recommended Next Steps
1. Review and refine `docs/project/pdd.md`
2. Specify milestones in `docs/project/roadmap.md`
3. Start first session with `/hkdev:session:start`
4. Start first task with `/hkdev:task:start`

### Guide
- `/hkdev:project:guide` - Check plugin usage
- `/hkdev:session:catchup` - Review progress
```

## Prompt Processing Examples

### Input Example 1
> "I want to create a Python FastAPI-based REST API service for user authentication and authorization. I plan to use JWT token-based authentication and PostgreSQL as the database."

**Extracted Information:**
- Type: REST API
- Purpose: User authentication and authorization
- Tech Stack: Python, FastAPI, JWT, PostgreSQL
- Core Features: Authentication, authorization

**Additional Questions:**
- Project name?
- Primary users? (other services? end users?)

### Input Example 2
> "I want to build a dashboard web app using React and TypeScript"

**Extracted Information:**
- Type: Web app (dashboard)
- Tech Stack: React, TypeScript

**Additional Questions:**
- Project name?
- Dashboard purpose? (what to monitor?)
- Primary users?
- Backend API integration?

## Notes

- Do not overwrite existing files
- All generated documents are marked as "draft" status
- Use TODO markers for items needing additional work
- Use reasonable defaults if user doesn't provide information
