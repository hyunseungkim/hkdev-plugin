---
name: flags
description: |
  This skill should be used when the user asks to "create FLAGS.md", "update flags",
  "check flag usage", "configure flags", or needs guidance on flag-based behavior
  control and FLAGS.md generation after project initialization.
---

# Flags Skill

> FLAGS.md generation guide based on project environment

## Overview

FLAGS.md is a flag reference document that controls Claude Code behavior.

**Structure:**
1. hkdev default flags (always included)
2. Project-specific MCP/plugin flags (generated from analysis)

**Priority:**
```
Safety > Quality > Workflow > Skill > Agent > Output
```

---

## FLAGS.md Generation Procedure

### Step 1: MCP/Plugin Analysis

```bash
# Analysis targets
~/.claude/settings.json          # Global settings (enabledPlugins)
.mcp.json                        # Project MCP settings
```

### Step 2: Generate FLAGS.md

```bash
# Output location
.claude/context/FLAGS.md
```

### Step 3: CLAUDE.md Integration

```markdown
# Add to CLAUDE.md
@.claude/context/FLAGS.md
```

---

## hkdev Default Flags

### 1. Output Flags

| Flag | Short | Description | Default |
|------|-------|-------------|---------|
| `--verbose` | `-v` | Detailed output | `false` |
| `--quiet` | `-q` | Minimal output | `false` |
| `--json` | | JSON format | `false` |
| `--markdown` | `-md` | Markdown format | `true` |

**Examples:**
```bash
/hkdev:task:next --verbose      # Show detailed recommendation logic
/hkdev:session:start --json     # Output status in JSON format
```

### 2. Quality Flags

| Flag | Description | Default |
|------|-------------|---------|
| `--safe-mode` | Block dangerous operations | `true` |
| `--validate` | Validation check | `true` |
| `--dry-run` | Simulation | `false` |
| `--force` | Force execution | `false` |

**Priority:**
```
--safe-mode > --validate > --dry-run > --force
```

**Examples:**
```bash
/hkdev:task:complete --dry-run   # Preview completion processing
/hkdev:task:complete --force     # Complete immediately without confirmation
```

### 3. Workflow Flags (Claude Code Built-in)

| Flag | Description |
|------|-------------|
| `--plan` | Plan mode (EnterPlanMode) |
| `--explore` | Explore mode (Explore agent) |

> **Note**: These flags are Claude Code built-in features. hkdev does not override them.

**Examples:**
```bash
Implement new feature --plan           # Plan first
Analyze codebase --explore             # Use explore agent
```

### 4. hkdev Skill Flags

| Flag | Skill | Description |
|------|-------|-------------|
| `--getting-started` | getting-started | Getting started guide |
| `--doc-templates` | doc-templates | Document templates |
| `--project-structure` | project-structure | Project structure |
| `--session-mgmt` | session-management | Session management |
| `--hk-sprint` | sprint-management | Sprint management |
| `--hk-task` | task-management | Task management |
| `--ufc` | ufc | Feature catalog |
| `--ux-design` | ux-design | UX design |
| `--work-units` | work-units | Work units definition |
| `--flags` | flags | Flags reference |
| `--hk-review` | review-management | Review management |

**Auto-activation patterns:**
```
"initialize", "start"     -> --getting-started
"Sprint", "plan"          -> --hk-sprint
"Task", "work"            -> --hk-task
"design", "architecture"  -> --ufc
"document", "template"    -> --doc-templates
"UX", "user"              -> --ux-design
"session", "context"      -> --session-mgmt
"review", "evaluate"      -> --hk-review
```

### 5. hkdev Agent Flags

| Flag | Agent | Specialty |
|------|-------|-----------|
| `--developer` | developer | Feature implementation, bug fixes |
| `--devops` | devops | Infrastructure, CI/CD, Docker |
| `--architect` | architect | Design, ADR, architecture |
| `--qa` | qa-engineer | Testing, quality verification |
| `--writer` | tech-writer | Documentation, guides |

**Auto-activation patterns:**
```
"implement", "develop", "bug"     -> --developer
"infra", "deploy", "Docker"       -> --devops
"design", "architecture", "ADR"   -> --architect
"test", "QA", "verify"            -> --qa
"document", "guide", "README"     -> --writer
```

### 6. hkdev Command Flags

| Flag | Command | Description |
|------|---------|-------------|
| `--init` | project:init | Project initialization |
| `--guide` | project:guide | Show guide |
| `--session-start` | session:start | Start session |
| `--session-end` | session:end | End session |
| `--catchup` | session:catchup | Restore context |
| `--task-start` | task:start | Start task |
| `--task-complete` | task:complete | Complete task |
| `--task-next` | task:next | Next task |

---

## Project-specific Flags (Generated from Analysis)

Added when generating FLAGS.md by analyzing project environment.

### MCP Analysis

```bash
# Check MCP servers in ~/.claude/settings.json
# Check project MCP in .mcp.json
```

**Generated example:**
```markdown
## MCP Flags

| Flag | MCP | Description |
|------|-----|-------------|
| `--c7` | context7 | Library documentation lookup |
| `--seq` | sequential-thinking | Step-by-step problem solving |
```

### Plugin Analysis

```bash
# Check enabledPlugins in ~/.claude/settings.json
```

**Generated example:**
```markdown
## Plugin Flags

| Flag | Plugin Skill | Description |
|------|--------------|-------------|
| `--docx` | document-skills:docx | Word documents |
| `--xlsx` | document-skills:xlsx | Excel |
| `--pdf` | document-skills:pdf | PDF |
| `--frontend` | frontend-design | Frontend UI |
```

---

## Quick Reference

### Frequently Used Combinations

| Task | Recommended Flags |
|------|-------------------|
| Project start | `--init --getting-started` |
| Sprint planning | `--hk-sprint --hk-task` |
| Feature development | `--developer --task-start` |
| Design review | `--architect --ufc --plan` |
| Documentation | `--writer --doc-templates` |
| Test writing | `--qa --validate` |
| Infrastructure work | `--devops` |
| Sprint/Phase review | `--hk-review` |

### Command Syntax

```bash
# Basic format
/hkdev:category:command [args] [--flags]

# Natural language + flags
{request} --flag1 --flag2

# Examples
/hkdev:task:start TASK-001 --developer --verbose
Plan the Sprint --hk-sprint --dry-run
```

---

## FLAGS.md Generation Command

To generate FLAGS.md in your project:

```
Generate FLAGS.md
```

Claude will perform:
1. Analyze `~/.claude/settings.json` (MCP, plugins)
2. Analyze `.mcp.json` (project MCP)
3. Generate `.claude/context/FLAGS.md`
4. Provide CLAUDE.md include instructions

---

## Reference Files

> For detailed templates, see the references/ folder

| File | Content |
|------|---------|
| `references/flags-template.md` | FLAGS.md generation template |

---

## Related Documents

- Work units definition: `work-units` skill
- Session management: `session-management` skill
- Project structure: `project-structure` skill
