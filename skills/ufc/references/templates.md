# UFC Document Templates

## Feature Document Template

```markdown
# {Context}-F{Seq}: {Feature Name}

## Description
Description of what the user can do

## Related Operations
- Commands: {Context}-C{xx}, ...
- Queries: {Context}-Q{xx}, ...
- Streams: {Context}-S{xx}, ...

## Related Views
- Logical: {Context}-V{xx}
- Physical: {Context}-V{xx}-{Client}, ...

## Implementation Status
- [ ] Backend: Command/Query/Stream
- [ ] Frontend: CLI/TUI/Desktop/Web
```

---

## Command Template (State Change)

```markdown
# {Context}-C{Seq}: {CommandName}

## Description
What it changes

## Input
- param1: type - description
- param2: type - description

## Output
- result: type - description

## Side Effects
- Event published: {EventName}
- State change: {Entity} state change

## Related Feature
- {Context}-F{xx}
```

---

## Query Template (Data Retrieval)

```markdown
# {Context}-Q{Seq}: {QueryName}

## Description
What it retrieves

## Input
- param1: type - description

## Output
- data: type - description

## Caching
- Cache enabled: Yes/No
- TTL: {duration}

## Related Feature
- {Context}-F{xx}
```

---

## Stream Template (Real-time Data)

```markdown
# {Context}-S{Seq}: {StreamName}

## Description
What real-time data it provides

## Subscription Conditions
- Filter: {conditions}

## Data Format
- event: type - description

## Related Feature
- {Context}-F{xx}
```

---

## Logical View Template (Abstract Screen)

```markdown
# {Context}-V{Seq}: {ViewName}

## Description
Purpose of the screen

## Display Data
- Query: {Context}-Q{xx}
- Stream: {Context}-S{xx}

## User Actions
- Action1 → {Context}-C{xx}
- Action2 → Navigation to {Context}-V{yy}

## Physical Views
- {Context}-V{Seq}-CLI
- {Context}-V{Seq}-WEB
- {Context}-V{Seq}-WPF
```

---

## Physical View Template (Implementation)

```markdown
# {Context}-V{Seq}-{Client}: {ViewName} ({Client})

## Logical View
- {Context}-V{Seq}

## Implementation Status
- [ ] Layout
- [ ] Data binding
- [ ] Action handling
- [ ] Responsive/Accessibility

## Implementation Files
- {file path}
```

---

## Completion Tracking Template

```markdown
# UFC Completion Report

## Overall Summary

| Category | Defined | Implemented | Completion |
|---------|--------|--------|--------|
| Features | {n} | {m} | {%} |
| Commands | {n} | {m} | {%} |
| Queries | {n} | {m} | {%} |
| Streams | {n} | {m} | {%} |
| Views | {n} | {m} | {%} |

## Completion by Context

| Context | Features | Commands | Queries | Views | Total |
|---------|----------|----------|---------|-------|------|
| USR | {%} | {%} | {%} | {%} | {%} |
| ORD | {%} | {%} | {%} | {%} | {%} |
```

---

## Wireframe UFC ID Example

```markdown
## View: Trading Status Dashboard

| Item | Content |
|------|------|
| UFC Logical View | TRD-V01 |
| UFC Physical View | TRD-V01-WEB |
| Display Data | TRD-Q01, TRD-S01 |
| User Actions | TRD-C01, TRD-C02 |
```
