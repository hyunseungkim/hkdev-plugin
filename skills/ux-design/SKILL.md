---
name: ux-design
description: |
  This skill should be used when the user asks to "design UX", "create persona",
  "user scenario", "task flow", "interaction pattern", "wireframe", or needs
  guidance on UX design process including user analysis, screen design, and
  usability validation.
---

# UX Design Skill

> UX design guide

---

## UX Document Structure

```
docs/design/ux/
+-- README.md                       # UX design overview
+-- 00-user-personas.md             # User personas
+-- 01-user-scenarios.md            # User scenarios and journey maps
+-- 02-task-flows/                  # Task flows (by domain)
|   +-- README.md
|   +-- {domain}-context.md
+-- 03-interaction-patterns.md      # Interaction patterns
+-- 04-wireframes/                  # Wireframes
|   +-- README.md
|   +-- cli-wireframes.md
|   +-- tui-wireframes.md
|   +-- web-wireframes.md
|   +-- common-components.md
+-- 05-usability-checklist.md       # Usability validation checklist
```

---

## UX Design Process

```
1. Define Personas
   |
   v
2. Write Scenarios
   |
   v
3. Design Task Flows
   |
   v
4. Define Interaction Patterns
   |
   v
5. Create Wireframes
   |
   v
6. Usability Validation
```

---

## UX Deliverables Summary

| Phase | Deliverable | Purpose |
|-------|-------------|---------|
| 1 | User Personas | Define characteristics by user type |
| 2 | User Scenarios | Define key usage scenarios |
| 3 | Task Flows | Define workflows by domain |
| 4 | Interaction Patterns | Define common interaction patterns |
| 5 | Wireframes | Define screen layouts |
| 6 | Usability Checklist | Usability validation |

---

## Wireframe Categories

| Client | File | Characteristics |
|--------|------|-----------------|
| CLI | `cli-wireframes.md` | Command-line interface |
| TUI | `tui-wireframes.md` | Terminal UI |
| Web | `web-wireframes.md` | Web browser |

---

## Additional Resources

### Reference Files

See `references/` for detailed guides:

- **`references/templates.md`** - All UX document templates (persona, scenario, task flow, wireframe, checklist)
- **`references/ufc-mapping.md`** - Integration guide with UFC (Unified Feature Catalog)

### Example Files

See `examples/` for complete examples:

- **`examples/sample-persona.md`** - User persona example
- **`examples/sample-wireframe.md`** - CLI wireframe example

---

## Related Documents

- Project structure: `project-structure` skill
- Document templates: `doc-templates` skill
- Feature catalog: `ufc` skill (Unified Feature Catalog)
