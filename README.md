# hkdev

**Project Development Process Plugin for Claude Code**

A Claude Code plugin that supports systematic project development processes.

---

## Why This Plugin?

The hardest part when starting a project is **setting up the initial structure**.

- What folder structure should I use?
- What documents should I write first?
- How do I write ADR, PDD, Roadmap?

This plugin **automatically generates standardized structures and document drafts** when you describe your project in natural language.

---

## Key Features

| Feature | Description |
|---------|-------------|
| **Interactive Project Initialization** | Extract information from prompts and gather missing info through questions |
| **Automatic Document Generation** | Auto-generate drafts for PDD, Roadmap, Architecture, ADR, Persona, etc. |
| **Phase/Sprint/Task Management** | Hierarchical structure: 8-16 week Phase → 1-2 week Sprint → 30min-8hr Task |
| **Session-based Context** | Maintain work continuity, restore interrupted work |
| **36 Document Templates** | Standard templates for entire project lifecycle (integrated in skills/references/) |
| **5 Specialized Agents** | Development, DevOps, Tech Writing, QA, Architect roles |

---

## How to Use the Plugin

### Commands (Slash Commands)
Users **directly invoke** these. Must use `/hkdev:` prefix.

```bash
/hkdev:project:init <description>    # Initialize project
/hkdev:session:start                 # Start session
/hkdev:task:start                    # Start task
```

### Skills (11)
Claude **automatically invokes** these based on context. No need for users to call directly.

### Hooks (2)
Shell scripts that run automatically at specific Claude Code lifecycle events.

### Agents (5)
Claude **automatically selects** these based on task nature.

---

## Quick Start

### Step 1: Initialize Project

**Describe your project naturally**:

```
/hkdev:project:init I want to create a user authentication API with Python FastAPI.
Using JWT-based authentication and PostgreSQL, it will be part of a microservice
architecture called by other services.
```

**Automatically generated:**
- Standard folder structure (docs, src, tests, deploy, etc.)
- `README.md`, `CLAUDE.md`
- `docs/project/pdd.md` - Project Definition Document draft
- `docs/project/roadmap.md` - Roadmap draft
- `docs/design/architecture/overview.md` - Architecture overview
- `docs/adr/ADR-001-*.md` - First ADR (technology selection)
- `docs/design/ux/user-personas.md` - User personas draft
- `docs/project/phases/phase1-spec.md` - Phase 1 spec
- `.work/` work management files

### Step 2: Review Generated Documents

Generated documents are **drafts**. Fill in the `TODO` items:

```
docs/project/pdd.md         # Define success metrics
docs/project/roadmap.md     # Detail milestones
```

### Step 3: Start Working

```
/hkdev:session:start                    # Start session
/hkdev:task:start Implement user registration API   # Start task
```

### Step 4: Complete Work

```
/hkdev:task:complete              # Complete task
/hkdev:session:end                # End session
```

---

## Prompt Examples

### Example 1: REST API Service

```
/hkdev:project:init I want to create a Python FastAPI-based REST API service
for user authentication and authorization management. Using JWT token-based
authentication and PostgreSQL as the database.
Part of a microservice architecture to be called by other services.
```

**Extracted information:**
- Type: REST API (microservice)
- Purpose: User authentication and authorization management
- Tech Stack: Python, FastAPI, JWT, PostgreSQL
- Users: Other services

### Example 2: Web Application

```
/hkdev:project:init I want to create a real-time stock trading dashboard
for individual investors using React and TypeScript. Receiving real-time
quotes via WebSocket, with portfolio management, transaction history,
and notification features.
```

**Extracted information:**
- Type: Web app (dashboard)
- Purpose: Stock trading monitoring
- Tech Stack: React, TypeScript, WebSocket
- Users: Individual investors
- Key Features: Portfolio management, transaction history, notifications

### Example 3: CLI Tool

```
/hkdev:project:init I want to create a project scaffolding CLI tool for
developers using Go. It should support project templates for various
languages and frameworks, customizable through configuration files.
```

