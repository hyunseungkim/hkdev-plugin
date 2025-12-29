---
name: project-structure
description: |
  This skill should be used when the user asks to "create project structure",
  "folder structure", "file naming", "initialize project", or needs guidance on
  standard folder structure, file naming conventions, and initialization procedures.
---

# Project Structure Skill

> Project folder structure guide

---

## Standard Project Structure

```
{project-name}/
+-- docs/                      # Documents
|   +-- project/              # Project definition
|   |   +-- pdd.md            # Project Definition Document
|   |   +-- roadmap.md        # Roadmap
|   |   +-- phases/           # Phase specifications
|   +-- adr/                  # Architecture Decision Records
|   +-- design/               # Design documents
|   |   +-- architecture/     # Architecture design
|   |   +-- domain/           # Domain design
|   |   +-- features/         # Feature design
|   |   +-- ux/               # UX design
|   |   +-- api/              # API design
|   |   +-- deployment/       # Deployment design
|   |   +-- configuration/    # Configuration design
|   +-- guides/               # Guides
|   |   +-- development/      # Development guide
|   |   +-- operations/       # Operations guide
|   |   +-- ai-collaboration/ # AI collaboration guide
|   +-- runbooks/             # Operations procedures
|   +-- playbooks/            # Operations guidebooks
|   +-- references/           # External references
|   +-- knowledge/            # Knowledge base
|       +-- lessons-learned/
|       +-- reports/
|       +-- reviews/
|
+-- src/                       # Source code
+-- tests/                     # Tests
+-- deploy/                    # Deployment config (IaC)
+-- scripts/                   # Scripts
+-- tools/                     # Development tools
|
+-- .work/                     # Work management
|   +-- CURRENT_TASK.md
|   +-- PROGRESS.md
|   +-- SESSION_LOG.md
|   +-- tasks/
|       +-- active/
|       +-- backlog/
|       +-- completed/
|
+-- .claude/                   # Claude settings
|   +-- commands/
|   +-- skills/
|   +-- agents/
|   +-- context/
|
+-- CLAUDE.md                  # Claude Code main context
+-- README.md                  # Project README
+-- .gitignore
```

---

## Folder Purposes

### docs/ - Documents

| Folder | Purpose | Key Files |
|--------|---------|-----------|
| `project/` | Project definition | pdd.md, roadmap.md |
| `adr/` | Architecture decisions | ADR-NNN-title.md |
| `design/` | Design documents | Architecture, domain, features, UX |
| `guides/` | Guides | Development, operations, AI collaboration |
| `runbooks/` | Operations procedures | Single process procedures |
| `playbooks/` | Operations guidebooks | Compound process guides |
| `references/` | External references | API docs, libraries |
| `knowledge/` | Knowledge base | Lessons, reports, reviews |

### .work/ - Work Management

| File/Folder | Purpose |
|-------------|---------|
| `CURRENT_TASK.md` | Currently in-progress Task |
| `PROGRESS.md` | Overall project progress |
| `SESSION_LOG.md` | Session records |
| `tasks/` | Sprint and Task files |

### .claude/ - Claude Settings

| Folder | Purpose |
|--------|---------|
| `commands/` | Custom slash commands |
| `skills/` | Project-specific skills |
| `agents/` | Agent definitions |
| `context/` | Context documents |

---

## File Naming Conventions

### Document Files

| Type | Format | Example |
|------|--------|---------|
| Project docs | `kebab-case.md` | `pdd.md`, `roadmap.md` |
| ADR | `ADR-NNN-title.md` | `ADR-001-platform-selection.md` |
| Phase spec | `phase{N}-spec.md` | `phase1-spec.md` |
| Guide | `NN-title.md` | `01-overview.md` |
| Feature design | `feature-name.md` | `user-authentication.md` |
| Lessons learned | `L-NNN-title.md` | `L-001-lesson-title.md` |

### Work Files

| Type | Format | Example |
|------|--------|---------|
| Sprint folder | `p{N}-s{M}[-desc]` | `p1-s1`, `p2-s10-api` |
| Task file | `TASK-{NNN}.md` | `TASK-001.md` |
| Sprint overview | `sprint-overview.md` | - |

---

## Project Initialization Procedure

### When /project:init is executed

1. Create project folder
2. Create standard directory structure
3. Create README.md
4. Create CLAUDE.md
5. Create .gitignore
6. Initialize .work/
7. Create docs/ basic structure

### Generated Files

```bash
# Project root
README.md
CLAUDE.md
.gitignore

# Document structure
docs/README.md
docs/project/pdd.md
docs/project/roadmap.md
docs/adr/README.md
docs/design/README.md
docs/guides/README.md

# Work management
.work/README.md
.work/PROGRESS.md
.work/SESSION_LOG.md
.work/CURRENT_TASK.md
.work/tasks/README.md

# Claude settings
.claude/context/work-units.md
.claude/context/conventions.md
```

---

## Language Rules

| Item | Language |
|------|----------|
| Document body | Korean |
| Code examples | English (variable names, class names) |
| Technical terms | Original language preferred |
| File names | English kebab-case |

---

## Recommended .gitignore Items

```gitignore
# IDE
.idea/
.vscode/
*.swp

# Build
bin/
obj/
dist/
node_modules/

# Local settings
*.local.json
*.local.md
.env.local

# OS
.DS_Store
Thumbs.db
```

---

## Related Documents

- Document templates: `doc-templates` skill
- UX design: `ux-design` skill
