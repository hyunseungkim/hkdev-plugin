# Work State Flow

## Task State Transition Diagram

```
┌──────────┐  /hkdev:task:start  ┌───────────┐  /hkdev:task:complete  ┌──────────┐
│ 📋 Pending│ ──────────────────▶ │ 🔄 In Progress│ ───────────────────▶ │ ✅ Complete│
│ (backlog)│                     │  (active) │                      │(completed)│
└──────────┘                     └───────────┘                      └──────────┘
     │                              │                               │
     │                              │ Verification failed           │
     │                              ▼                               │
     │                         ┌──────────┐                        │
     │                         │ ⚠️ Blocked│                        │
     │                         │ (blocked)│                        │
     │                         └──────────┘                        │
     │                              │                               │
     │                              │ Issue resolved                │
     │                              ▼                               │
     └────────────────────────────────────────────────────────────┘
```

---

## State Definitions

| State | Icon | Folder | Description |
|------|--------|------|------|
| Pending | 📋 | `backlog/` | Task not yet started |
| In Progress | 🔄 | `active/` | Task currently being worked on |
| Blocked | ⚠️ | `active/` | Task suspended due to external dependency |
| Complete | ✅ | `completed/` | Task completed |

---

## State Transition Rules

### Pending → In Progress

**Trigger**: `/hkdev:task:start TASK-XXX`

**Conditions**:
- Task file must exist
- No other Task should be in progress (recommended)

**Actions**:
1. Move Task file to `active/` folder
2. Update CURRENT_TASK.md
3. Record start in SESSION_LOG.md

---

### In Progress → Complete

**Trigger**: `/hkdev:task:complete`

**Conditions**:
- Completion criteria met
- Build/tests pass

**Actions**:
1. Move Task file to `completed/{sprint-id}/` folder
2. Initialize CURRENT_TASK.md
3. Update PROGRESS.md
4. Record completion in SESSION_LOG.md

---

### In Progress → Blocked

**Trigger**: External dependency arises

**Conditions**:
- Other Task completion needed
- Waiting for external resource
- Technical blocker

**Actions**:
1. Change Task status to `⚠️ Blocked`
2. Record block reason
3. Specify dependency Task

---

### Blocked → In Progress

**Trigger**: Blocker resolved

**Actions**:
1. Change Task status to `🔄 In Progress`
2. Record resolution
3. Resume work

---

## Session Management Rules

| Rule | Description |
|------|------|
| **Increment Condition** | Session number +1 only on `/hkdev:session:start` command |
| **Maintain Condition** | Session number maintained on `/compact`, `/hkdev:session:catchup`, Claude Code restart |
| **Format** | `S#{N}` (e.g., S#44, S#45) |

---

## File Location Rules

```
.work/tasks/
├── active/               # In progress Tasks
│   └── TASK-XXX.md
├── backlog/              # Pending Tasks
│   └── {sprint-id}/
│       ├── sprint-overview.md
│       └── TASK-XXX.md
└── completed/            # Completed Tasks
    └── {sprint-id}/
        └── TASK-XXX.md
```

---

## Naming Convention Summary

| Item | Pattern | Example |
|------|------|------|
| Project | `{ProjectName}` | MVP, Platform V2 |
| Release | Release {X.Y} | Release 1.0, Release 2.1 |
| Phase | Phase {N}: {description} | Phase 1: Data Collection |
| Sprint Folder | `p{N}-s{M}-{description}` | `p2-s10-api-completion` |
| Task ID | `TASK-{NNN}` | `TASK-307` |
| Task File | `TASK-{NNN}.md` | `TASK-307.md` |
