# UFC Catalog Management

## Directory Structure

```
docs/design/registry/ufc/
├── README.md              # UFC Overview
├── contexts/              # Context-specific definitions
│   ├── usr/
│   │   ├── features.md   # USR Features
│   │   ├── commands.md   # USR Commands
│   │   ├── queries.md    # USR Queries
│   │   └── views.md      # USR Views
│   └── ord/
│       └── ...
├── id-mapping.md          # Legacy ID mapping
└── statistics.md          # Completion statistics
```

---

## Context Definition Guide

Context represents a domain area. Define according to project characteristics.

### Context Naming Rules

1. Use **3-letter uppercase**
2. Clearly express **domain boundaries**
3. Based on **business terminology**

### Common Context Examples

| Context | Full Name | Description |
|---------|-----------|------|
| **USR** | User | User management, authentication, authorization |
| **ORD** | Order | Orders, payments, shipping |
| **PRD** | Product | Products, catalog, inventory |
| **CMS** | Content | Content management |
| **NTF** | Notification | Notifications, messages |
| **RPT** | Report | Reports, statistics |
| **SYS** | System | System settings, monitoring |
| **AUD** | Audit | Audit, logs |

---

## ID System Details

### Logical ID

Identifies logical functional units.

**Format**: `{Context}-{Type}{Seq}`

| Component | Description | Example |
|----------|------|------|
| **Context** | 3-letter domain code | USR, ORD, PRD, SYS |
| **Type** | 1-letter type code | F, C, Q, S, V, D |
| **Seq** | 2-digit sequence | 01, 02, 03, ... |

**Type codes**:

| Type | Full Name | Description | Example |
|------|-----------|------|------|
| **F** | Feature | Business feature | USR-F01: User Authentication |
| **C** | Command | State change operation | USR-C01: CreateUser |
| **Q** | Query | Data retrieval | USR-Q01: GetUserProfile |
| **S** | Stream | Real-time stream | ORD-S01: OrderStream |
| **V** | View | Screen | USR-V01: LoginView |
| **D** | Dialog | Modal/Dialog | USR-D01: ConfirmDialog |

**Examples**:
```
USR-F01  → User Authentication (feature)
USR-C01  → CreateUser (command)
USR-Q01  → GetUserProfile (query)
USR-V01  → Login View (abstract screen)
```

### Physical ID

Identifies client-specific implementations.

**Format**: `{Logical ID}-{Client}`

**Client codes**:

| Client | Description |
|--------|------|
| **CLI** | Command Line Interface |
| **TUI** | Terminal User Interface |
| **WPF** | Windows Presentation Foundation |
| **WEB** | Web Application (React, Vue, etc.) |
| **MOB** | Mobile Application |
| **API** | REST/GraphQL API |

**Examples**:
```
USR-V01-CLI  → Login View (CLI version)
USR-V01-WEB  → Login View (Web version)
USR-V01-WPF  → Login View (Desktop version)
USR-V01-MOB  → Login View (Mobile version)
```

---

## Related Patterns

- **DDD (Domain-Driven Design)**: Bounded Context
- **CQRS**: Command Query Responsibility Segregation
- **Event Sourcing**: Event-based state management
- **Micro Frontend**: Independent deployment per client

---

## Use Cases

- **DobbyTradePro**: Auto trading system (6 Contexts, 198 elements, 46% implemented)
