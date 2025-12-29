---
name: ufc
description: |
  This skill should be used when the user asks to "design feature catalog",
  "UFC design", "feature-centric architecture", "multi-client system", "CQRS pattern",
  "feature ID system", or needs guidance on Unified Feature Catalog design,
  feature tracking, and multi-client architecture.
---

# UFC (Unified Feature Catalog)

## Overview

UFC (Unified Feature Catalog) is a **unified ID management system** for systematically managing all feature units of a system.

### Core Values

1. **Feature-centric Architecture**: Clearly define and track business features
2. **Multi-client Support**: Integrated management of various clients (CLI, TUI, Desktop, Web, etc.)
3. **Feature Completeness Tracking**: Clear understanding of each feature's implementation status
4. **Change Impact Analysis**: Identify affected screens and APIs when modifying features

### Theoretical Background

UFC integrates the following patterns:
- **DDD (Domain-Driven Design)**: Context-based domain separation
- **CQRS (Command Query Responsibility Segregation)**: Command/Query separation
- **FOSD (Feature-Oriented Software Development)**: Feature-centric development

---

## FOV 3-Layer Model

UFC consists of Feature-Operation-View in 3 layers.

```
Context (Domain area)
  +-- Feature (User perspective functionality)
      +-- Operation (Backend)
      |   +-- Command (State change)
      |   +-- Query (Data retrieval)
      |   +-- Stream (Real-time data)
      +-- View (Frontend)
          +-- Logical View (Abstract screen)
          +-- Physical View (Client-specific implementation)
              +-- CLI
              +-- TUI
              +-- Desktop (WPF, Electron, etc.)
              +-- Web (React, Vue, Blazor, etc.)
```

---

## ID System (2 Layers)

### Logical ID

**Format**: `{Context}-{Type}{Seq}`

| Component | Description | Example |
|-----------|-------------|---------|
| **Context** | 3-letter domain code | USR, ORD, PRD |
| **Type** | 1-letter type code | F, C, Q, S, V, D |
| **Seq** | 2-digit sequence | 01, 02, 03 |

**Type codes**: F(Feature), C(Command), Q(Query), S(Stream), V(View), D(Dialog)

### Physical ID

**Format**: `{Logical ID}-{Client}`

**Client codes**: CLI, TUI, WPF, WEB, MOB, API

**Examples**:
```
USR-F01      -> User Authentication (feature)
USR-C01      -> CreateUser (command)
USR-V01-WEB  -> Login View (Web version)
```

---

## Application Guide

### Step 1: Define Context

Analyze project domain areas and define 3-letter Context codes.

### Step 2: Derive Features

Derive Features based on user stories for each Context.

### Step 3: Define Operations

Define Commands, Queries, and Streams to implement each Feature.

### Step 4: Define Views

Define Logical Views (abstract screens) and Physical Views (client-specific implementations).

### Step 5: Implementation and Tracking

Implement based on defined IDs and track completeness.

---

## Best Practices

### DO (Recommended)

- Separate Context by business domain
- Define Features based on user stories
- Design Logical Views independently of clients
- Keep ID mapping tables up to date

### DON'T (Avoid)

- Separating Context by technical layer (e.g., API, DB, UI)
- Over-granular Feature definition
- Starting implementation without Physical IDs

---

## Additional Resources

### Reference Files

See `references/` for detailed guides:

- **`references/ddd-context-mapping.md`** - DDD Bounded Context and UFC mapping patterns
- **`references/templates.md`** - Feature, Command, Query, View document templates
- **`references/use-cases.md`** - Usage scenarios (completeness check, impact analysis, etc.)
- **`references/catalog-structure.md`** - Catalog directory structure and ID system details

### Example Files

See `examples/` for complete examples:

- **`examples/sample-feature.md`** - USR Context Feature Catalog example (User Authentication)

---

## Related Skills

- **ux-design**: UX design (Persona, wireframe -> View definition linkage)
- **project-structure**: Standard folder structure
- **doc-templates**: Document templates
