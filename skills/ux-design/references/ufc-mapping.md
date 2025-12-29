# UX and UFC Integration Guide

## Relationship with UFC (Unified Feature Catalog)

UX design artifacts are directly linked to UFC View definitions.

---

## Mapping Relationship

```
UX Artifacts              UFC Elements
─────────────────────────────────
Persona           →   Feature user definition
Scenario          →   Feature flow definition
Task Flow         →   Operation (Command/Query) design
Wireframe         →   Logical View definition
Client-specific UI→   Physical View implementation
```

---

## Wireframe → View ID Mapping

### Mapping Example

```markdown
## View: Trading Status Dashboard

### Metadata
| Item | Content |
|------|------|
| **UFC Logical View** | TRD-V01 |
| **UFC Physical View** | TRD-V01-WEB |
| Client | Web (React) |
```

Specify UFC View ID in wireframe documents to ensure traceability.

---

## View ID Naming Convention

| Type | Pattern | Example |
|------|------|------|
| Logical View | `{Domain}-V{NN}` | `TRD-V01` |
| Physical View | `{Domain}-V{NN}-{Client}` | `TRD-V01-WEB` |

### Client Abbreviations

| Abbreviation | Client |
|------|-----------|
| CLI | Command Line Interface |
| TUI | Terminal User Interface |
| WEB | Web Browser |
| MOB | Mobile App |
| API | API Endpoint |

---

## Traceability Checklist

- [ ] UFC Logical View ID specified in all wireframes
- [ ] Physical View ID assigned per client
- [ ] Task flow mapped to Operations
- [ ] Persona linked to Feature user groups
