---
name: getting-started
description: |
  This skill should be used when the user asks "how to use hkdev", "getting started",
  "plugin usage", "start project", "workflow guide", or needs guidance on hkdev
  plugin introduction, basic usage, and workflow overview.
---

# Getting Started Guide

## Plugin Introduction

**hkdev** is a Claude Code plugin that supports systematic project development processes.

### Core Features

1. **Interactive Project Initialization**: Describe your project in natural language and the structure and documents are auto-generated
2. **Phase/Sprint/Task Hierarchy Management**: Systematic work classification
3. **Session-based Context Management**: Maintains work continuity
4. **32 Document Templates**: Standardized deliverables

---

## Plugin Usage

### Commands (Slash Commands)
Users **invoke directly**. **Must use `/hkdev:` prefix**

```bash
/hkdev:project:init <description>
/hkdev:session:start
/hkdev:task:start
```

### Skills (8)
Claude **auto-invokes based on context**. Users don't need to call directly.

### Agents (5)
Claude **auto-selects based on task nature**.

---

## Quick Start

### Step 1: Project Initialization

Describe your project naturally:

```
/hkdev:project:init I'm building a user authentication API with Python FastAPI.
I'll use JWT-based auth and PostgreSQL. It will be part of a microservice
architecture and will be called by other services.
```

**Auto-generated items:**
- Folder structure (docs, src, tests, etc.)
- PDD (Project Definition Document) draft
- Roadmap draft
- Architecture Overview
- First ADR
- User Persona draft

### Step 2: Review and Refine Documents

Review generated documents and fill in TODO items:
- `docs/project/pdd.md`
- `docs/project/roadmap.md`

### Step 3: Start Session

```
/hkdev:session:start
```

### Step 4: Start Task

```
/hkdev:task:start User registration API implementation
```

---

## Prompt Examples

### Good Prompt (Information-rich)

```
/hkdev:project:init I'm building a real-time stock trading dashboard
for individual investors using React and TypeScript. It will receive
real-time quotes via WebSocket and needs portfolio management, transaction
history, and notification features. The backend is being developed by a
separate team and we have the API spec.
```

**Extracted information:**
- Type: Web app (dashboard)
- Purpose: Real-time stock trading monitoring
- Tech stack: React, TypeScript, WebSocket
- Users: Individual investors
- Core features: Portfolio management, transaction history, notifications
- Constraints: Separate backend (API integration)

### Simple Prompt (Follow-up questions occur)

```
/hkdev:project:init make a todo app
```

**Auto-asked questions:**
- Web app? Mobile? CLI?
- Tech stack?
- Key features?

---

## Workflow Overview

### Daily Work Flow

```
1. /hkdev:session:start (or /hkdev:session:catchup)
   |
   v
2. /hkdev:task:start [task-id or description]
   |
   v
3. Perform work
   |
   v
4. /hkdev:task:complete
   |
   v
5. /hkdev:task:next (next task) or /hkdev:session:end
```

### Project Phases

```
Phase (8-16 weeks) --------------------------------+
+-- Sprint 1 (1-2 weeks)                          |
|   +-- Task 1 (30min-8hours)                     |
|   +-- Task 2                                    |
|   +-- Task 3                                    |
+-- Sprint 2                                      |
|   +-- ...                                       |
+-- Sprint 3                                      |
    +-- ...                                       |
--------------------------------------------------+
```

---

## Key Commands

| Command | Description |
|---------|-------------|
| `/hkdev:project:init <desc>` | Project initialization (interactive) |
| `/hkdev:session:start` | Start session |
| `/hkdev:session:end` | End session |
| `/hkdev:session:catchup` | Restore context |
| `/hkdev:task:start [id]` | Start task |
| `/hkdev:task:next` | Recommend next task |
| `/hkdev:task:complete` | Complete task |
| `/hkdev:project:guide [topic]` | Guide |

---

## Generated Project Structure

```
project/
+-- docs/
|   +-- project/          # PDD, Roadmap, Phase specs
|   |   +-- phases/
|   +-- adr/              # Architecture Decision Records
|   +-- design/           # Design documents
|   |   +-- architecture/
|   |   +-- domain/
|   |   +-- features/
|   |   +-- ux/
|   |   +-- api/
|   |   +-- deployment/
|   +-- guides/           # Development/operations guides
|   +-- runbooks/         # Operations runbooks
|   +-- playbooks/        # Response playbooks
|   +-- knowledge/        # Lessons, reports
+-- src/                  # Source code
+-- tests/                # Tests
+-- deploy/               # Deployment config
+-- scripts/              # Scripts
+-- tools/                # Development tools
+-- .work/                # Work management
|   +-- PROGRESS.md
|   +-- SESSION_LOG.md
|   +-- CURRENT_TASK.md
|   +-- tasks/
+-- .claude/              # Claude settings
+-- CLAUDE.md
+-- README.md
+-- .gitignore
```

> For detailed info: see `project-structure` skill

---

## Tips

### More information is better
Including the following in your project description generates more complete drafts:
- Project purpose and goals
- Tech stack
- Target users
- Core features
- Constraints or requirements

### Documents are "drafts"
Auto-generated documents are starting points. Fill in TODOs and add details.

### Use session management
Finishing work with `/hkdev:session:end` makes `catchup` more effective in the next session.

---

## Guides

For more information:
- `/hkdev:project:guide` - Full guide
- `/hkdev:project:guide commands` - Command details
- `/hkdev:project:guide prompts` - Prompt examples
- `/hkdev:project:guide templates` - Template list

---

## Related Documents

- Project structure: `project-structure` skill
- Work units definition: `work-units` skill
- Session management: `session-management` skill
