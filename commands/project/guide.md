---
description: Plugin usage guide, command list, and prompt examples
allowed-tools: Read
argument-hint: "[topic]"
---

# Guide - Plugin Guide

## Arguments

- `topic`: Specific topic (optional)
  - `commands` - Command list
  - `prompts` - Prompt examples
  - `workflow` - Workflow guide
  - `templates` - Template list

---

## Default Help Output

```markdown
# hkdev Plugin

A Claude Code plugin that supports systematic project development processes.

## Plugin Usage

### Commands (Slash Commands)
Invoked directly by users. **Must use `/hkdev:` prefix**

### Skills (8)
**Auto-invoked** by Claude based on context. No need for user invocation.

### Agents (5)
**Auto-selected** by Claude based on task nature.

## Quick Start

### 1. Start a New Project
Describe your project naturally and the structure and documents will be auto-generated:

> /hkdev:project:init I want to create a user authentication API using Python FastAPI.
> I plan to use JWT-based authentication and PostgreSQL.

### 2. Start a Session
> /hkdev:session:start

### 3. Start a Task
> /hkdev:task:start Implement user registration API

## Main Commands

| Command | Description |
|---------|-------------|
| `/hkdev:project:init <description>` | Initialize project (interactive) |
| `/hkdev:session:start` | Start session |
| `/hkdev:session:end` | End session |
| `/hkdev:session:catchup` | Restore context |
| `/hkdev:task:start [id]` | Start task |
| `/hkdev:task:next` | Recommend next task |
| `/hkdev:task:complete` | Complete task |
| `/hkdev:project:guide [topic]` | Guide |

## Workflow

```
Project Start
    │
    ▼
/hkdev:project:init ────────────────────┐
    │                                   │
    ▼                                   │
[Collect info through conversation]     │
    │                                   │
    ▼                                   │
[Auto-generate structure + documents]   │
    │                                   │
    ▼                                   │
/hkdev:session:start ◄──────────────────┘
    │
    ▼
/hkdev:task:start
    │
    ▼
[Perform work]
    │
    ▼
/hkdev:task:complete
    │
    ▼
/hkdev:session:end
```

## Detailed Guides

- `/hkdev:project:guide commands` - Command details
- `/hkdev:project:guide prompts` - Prompt examples
- `/hkdev:project:guide workflow` - Workflow guide
- `/hkdev:project:guide templates` - Template list
```

---

## topic: commands

```markdown
# Command Details

## Project Management

### /hkdev:project:init <project description>
Initializes a project. Extracts information from the description and asks questions for missing information.

**What gets created:**
- Folder structure (docs, src, tests, deploy, scripts, tools, .work)
- README.md, CLAUDE.md
- PDD (Project Definition Document) draft
- Roadmap draft
- Architecture Overview draft
- First ADR
- User Persona draft
- Phase 1 spec draft

## Session Management

### /hkdev:session:start
Starts a new work session.
- Check current project status
- Load in-progress tasks
- Check Git status

### /hkdev:session:end
Ends the session.
- Save task status
- Update SESSION_LOG
- Save context for next session

### /hkdev:session:catchup
Restores context from the previous session.
- Read PROGRESS.md
- Check recent SESSION_LOG
- Review current task status

## Task Management

### /hkdev:task:start [task-id]
Starts a task.
- With task-id: Start that task
- Without task-id: Check current task or create new one

### /hkdev:task:next
Recommends the next task based on priority.
- Select high-priority task from backlog
- Check dependencies

### /hkdev:task:complete
Completes the current task.
- Update task status
- Move to completed folder
- Update PROGRESS.md
```

---

## topic: prompts

```markdown
# Prompt Examples

## Project Initialization

### Example 1: API Service
> /hkdev:project:init I want to create a Python FastAPI-based REST API service
> for user authentication and authorization. I plan to use JWT token-based
> authentication and PostgreSQL as the database.
> It will be part of a microservices architecture, called by other services.

**Extracted information:**
- Type: REST API (microservice)
- Purpose: User authentication and authorization
- Tech Stack: Python, FastAPI, JWT, PostgreSQL
- Users: Other services

### Example 2: Web Application
> /hkdev:project:init I want to build a real-time stock trading dashboard
> using React and TypeScript. Individual investors should be able to manage
> their portfolios and monitor market data. I'll receive real-time data
> via WebSocket.

**Extracted information:**
- Type: Web app (dashboard)
- Purpose: Stock trading monitoring and portfolio management
- Tech Stack: React, TypeScript, WebSocket
- Users: Individual investors
- Core Features: Portfolio management, market data monitoring, real-time updates

### Example 3: CLI Tool
> /hkdev:project:init I want to create a project scaffolding CLI tool
> for developers using Go. It should support project templates for various
> languages and frameworks, with customization through configuration files.

**Extracted information:**
- Type: CLI tool
- Purpose: Project scaffolding
- Tech Stack: Go
- Users: Developers
- Core Features: Project templates, customization

### Example 4: Simple Start
> /hkdev:project:init make a todo app

**Additional questions generated:**
- Web app? Mobile? CLI?
- Tech stack?
- Main features?

## Session Start

### Example: With Context
> /hkdev:session:start I was working on the user registration API yesterday and stopped midway

### Example: Fresh Start
> /hkdev:session:start

## Task Start

### Example: Specific Task
> /hkdev:task:start Implement user registration API - include email validation

### Example: Continue Existing Task
> /hkdev:task:start TASK-003
```

