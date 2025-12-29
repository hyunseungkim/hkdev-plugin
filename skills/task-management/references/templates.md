# Task Template Collection

> Complete templates for Task creation and management

---

## Table of Contents

1. [Task File Template](#task-file-template)
2. [Status Icons](#status-icons)
3. [Task Size Classification](#task-size-classification)
4. [Priority Definition](#priority-definition)
5. [Writing Guide](#writing-guide)

---

## Task File Template

```markdown
# TASK-{NNN}: {Title}

## Metadata

| Item | Value |
|------|-----|
| ID | TASK-{NNN} |
| Status | 📋 Pending / 🔄 In Progress / ✅ Complete / ⚠️ Blocked |
| Priority | P0 / P1 / P2 / P3 |
| Size | XS / S / M / L / XL |
| Assigned Agent | developer / devops / tech-writer / qa-engineer / architect |
| Sprint | {sprint-id} |
| Dependencies | - |
| Created | {YYYY-MM-DD} |

---

## Background

{Background explaining why this Task is needed}

---

## Requirements

### Functional Requirements

1. {Requirement 1}
2. {Requirement 2}
3. {Requirement 3}

### Constraints

- {Constraint 1}
- {Constraint 2}

---

## Completion Verification Checklist

### Functional Verification
- [ ] {Completion criteria 1}
- [ ] {Completion criteria 2}
- [ ] Build successful
- [ ] Tests passed

### Design Consistency Verification
- [ ] Implementation matches reference design documents
- [ ] ADR decisions followed (if applicable)
- [ ] Interface specs followed

### Code Quality Verification
- [ ] Code review completed (if applicable)
- [ ] No security vulnerabilities
- [ ] Performance requirements met

---

## Technical Notes

### Implementation Direction

{Implementation direction or approach}

### Reference Code

```
{Reference code path or pattern}
```

### Cautions

- {Caution 1}
- {Caution 2}

---

## Related Files

| File | Description |
|------|------|
| `path/to/file1` | {Description} |
| `path/to/file2` | {Description} |

---

## Reference Design Documents

> **Required**: List of design documents referenced when writing Task

| Document Type | Path | Verified Items |
|----------|------|----------|
| Feature Design | `docs/design/feature/{feature}.md` | Feature spec |
| Domain Design | `docs/design/domain/{domain}.md` | Domain model |
| ADR | `docs/adr/ADR-{NNN}.md` | Technical decisions |
| UX Design | `docs/design/ux/{ux}.md` | User flows |

---

## Result

> Write after completion

### Completion Date

{YYYY-MM-DD}

### Session

S#{N}

### Changed Files

| File | Changes |
|------|----------|
| `path/to/file1` | {Changes} |
| `path/to/file2` | {Changes} |

### Key Decisions

- {Decision 1}
- {Decision 2}

### Follow-up Tasks

- {Follow-up Task or work}

---

## Change History

| Date | Changes | Author |
|------|----------|--------|
| {Date} | Task created | {Author} |
| {Date} | Completed | {Author} |
```

---

## Status Icons

| Status | Icon | Description | File Location |
|------|--------|------|----------|
| Pending | 📋 | Not yet started | `backlog/` |
| In Progress | 🔄 | Currently in progress | `active/` |
| Complete | ✅ | Completed | `completed/` |
| On Hold | ⏸️ | Temporarily suspended | `active/` |
| Blocked | ⚠️ | Blocked due to dependencies | `active/` |

---

## Task Size Classification

| Size | Time | Example | Split Needed |
|------|------|------|----------|
| **XS** | 30 min or less | Typo fix, config change | - |
| **S** | 30 min - 2 hours | API endpoint, single method | - |
| **M** | 2-4 hours | New controller, test suite | - |
| **L** | 4-8 hours | New service, major refactoring | Recommended |
| **XL** | 1-2 days | Complex feature, architecture change | **Required** |

### Size-based Writing Guide

**XS/S size**: Brief requirements and completion criteria only
**M size**: Use full standard template
**L/XL size**: Split review required, recommend separating into sub-Tasks

---

## Priority Definition

| Priority | Description | Action Timing | Example |
|----------|------|----------|------|
| **P0** | Critical - Blocker | Immediate | Build failure, service outage |
| **P1** | High - Sprint required | Within current Sprint | Core feature implementation |
| **P2** | Medium - Improvement | When time permits | Refactoring, optimization |
| **P3** | Low - Nice-to-have | Backlog | Documentation, code cleanup |

---

## Writing Guide

### Required Sections

| Section | XS/S | M | L/XL |
|------|------|---|------|
| Metadata | ✅ | ✅ | ✅ |
| Background | - | ✅ | ✅ |
| Requirements | Brief | ✅ | ✅ |
| Completion Criteria | ✅ | ✅ | ✅ |
| Technical Notes | - | ✅ | ✅ |
| Reference Design Docs | - | If applicable | ✅ |
| Result | ✅ | ✅ | ✅ |

### Good Task Writing Principles

1. **Clear title**: Start with verb (Implement, Add, Fix, Delete)
2. **Specific requirements**: Avoid vague expressions
3. **Measurable completion criteria**: Verifiable conditions
4. **Appropriate size**: Split XL, consider merging XS
5. **Design document reference**: Link design docs for M+ Tasks

### Title Writing Examples

**Good examples**:
- "Implement user login API"
- "Add JWT token expiration setting"
- "Write OrderService unit tests"

**Bad examples**:
- "Login" (vague)
- "Bug fix" (not specific)
- "Code improvement" (unclear scope)