### Example 4: Simple Start (Follow-up Questions)

```
/hkdev:project:init Create a todo app
```

If information is insufficient, questions are asked via dialog:
- Web app? Mobile? CLI?
- Tech stack?
- Main features?

---

## Commands

### Project Management

| Command | Description |
|---------|-------------|
| `/hkdev:project:init <description>` | Interactive project initialization |
| `/hkdev:project:guide` | Full plugin guide |
| `/hkdev:project:guide commands` | Detailed command descriptions |
| `/hkdev:project:guide prompts` | Prompt examples |
| `/hkdev:project:guide workflow` | Workflow guide |
| `/hkdev:project:guide templates` | Template list |

### Session Management

| Command | Description |
|---------|-------------|
| `/hkdev:session:start` | Start new session - check status, Git status, load work in progress |
| `/hkdev:session:end` | End session - save status, update SESSION_LOG |
| `/hkdev:session:catchup` | Restore context - load previous session info |

### Task Management

| Command | Description |
|---------|-------------|
| `/hkdev:task:start [id]` | Start task - by ID or description |
| `/hkdev:task:next` | Recommend next task - priority-based |
| `/hkdev:task:complete` | Complete task - update status, refresh PROGRESS.md |

---

## Workflow

### Project Lifecycle

```
┌─────────────────────────────────────────────────────────────────┐
│  1. Project Initialization                                       │
│     /hkdev:project:init <detailed description>                   │
│         ↓                                                        │
│     [Extract info] → [Ask if missing] → [Generate structure+docs]│
├─────────────────────────────────────────────────────────────────┤
│  2. Document Review and Enhancement                              │
│     docs/project/pdd.md      → Define success metrics            │
│     docs/project/roadmap.md  → Detail milestones                 │
│     docs/design/architecture → Detail components                 │
├─────────────────────────────────────────────────────────────────┤
│  3. Development Cycle                                            │
│     /hkdev:session:start                                         │
│         ↓                                                        │
│     /hkdev:task:start → [Develop] → /hkdev:task:complete         │
│         ↓                                                        │
│     /hkdev:task:next (repeat)                                    │
│         ↓                                                        │
│     /hkdev:session:end                                           │
└─────────────────────────────────────────────────────────────────┘
```

### Daily Workflow

```
Morning: /hkdev:session:start (or /hkdev:session:catchup)
  ↓
Working: /hkdev:task:start → Develop → /hkdev:task:complete → /hkdev:task:next
  ↓
Evening: /hkdev:session:end
```

---

## Work Units Hierarchy

```
Phase (8-16 weeks) ─────────────────────────────────────────────┐
│                                                               │
│  Big goals like "v1.0 MVP Development"                        │
│                                                               │
├── Sprint 1 (1-2 weeks) ────────────────────────────┐         │
│   │  "User Authentication Feature"                  │         │
│   │                                                 │         │
│   ├── Task 1 (2 hours): Implement login API         │         │
│   ├── Task 2 (4 hours): Implement signup API        │         │
│   └── Task 3 (1 hour): Write unit tests             │         │
│                                                     │         │
├── Sprint 2 (1-2 weeks) ────────────────────────────┘         │
│   └── ...                                                     │
│                                                               │
└───────────────────────────────────────────────────────────────┘
```

---

## Generated Project Structure