---

## topic: workflow

```markdown
# Workflow Guide

## Project Lifecycle

### Stage 1: Project Definition
```
/hkdev:project:init <detailed description>
```
- Auto-generate PDD, Roadmap, Architecture drafts
- Collect additional information through conversation if needed

### Stage 2: Design Refinement
Review and refine generated documents:
- `docs/project/pdd.md` - Add success metrics
- `docs/project/roadmap.md` - Specify milestones
- `docs/design/architecture/overview.md` - Detail components

### Stage 3: Sprint Planning
```
Phase 1 → Sprint 1, 2, 3...
```
- Create Tasks in `.work/tasks/backlog/`
- Set priorities

### Stage 4: Development Cycle
```
/hkdev:session:start
    ↓
/hkdev:task:start
    ↓
[Development work]
    ↓
/hkdev:task:complete
    ↓
/hkdev:session:end
```

## Daily Workflow

### Morning: Start Session
```
/hkdev:session:start
or
/hkdev:session:catchup (when there's interrupted work)
```

### During Work
```
/hkdev:task:start [task-id]
... work ...
/hkdev:task:complete
/hkdev:task:next
```

### Evening: End Session
```
/hkdev:session:end
```

## Documentation Workflow

### Writing ADRs
1. When a technical decision is needed
2. Create `docs/adr/ADR-NNN-title.md`
3. Template: `templates/adr/ADR-TEMPLATE.md`

### Feature Design
1. Before developing a new feature
2. Create `docs/design/features/feature-name.md`
3. Template: `templates/design/feature-design.md`

### Sprint Documents
1. Sprint start: `sprint-planning.md`
2. During sprint: Update `sprint-progress.md`
3. Sprint end: `sprint-review.md`, `sprint-retrospective.md`
```

---

## topic: templates

```markdown
# Template List

## Project (3)
| Template | Purpose |
|----------|---------|
| `templates/project/pdd.md` | Project Definition Document |
| `templates/project/roadmap.md` | Roadmap |
| `templates/project/phase-spec.md` | Phase Spec |

## ADR (1)
| Template | Purpose |
|----------|---------|
| `templates/adr/ADR-TEMPLATE.md` | Architecture Decision Record |

## Design (7)
| Template | Purpose |
|----------|---------|
| `architecture-overview.md` | Architecture Overview |
| `domain-design.md` | Domain Design |
| `feature-design.md` | Feature Design |
| `api-design.md` | API Design |
| `deployment-design.md` | Deployment Design |
| `configuration-design.md` | Configuration Management |
| `iac-design.md` | IaC Design |

## UX (6)
| Template | Purpose |
|----------|---------|
| `user-persona.md` | User Persona |
| `user-scenario.md` | User Scenario |
| `task-flow.md` | Task Flow |
| `interaction-pattern.md` | Interaction Pattern |
| `wireframe.md` | Wireframe |
| `usability-checklist.md` | Usability Checklist |

## Sprint (6)
| Template | Purpose |
|----------|---------|
| `sprint-planning.md` | Sprint Planning |
| `sprint-backlog.md` | Sprint Backlog |
| `sprint-progress.md` | Progress |
| `sprint-review.md` | Sprint Review |
| `sprint-retrospective.md` | Retrospective |
| `sprint-completion.md` | Completion Report |

## Operations (4)
| Template | Purpose |
|----------|---------|
| `runbook.md` | Operations Runbook |
| `playbook.md` | Response Playbook |
| `incident-report.md` | Incident Report |
| `sla-slo.md` | SLA/SLO Definition |

## Review (2)
| Template | Purpose |
|----------|---------|
| `code-review-report.md` | Code Review Report |
| `design-review.md` | Design Review |

## Knowledge (2)
| Template | Purpose |
|----------|---------|
| `lessons-learned.md` | Lessons Learned |
| `analysis-report.md` | Analysis Report |
```
