# DDD Bounded Context and UFC Context

## Concept Comparison

| Category | DDD Bounded Context | UFC Context |
|------|---------------------|-------------|
| **Definition** | Explicit boundary where a specific domain model applies | Top-level classification unit of the feature catalog |
| **Purpose** | Ensure domain model consistency | Provide feature ID namespace |
| **Scope** | Model, language, team boundaries | ID prefix, document classification |
| **Artifacts** | Aggregate, Entity, Value Object, Domain Service | Feature, Command, Query, View |

## Relationship: UFC Context ⊆ Bounded Context

UFC Context is a **subset or equivalent** of DDD Bounded Context.

```
┌─────────────────────────────────────────────────────────────┐
│  DDD Bounded Context: "Trading"                             │
│  ┌─────────────────────────────────────────────────────┐   │
│  │  Domain Model                                        │   │
│  │  - Aggregate: Order, Position, Portfolio            │   │
│  │  - Entity: Trade, Execution                         │   │
│  │  - Value Object: Price, Quantity                    │   │
│  │  - Domain Service: OrderMatchingService             │   │
│  │  - Ubiquitous Language: Execution, Liquidation, Slippage │
│  └─────────────────────────────────────────────────────┘   │
│                           ↓ Mapping                         │
│  ┌─────────────────────────────────────────────────────┐   │
│  │  UFC Context: "TRD"                                  │   │
│  │  - TRD-F01: Auto Trading Control                    │   │
│  │  - TRD-C01: StartAutoTrading                        │   │
│  │  - TRD-Q01: GetTradingStatus                        │   │
│  │  - TRD-V01: Trading Dashboard                       │   │
│  └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
```

## Mapping Patterns

### Pattern 1: 1:1 Mapping (Recommended)

One Bounded Context corresponds to one UFC Context.

```
Bounded Context    UFC Context
─────────────────────────────
Trading         →  TRD
Strategy        →  STR
MarketData      →  MKT
Risk            →  RSK
```

**Advantages**: Simple, clear boundaries, team ownership alignment

### Pattern 2: 1:N Split

Split a large Bounded Context into multiple UFC Contexts.

```
Bounded Context: "Trading"
    ├── UFC Context: TRD (Trade Execution)
    └── UFC Context: ORD (Order Management)
```

**When to use**:
- When Bounded Context is too large to manage
- When subdomain distinction is clear
- When different teams handle each area

### Pattern 3: N:1 Merge (Not Recommended)

Merge multiple Bounded Contexts into one UFC Context.

```
Bounded Context: "Notification"  ┐
Bounded Context: "Messaging"     ├→ UFC Context: NTF
Bounded Context: "Alert"         ┘
```

**Caution**: Domain boundaries may become blurred. Use only temporarily in early stages.

## Design Principles

### 1. Bounded Context First Design

```
1. Perform DDD Strategic Design
   └── Identify Bounded Contexts
       └── Create Context Map
           └── Define Team Boundaries

2. Derive UFC Context
   └── Map Bounded Context → UFC Context
       └── Assign 3-letter codes
           └── Start Feature definitions
```

### 2. Ubiquitous Language Consistency

UFC Feature, Command, and Query names follow the **Ubiquitous Language** of the corresponding Bounded Context.

```
Bounded Context: Trading
├── Ubiquitous Language: "Execution", "Liquidation"
└── UFC Mapping:
    ├── TRD-F06: Execution Tracking
    ├── TRD-C03: EmergencyLiquidation
    └── TRD-Q08: GetExecutions
```

### 3. Respect Aggregate Boundaries

UFC Features are generally defined around a single **Aggregate**.

```
Aggregate: Order
├── TRD-F04: Order Management (Feature)
├── TRD-C04: SubmitOrder (Command)
├── TRD-C05: CancelOrder (Command)
├── TRD-C06: ModifyOrder (Command)
├── TRD-Q03: GetTodayOrders (Query)
└── TRD-Q07: GetOrderDetail (Query)
```

## Context Map and UFC

DDD Context Map relationship patterns are reflected in UFC.

| Context Map Relationship | UFC Reflection |
|------------------|----------|
| **Shared Kernel** | Define common Type codes (e.g., CMN-*) |
| **Customer-Supplier** | Document Query dependencies |
| **Conformist** | Document external API mappings |
| **Anti-Corruption Layer** | Define adapter Command/Query |
| **Open Host Service** | Define public API Features |
| **Published Language** | Reference standard Event/DTO schemas |

**Example: Anti-Corruption Layer**

```
External System: KIS (Korea Investment Securities API)
    ↓ ACL
UFC Context: BRK (Broker)
├── BRK-C01: SyncAccountFromKIS (External sync)
├── BRK-Q01: GetKISOrderStatus (External query)
└── Transform to internal domain model
```

## Relationship with Microservices

```
┌─────────────────────────────────────────────────────────┐
│  Microservice: trading-service                          │
│  ┌─────────────────────────────────────────────────┐   │
│  │  Bounded Context: Trading                        │   │
│  │  ┌─────────────────────────────────────────┐    │   │
│  │  │  UFC Context: TRD                        │    │   │
│  │  │  - Features, Commands, Queries, Views   │    │   │
│  │  └─────────────────────────────────────────┘    │   │
│  └─────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────┘
```

**Recommended Structure**: 1 Microservice = 1 Bounded Context = 1 UFC Context

## Practical Guide

### Starting a New Project

1. Perform **Event Storming** → Identify Bounded Contexts
2. Assign **3-letter UFC codes** to each Bounded Context
3. Identify core **Aggregates** → Derive Features
4. Define **Command/Query** using CQRS pattern
5. Plan client-specific **Views**

### Applying to Legacy Systems

1. Analyze existing modules/packages
2. Identify implicit Bounded Contexts
3. Create UFC Context mapping table
4. Gradually apply ID system