```
project/
├── docs/
│   ├── project/              # Project definition
│   │   ├── pdd.md           # Project Definition Document
│   │   ├── roadmap.md       # Roadmap
│   │   └── phases/          # Phase-specific specs
│   │       └── phase1-spec.md
│   │
│   ├── adr/                  # Architecture Decision Records
│   │   └── ADR-001-*.md
│   │
│   ├── design/               # Design documents
│   │   ├── architecture/    # Architecture
│   │   ├── domain/          # Domain design
│   │   ├── features/        # Feature design
│   │   ├── ux/              # UX design
│   │   ├── api/             # API design
│   │   ├── deployment/      # Deployment design
│   │   └── configuration/   # Configuration management
│   │
│   ├── guides/               # Guides
│   │   ├── development/     # Development guide
│   │   └── operations/      # Operations guide
│   │
│   ├── runbooks/             # Operations runbooks
│   ├── playbooks/            # Response playbooks
│   └── knowledge/            # Knowledge management
│       ├── lessons-learned/
│       └── reports/
│
├── src/                      # Source code
├── tests/                    # Tests
├── deploy/                   # Deployment configuration
├── scripts/                  # Scripts
├── tools/                    # Development tools
│
├── .work/                    # Work management
│   ├── PROGRESS.md          # Progress status
│   ├── SESSION_LOG.md       # Session log
│   ├── CURRENT_TASK.md      # Current task
│   └── tasks/               # Task files
│       ├── active/
│       ├── backlog/
│       └── completed/
│
├── .claude/                  # Claude settings
│   └── context/
│
├── CLAUDE.md                 # Claude main context (auto-loaded)
├── README.md
└── .gitignore
```

---

## Templates (36)

> Templates are centrally managed in skills/references/ folders.

### Template Distribution by Skill

| Skill | Template Count | Files |
|-------|---------------|-------|
| **doc-templates** | 13 | `adr-template.md`, `design-templates.md`, `project-templates.md`, `knowledge-templates.md` |
| **sprint-management** | 6 | `templates.md` (Full Sprint lifecycle) |
| **task-management** | 1 | `templates.md` (Task management) |
| **ux-design** | 6 | `templates.md` (Full UX design) |
| **review-management** | 5 | `templates.md` (Review documents) |
| **flags** | 1 | `flags-template.md` (FLAGS.md) |

### Operations Templates (Kept in templates/ folder)

> Maintained separately as there is no corresponding Skill

| Template | Purpose |
|----------|---------|
| `runbook.md` | Operations runbook - daily operations procedures |
| `playbook.md` | Response playbook - incident response |
| `incident-report.md` | Incident report |
| `sla-slo.md` | SLA/SLO definition |

### Template Category Summary

| Category | Count | Location |
|----------|-------|----------|
| Project | 3 | doc-templates/references/ |
| ADR | 1 | doc-templates/references/ |
| Design | 7 | doc-templates/references/ |
| Knowledge | 2 | doc-templates/references/ |
| Sprint | 6 | sprint-management/references/ |
| Task | 1 | task-management/references/ |
| UX | 6 | ux-design/references/ |
| Review | 5 | review-management/references/ |
| Flags | 1 | flags/references/ |
| Operations | 4 | templates/operations/ |
| **Total** | **36** | |

---

## Agents (5)

Claude automatically selects the appropriate agent based on task nature.

| Agent | Role | Auto-selection Trigger |
|-------|------|----------------------|
| **developer** | Feature implementation, bug fixes, refactoring | API implementation, service logic, component development |
| **devops** | Infrastructure, CI/CD, deployment | Pipeline configuration, containerization, monitoring |
| **tech-writer** | Technical documentation | API docs, guides, README |
| **qa-engineer** | Testing, quality verification | Test cases, automation, quality reports |
| **architect** | Design review, architecture decisions | ADR writing, design review, technology selection |

---

## Hooks (2)

Shell scripts that run automatically at specific Claude Code lifecycle events.

| Hook | Event | Description |
|------|-------|-------------|
| **session-context.sh** | SessionStart | Display Git status, current task, and sprint progress when session starts |
| **workflow-validator.sh** | Stop | Validate workflow compliance (check for misplaced tasks, empty sprints) |

### Safety Features
- Recursion prevention
- Timeout protection (5 seconds)
- Non-blocking errors

---

## Skills (11)

Claude automatically uses these based on context. No need for users to call directly.

