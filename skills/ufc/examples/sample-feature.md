# Feature Catalog: User Authentication (USR Context)

> Example of user authentication feature definition using the UFC pattern

---

## Context Definition

| Item | Value |
|------|-------|
| Context ID | USR |
| Context Name | User Management |
| Description | User account management and authentication |

---

## Feature List

### USR-F01: User Authentication

| Item | Value |
|------|-------|
| Feature ID | USR-F01 |
| Name | User Authentication |
| Description | Email/password-based login and JWT token issuance |
| Priority | P1 |
| Completion | 100% |

#### Operations

| ID | Type | Name | Description | Completion |
|----|------|------|-------------|------------|
| USR-C01 | Command | CreateUser | Create new user | 100% |
| USR-C02 | Command | UpdateUser | Update user information | 100% |
| USR-C03 | Command | DeleteUser | Delete user (soft delete) | 100% |
| USR-Q01 | Query | GetUserById | Get user by ID | 100% |
| USR-Q02 | Query | GetUserByEmail | Get user by email | 100% |
| USR-Q03 | Query | ListUsers | List users (paginated) | 100% |

#### Views

| Logical ID | Name | Physical ID | Client | Completion |
|------------|------|-------------|--------|------------|
| USR-V01 | Login Screen | USR-V01-WEB | Web | 100% |
| USR-V01 | Login Screen | USR-V01-CLI | CLI | 100% |
| USR-V01 | Login Screen | USR-V01-TUI | TUI | 80% |
| USR-V02 | Sign-up Screen | USR-V02-WEB | Web | 100% |
| USR-V02 | Sign-up Screen | USR-V02-CLI | CLI | 100% |
| USR-D01 | Change Password Dialog | USR-D01-WEB | Web | 100% |

---

### USR-F02: Token Management

| Item | Value |
|------|-------|
| Feature ID | USR-F02 |
| Name | Token Management |
| Description | JWT access/refresh token issuance and renewal |
| Priority | P1 |
| Completion | 100% |

#### Operations

| ID | Type | Name | Description | Completion |
|----|------|------|-------------|------------|
| USR-C04 | Command | IssueToken | Issue token | 100% |
| USR-C05 | Command | RefreshToken | Refresh token | 100% |
| USR-C06 | Command | RevokeToken | Revoke token | 100% |
| USR-Q04 | Query | ValidateToken | Validate token | 100% |

---

## ID Mapping Tables

### Context to Feature

| Context | Feature ID | Feature Name |
|---------|------------|--------------|
| USR | USR-F01 | User Authentication |
| USR | USR-F02 | Token Management |
| USR | USR-F03 | Permission Management |

### Feature to Operation

| Feature | Operation ID | Operation Name | Type |
|---------|--------------|----------------|------|
| USR-F01 | USR-C01 | CreateUser | Command |
| USR-F01 | USR-C02 | UpdateUser | Command |
| USR-F01 | USR-C03 | DeleteUser | Command |
| USR-F01 | USR-Q01 | GetUserById | Query |
| USR-F01 | USR-Q02 | GetUserByEmail | Query |
| USR-F01 | USR-Q03 | ListUsers | Query |
| USR-F02 | USR-C04 | IssueToken | Command |
| USR-F02 | USR-C05 | RefreshToken | Command |
| USR-F02 | USR-C06 | RevokeToken | Command |
| USR-F02 | USR-Q04 | ValidateToken | Query |

### Logical View to Physical View

| Logical ID | Physical ID | Client | Status |
|------------|-------------|--------|--------|
| USR-V01 | USR-V01-WEB | Web | 100% |
| USR-V01 | USR-V01-CLI | CLI | 100% |
| USR-V01 | USR-V01-TUI | TUI | 80% |
| USR-V02 | USR-V02-WEB | Web | 100% |
| USR-V02 | USR-V02-CLI | CLI | 100% |
| USR-D01 | USR-D01-WEB | Web | 100% |

---

## Completion Tracking

### Context Completion

| Context | Total Features | Completed Features | Completion |
|---------|----------------|-------------------|------------|
| USR | 3 | 2 | 67% |

### Feature Completion

| Feature | Operations | Views (CLI) | Views (Web) | Overall |
|---------|------------|-------------|-------------|---------|
| USR-F01 | 100% | 100% | 100% | 100% |
| USR-F02 | 100% | - | - | 100% |
| USR-F03 | 0% | 0% | 0% | 0% |

---

## Impact Analysis

### Impact When USR-C01 (CreateUser) Changes

**Affected Views:**
- USR-V02-WEB (Sign-up Screen - Web)
- USR-V02-CLI (Sign-up Screen - CLI)

**Affected APIs:**
- `POST /api/v1/users`

**Affected Tests:**
- `tests/api/test_users.py::test_create_user`
- `tests/services/test_user_service.py::test_create_user`

---

## Related Documents

- API Design: `docs/design/api/user-api.md`
- Domain Design: `docs/design/domain/user-domain.md`
- ADR: `docs/adr/ADR-003-jwt-authentication.md`
