---
name: doc-templates
description: |
  This skill should be used when the user asks to "create document", "use template",
  "write ADR", "create design doc", "Sprint template", "Task template", or needs
  guidance on document templates including ADR, design docs, Sprint, Task, and reviews.
---

# Document Templates Skill

> Document template guide

---

## Template Categories

| Category | Templates | Purpose |
|----------|-----------|---------|
| Project | 3 | Project definition |
| ADR | 1 | Architecture decisions |
| Design | 7 | Design documents |
| UX | 6 | UX design |
| Sprint | 6 | Sprint management |
| Task | 1 | Task definition |
| Operations | 4 | Operations documents |
| Review | 2 | Review reports |
| Knowledge | 2 | Knowledge base |

---

## Project Templates

### PDD (Project Definition Document)

Defines the project's purpose, goals, and scope.

**Location**: `docs/project/pdd.md`

**Key Sections**:
- Project overview
- Goals and vision
- Scope (included/excluded)
- Stakeholders
- Constraints
- Success criteria

### Roadmap

Defines the overall project roadmap.

**Location**: `docs/project/roadmap.md`

**Key Sections**:
- Phase overview
- Milestones
- Timeline
- Dependencies

### Phase Spec

Defines detailed specifications for each Phase.

**Location**: `docs/project/phases/phase{N}-spec.md`

**Key Sections**:
- Phase goals
- Key features
- Technical requirements
- Sprint plan
- Completion criteria

---

## ADR Template

### Architecture Decision Record

Records architecture decisions.

**Location**: `docs/adr/ADR-{NNN}-{title}.md`

```markdown
---
title: ADR-{NNN} {Title}
status: proposed | accepted | deprecated | superseded
date: YYYY-MM-DD
---

# ADR-{NNN}: {Title}

## Status

{proposed | accepted | deprecated | superseded by ADR-XXX}

## Context

{Background and situation requiring a decision}

## Decision

{Chosen decision and rationale}

## Consequences

### Positive
- {Positive consequence 1}

### Negative
- {Negative consequence 1}

### Mitigation Strategy
- {How to mitigate negative consequences}

## References

- {Related document links}
```

---

## Design Templates

### Architecture Overview

Defines the system architecture overview.

**Key Sections**:
- System overview
- Architecture principles
- Component structure
- Communication patterns
- Deployment structure

### Feature Design

Defines feature design.

**Key Sections**:
- Overview
- Requirements (functional/non-functional)
- Architecture design
- Data model
- API design
- UI design
- Implementation plan

### Domain Design

Defines domain design.

**Key Sections**:
- Aggregate Root design
- Entity/Value Object
- Domain Events
- Repository Pattern
- Invariants

---

## Sprint Templates

### Sprint Overview

Defines the Sprint overview.

**Location**: `.work/tasks/{status}/{sprint-id}/sprint-overview.md`

**Key Sections**:
- Metadata
- Goals
- Task list
- Dependencies
- Risks
- Completion criteria

### Sprint Review

Reviews Sprint results.

**Key Sections**:
- Summary
- Completed Tasks
- Incomplete Tasks
- Demo results
- Feedback

### Sprint Retrospective

Records Sprint retrospective.

**Key Sections**:
- What went well (Keep)
- What to improve (Problem)
- What to try (Try)
- Action items

---

## Task Templates

### Task Definition

Defines a Task.

**Location**: `.work/tasks/{status}/{sprint-id}/TASK-{NNN}.md`

**Key Sections**:
- Metadata
- Requirements
- Completion criteria
- Technical notes
- Related files
- Results

---

## Operations Templates

### Runbook

Defines a single operational procedure.

**Key Sections**:
- Overview
- Prerequisites
- Procedure (step-by-step)
- Verification method
- Rollback procedure
- Troubleshooting

### Playbook

Defines a compound operational guide.

**Key Sections**:
- Scenario overview
- Related Runbooks
- Decision flow
- Escalation

### Incident Report

Creates an incident report.

**Key Sections**:
- Overview (time, impact)
- Timeline
- Root cause
- Resolution
- Prevention measures

---

## Review Templates

### Code Review Report

Records code review results.

**Key Sections**:
- Review scope
- Architecture principle compliance
- Issues found (Critical/Major/Minor)
- Quality metrics
- Recommended actions

### Design Review

Records design review results.

**Key Sections**:
- Design vs implementation comparison
- Consistency verification
- Improvement recommendations

---

## Knowledge Templates

### Lessons Learned

Records lessons learned.

**Location**: `docs/knowledge/lessons-learned/L-{NNN}-{title}.md`

**Key Sections**:
- Situation
- Problem
- Solution
- Lessons
- Application plan

### Analysis Report

Creates an analysis report.

**Key Sections**:
- Analysis purpose
- Methodology
- Findings
- Conclusion
- Recommendations

---

## Reference Files

> For detailed templates, see the references/ folder

| File | Content |
|------|---------|
| `references/adr-template.md` | ADR template details |
| `references/design-templates.md` | 7 design document templates |
| `references/project-templates.md` | PDD, Roadmap, Phase spec |
| `references/knowledge-templates.md` | Lessons learned, analysis reports |

---

## Related Documents

- Project structure: `project-structure` skill
- UX design: `ux-design` skill
- Sprint management: `sprint-management` skill
- Task management: `task-management` skill
- Review management: `review-management` skill
