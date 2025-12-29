# UFC Usage Scenarios

## 1. Feature Completion Check

"Is the user authentication feature complete?"

```
USR-F01 (User Authentication)
  ├── Commands
  │   ├── USR-C01: Login ✅
  │   ├── USR-C02: Logout ✅
  │   └── USR-C03: RefreshToken ✅
  ├── Queries
  │   ├── USR-Q01: GetUserProfile ✅
  │   └── USR-Q02: ValidateSession ✅
  └── Views
      ├── USR-V01 (Logical) ✅
      ├── USR-V01-CLI ❌
      ├── USR-V01-WEB ✅
      └── USR-V01-MOB ❌
```
→ **Backend 100%, Frontend 33%**

---

## 2. Change Impact Analysis

"Impact scope when changing login feature (USR-F01)"

```
USR-F01 Change Impact:
├── USR-C01 (Login Command)
├── USR-Q01 (GetUserProfile Query)
├── USR-V01-CLI (CLI View)
├── USR-V01-WEB (Web View)
├── USR-V01-MOB (Mobile View)
└── USR-D01 (Error Dialog)
```
→ **6 elements affected**

---

## 3. New Client Addition Plan

"Views needed when adding Mobile client"

```
Mobile Client Implementation List:
├── USR-V01-MOB (Login)
├── USR-V02-MOB (Profile)
├── ORD-V01-MOB (Order List)
├── ORD-V02-MOB (Order Detail)
├── PRD-V01-MOB (Product List)
└── PRD-V02-MOB (Product Detail)
```
→ **6 Views need implementation**

---

## 4. API Design Review

"All APIs provided by Order Context"

```
ORD Context API:
├── Commands
│   ├── ORD-C01: CreateOrder
│   ├── ORD-C02: CancelOrder
│   └── ORD-C03: ModifyOrder
├── Queries
│   ├── ORD-Q01: GetOrders
│   ├── ORD-Q02: GetOrderDetail
│   └── ORD-Q03: GetOrderHistory
└── Streams
    └── ORD-S01: OrderStatusStream
```

---

## 5. Test Coverage Analysis

"Test status by Feature"

```
Feature Test Coverage:
├── USR-F01: 85% (Unit: 90%, Integration: 80%)
├── USR-F02: 70% (Unit: 75%, Integration: 65%)
├── ORD-F01: 60% (Unit: 70%, Integration: 50%)
└── ORD-F02: 40% (Unit: 50%, Integration: 30%)
```

---

## 6. Sprint Planning

"Features to implement in next Sprint"

```
Sprint 3 Plan:
├── USR-F03: Password Management
│   ├── USR-C04: ChangePassword (M)
│   ├── USR-C05: ResetPassword (L)
│   └── USR-V03-WEB: Password Change View (M)
└── ORD-F02: Order History
    ├── ORD-Q03: GetOrderHistory (S)
    └── ORD-V02-WEB: Order History View (L)
```

---

## 7. Documentation Status Check

"Documentation level for each Feature"

```
Documentation Status:
├── USR-F01: ✅ Complete (API doc, User guide)
├── USR-F02: ⚠️ Partial (API doc only)
├── ORD-F01: ⚠️ Partial (User guide only)
└── ORD-F02: ❌ Not documented
```

---

## 8. Dependency Analysis

"Features that ORD-F01 depends on"

```
ORD-F01 Dependencies:
├── USR-F01 (User Authentication)
│   └── USR-Q01: GetUserProfile (User info query)
├── PRD-F01 (Product Catalog)
│   └── PRD-Q01: GetProduct (Product info query)
└── PAY-F01 (Payment)
    └── PAY-C01: ProcessPayment (Payment processing)
```