| Skill | Description | Auto-use Trigger |
|-------|-------------|------------------|
| **getting-started** | Plugin start guide | When asking about plugin usage |
| **work-units** | Phase/Sprint/Task hierarchy definition | When explaining work units |
| **task-management** | Task creation, status management, priority | When asking about task management |
| **sprint-management** | Full Sprint lifecycle management | During sprint planning, progress, completion |
| **session-management** | Session start/end, context management | When explaining session management |
| **review-management** | Sprint/Phase review process | During Sprint review, Phase review, quality assessment |
| **project-structure** | Standard folder structure guide | When guiding folder structure |
| **doc-templates** | Document template usage guide | When writing documents |
| **ux-design** | UX design process | When doing UX design |
| **ufc** | UFC (Unified Feature Catalog) design guide | For feature-centric architecture, CQRS, multi-client design |
| **flags** | Flag-based behavior control and FLAGS.md generation | When asking about flags, generating FLAGS.md |

---

## Tips

### More detailed prompts are better

Including the following information generates more complete drafts:
- Project **purpose** and **goals**
- **Tech stack** (language, framework, database)
- **Main users** (who will use it?)
- **Key features** (what can it do?)
- **Constraints** (existing systems, API integrations, etc.)

### Generated documents are "drafts"

Auto-generated documents are a **starting point**:
- Fill in `TODO` items
- Review and revise with your team
- Update as the project progresses

### Use session management

Using `/hkdev:session:end` to wrap up work:
- Work status is saved
- You can quickly resume with `/hkdev:session:catchup` in the next session

---

## Installation

```bash
# Add as local plugin
claude plugins:add /path/to/hkdev
```

---

## Changelog

### v0.2.3

- **templates/ → skills/references/ consolidation**: Duplicate removal and single source policy
  - Moved 29 templates to skills/references/
  - Only 4 operations templates (operations/) remain in templates/
- **Added doc-templates references/**: ADR, design, project, knowledge templates (4 files)
- **Added flags references/**: FLAGS.md generation template
- **Expanded existing templates.md**:
  - sprint-management: Integrated 6 Sprint templates
  - task-management: Integrated detailed Task templates
  - ux-design: Detailed 6 UX templates
  - review-management: Added Code Review, Design Review templates (5 total)
- **Added Reference Files section to SKILL.md**: doc-templates, flags
- **Added Related Commands section**: task-management, session-management

### v0.2.2

- **Added Examples**: Added complete example files to 6 skills
  - `sprint-management/examples/`: sample-sprint-overview.md
  - `task-management/examples/`: sample-task-xs.md, sample-task-l.md
  - `ufc/examples/`: sample-feature.md
  - `ux-design/examples/`: sample-persona.md, sample-wireframe.md
  - `work-units/examples/`: sample-hierarchy.md, sample-task.md
  - `review-management/examples/`: sample-sprint-review.md
- **Improved SKILL.md**: Added Reference Files and Example Files sections to all skills
- **Additional Progressive Disclosure**: Lightened heavy skills and separated into references/
  - `ux-design`: 962 → 318 words (67% reduction)
  - `work-units`: 954 → 383 words (60% reduction)
- Added 4 references files (templates.md, ufc-mapping.md, definitions.md, state-flow.md)
- **Added LICENSE file**: MIT license

### v0.2.1

- **Skill Frontmatter English**: Changed all skill descriptions to third-person English format
- **Applied Progressive Disclosure**: Lightened heavy skills and separated into references/
  - `ufc`: 2330 → 490 words (79% reduction)
  - `sprint-management`: 1152 → 389 words (66% reduction)
  - `task-management`: 974 → 392 words (60% reduction)
- Added 10 references files (templates, guides, checklists)

### v0.2.0

- **Added Marketplace definition**: Added marketplace metadata to `plugin.json`
- **Added review-management skill**: Sprint/Phase review process guide
- **Organized flag system**: Applied `--hk-*` pattern to potentially conflicting flags
  - `--hk-sprint` → sprint-management
  - `--hk-task` → task-management
  - `--hk-review` → review-management
- Separated from Claude Code default flags (`--plan`, `--explore`)

### v0.1.7

- **Renamed sprint-plan → sprint-management**: Applied consistent naming
- Added git commit required guide on Sprint completion
- Added git commit required guide on Task completion

### v0.1.6

- Enhanced design document reference and completion verification checklist when writing Sprint/Task documents

---

## License

MIT
