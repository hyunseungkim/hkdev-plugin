# Sprint Completion Processing Guide

## Completion Processing Procedure

### 1. Confirm Sprint Completion

```bash
# Check remaining Tasks in backlog
ls .work/tasks/backlog/{sprint-folder}/

# Sprint is complete when only sprint-overview.md remains
```

### 2. Sprint Completion Processing

```bash
# 1. Update sprint-overview.md status

# 2. Move sprint-overview.md to completed
mv .work/tasks/backlog/{sprint-folder}/sprint-overview.md \
   .work/tasks/completed/{sprint-folder}/

# 3. Delete empty backlog folder
rmdir .work/tasks/backlog/{sprint-folder}/
```

### 3. Perform Git Commit

Always perform git commit upon Sprint completion.

```bash
git add -A
git commit -m "chore: {Sprint ID} complete - {Sprint goal summary}"
```

**Commit message format:**
- Type: `chore` (Sprint completion is an administrative task)
- Sprint ID: `p{N}-s{M}` format
- Write message in **English**

**Example:**
```bash
git commit -m "chore: p2-s10 complete - API endpoint implementation done

- All Tasks completed (10/10)
- Integration tests passed
- API documentation updated

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>"
```

---

## Design Document Verification Guide

### Required Documents to Check

| Document Type | Path | What to Check |
|----------|------|----------|
| PDD (Project Definition) | `docs/project/pdd.md` | Project goals, scope |
| Roadmap | `docs/project/roadmap.md` | Current Phase goals |
| Phase Spec | `docs/project/phases/` | Detailed requirements |
| Architecture Design | `docs/design/architecture/` | Technical structure |
| Domain Design | `docs/design/domain/` | Domain model |
| Feature Design | `docs/design/feature/` | Feature details |
| UX Design | `docs/design/ux/` | User flows |
| ADR | `docs/adr/` | Technical decisions |

### Review Procedure

```
1. Check current Phase goals in PDD/Roadmap
2. Select features to include in Sprint from Phase spec
3. Review related Feature/Domain design documents in detail
4. Check technical decisions in ADR
5. Decompose Tasks based on design content
```

---

## Checklists

### Before Sprint Planning

- [ ] Previous Sprint review completed
- [ ] Requirements list prepared
- [ ] Technical debt list checked

### During Sprint Planning

- [ ] Define Sprint goal in 1 sentence
- [ ] Decompose into 5-15 Tasks
- [ ] Assign size (S/M) to all Tasks
- [ ] **Assign responsible agent to all Tasks**
- [ ] Verify workload is 20-40 hours

### Sprint Creation

- [ ] Create Sprint folder
- [ ] Create sprint-overview.md
- [ ] Batch create Task files
- [ ] Update PROGRESS.md

### Sprint Completion

- [ ] Verify all Tasks complete
- [ ] Update sprint-overview.md status
- [ ] Move files to completed folder
- [ ] **Perform Git Commit**
- [ ] Update PROGRESS.md
