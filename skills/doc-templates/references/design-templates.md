# Design Document Template Collection

> 7 templates for various design documents

---

## Table of Contents

1. [Architecture Overview](#1-architecture-overview-template)
2. [Domain Design](#2-domain-design-template)
3. [Feature Design](#3-feature-design-template)
4. [API Design](#4-api-design-template)
5. [Configuration Design](#5-configuration-design-template)
6. [Deployment Design](#6-deployment-design-template)
7. [IaC Design](#7-iac-design-template)

---

## 1. Architecture Overview Template

```markdown
# Architecture Overview

## Overview

| Item | Content |
|------|------|
| Document Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |
| Status | Draft / Review / Approved |

---

## 1. System Overview

{Brief description of system purpose and main features}

---

## 2. Architecture Principles

| Principle | Description |
|------|------|
| {Principle 1} | {Description} |
| {Principle 2} | {Description} |

---

## 3. System Architecture

### 3.1 High-Level Architecture

```
┌─────────────────────────────────────────────────────────┐
│                      Client Layer                        │
├─────────────────────────────────────────────────────────┤
│                      API Gateway                         │
├─────────────────────────────────────────────────────────┤
│                    Service Layer                         │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐  ┌─────────┐   │
│  │Service A│  │Service B│  │Service C│  │Service D│   │
│  └─────────┘  └─────────┘  └─────────┘  └─────────┘   │
├─────────────────────────────────────────────────────────┤
│                     Data Layer                           │
└─────────────────────────────────────────────────────────┘
```

### 3.2 Component Structure

| Component | Role | Technology |
|----------|------|------|
| {Component 1} | {Role} | {Technology} |
| {Component 2} | {Role} | {Technology} |

---

## 4. Communication Patterns

### 4.1 Synchronous Communication

- {Pattern 1}

### 4.2 Asynchronous Communication

- {Pattern 2}

---

## 5. Data Architecture

### 5.1 Data Stores

| Store | Purpose | Technology |
|--------|------|------|
| {Store 1} | {Purpose} | {Technology} |

---

## 6. Deployment Architecture

### 6.1 Environment Configuration

| Environment | Purpose | Characteristics |
|------|------|------|
| Development | Development | {Characteristics} |
| Staging | Testing | {Characteristics} |
| Production | Operations | {Characteristics} |

---

## 7. Security Architecture

- {Security element 1}
- {Security element 2}

---

## 8. Scalability Considerations

- {Scalability consideration 1}
- {Scalability consideration 2}
```

---

## 2. Domain Design Template

```markdown
# {Domain Name} Domain Design

## Overview

| Item | Content |
|------|------|
| Domain | {Domain Name} |
| Bounded Context | {Context Name} |
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## 1. Domain Overview

### 1.1 Purpose

{Domain purpose and responsibilities}

### 1.2 Core Concepts

| Concept | Description |
|------|------|
| {Concept 1} | {Description} |
| {Concept 2} | {Description} |

---

## 2. Aggregate Design

### 2.1 Design Principles

- **Consistency Boundary**: {Description}
- **Transaction Boundary**: {Description}
- **Reference Rules**: {Description}
- **Small Size**: {Description}

### 2.2 Aggregate List

| Aggregate | Root | Responsibility |
|-----------|------|------|
| {Aggregate 1} | {RootClass} | {Responsibility} |

---

## 3. Entity Definitions

### 3.1 {Entity Name}

```
{Entity Name}
├── id: {ID Type}
├── {Attribute 1}: {Type}
├── {Attribute 2}: {Type}
└── {Method}()
```

**Business Rules:**
- {Rule 1}

---

## 4. Value Object Definitions

### 4.1 {Value Object Name}

| Attribute | Type | Description |
|------|------|------|
| {Attribute} | {Type} | {Description} |

**Validation Rules:**
- {Rule 1}

---

## 5. Domain Events

| Event | Description | Publisher | Subscriber |
|--------|------|--------|--------|
| {Event 1} | {Description} | {Publisher} | {Subscriber} |

---

## 6. Repository Pattern

### 6.1 Repository Interface

```
I{Aggregate}Repository
├── GetByIdAsync(id): Task<{Aggregate}>
├── SaveAsync(entity): Task
└── DeleteAsync(id): Task
```
```

---

## 3. Feature Design Template

```markdown
# {Feature Name} Design Document

## Overview

| Item | Content |
|------|------|
| Version | 1.0 |
| Status | Draft / Design Complete / Implemented |
| Phase | Phase {N} |
| Created | {YYYY-MM-DD} |

---

## 1. Overview

### 1.1 Document Purpose

{Purpose of this document}

### 1.2 Background

{Background for why this feature is needed}

### 1.3 Scope

**Included:**
- {Included item}

**Excluded:**
- {Excluded item}

---

## 2. Requirements

### 2.1 Functional Requirements

| ID | Requirement | Priority |
|----|----------|----------|
| FR-001 | {Requirement} | P0/P1/P2 |
| FR-002 | {Requirement} | P0/P1/P2 |

### 2.2 Non-Functional Requirements

| ID | Requirement | Criteria |
|----|----------|------|
| NFR-001 | Response time | < {X}ms |
| NFR-002 | Availability | {X}% |

---

## 3. Architecture Design

### 3.1 Component Structure

{Component diagram}

### 3.2 Sequence Diagram

{Sequence diagram}

---

## 4. Data Model

### 4.1 Entities

| Entity | Description | Attributes |
|--------|------|------|
| {Entity} | {Description} | {Attribute list} |

---

## 5. API Design

### 5.1 Endpoints

| Method | Path | Description |
|--------|------|------|
| GET | /api/{resource} | {Description} |
| POST | /api/{resource} | {Description} |

---

## 6. Implementation Plan

### 6.1 Task Breakdown

| Task | Description | Size | Assignee |
|------|------|------|------|
| {Task 1} | {Description} | S/M/L | {Assignee} |

---

## 7. Test Plan

| Type | Scope | Criteria |
|------|------|------|
| Unit Tests | {Scope} | Coverage {X}% |
| Integration Tests | {Scope} | {Criteria} |
```

---

## 4. API Design Template

```markdown
# {API Name} API Design

## Overview

| Item | Content |
|------|------|
| API Name | {API Name} |
| Version | v1 |
| Base URL | `/api/v1/{resource}` |
| Authentication | {Auth method} |

---

## 1. Endpoint List

| Method | Path | Description | Auth |
|--------|------|------|------|
| GET | `/{resource}` | List | Required |
| GET | `/{resource}/{id}` | Get single | Required |
| POST | `/{resource}` | Create | Required |
| PUT | `/{resource}/{id}` | Update | Required |
| DELETE | `/{resource}/{id}` | Delete | Required |

---

## 2. Common Specifications

### 2.1 Authentication

**Header:**
```
Authorization: Bearer {token}
```

### 2.2 Common Response Format

**Success:**
```json
{
  "success": true,
  "data": { ... },
  "meta": {
    "timestamp": "2025-01-01T00:00:00Z"
  }
}
```

**Failure:**
```json
{
  "success": false,
  "error": {
    "code": "ERROR_CODE",
    "message": "Error message"
  }
}
```

### 2.3 Error Codes

| Code | HTTP Status | Description |
|------|-------------|------|
| UNAUTHORIZED | 401 | Authentication required |
| FORBIDDEN | 403 | No permission |
| NOT_FOUND | 404 | Resource not found |
| VALIDATION_ERROR | 400 | Validation failed |

---

## 3. Endpoint Details

### 3.1 GET `/{resource}`

**Description:** Get {resource} list

**Query Parameters:**

| Parameter | Type | Required | Description |
|----------|------|------|------|
| page | integer | N | Page number (default: 1) |
| size | integer | N | Page size (default: 20) |
| sort | string | N | Sort criteria |

**Response:**
```json
{
  "success": true,
  "data": [
    {
      "id": "uuid",
      "field": "value"
    }
  ],
  "meta": {
    "page": 1,
    "size": 20,
    "total": 100
  }
}
```

### 3.2 POST `/{resource}`

**Description:** Create {resource}

**Request Body:**
```json
{
  "field1": "value1",
  "field2": "value2"
}
```

**Validation:**

| Field | Rules |
|------|------|
| field1 | required, max:100 |
| field2 | required |

**Response:** (201 Created)
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "field1": "value1"
  }
}
```
```

---

## 5. Configuration Design Template

```markdown
# Configuration Design

## Overview

| Item | Content |
|------|------|
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## 1. Configuration Structure

### 1.1 Configuration File Locations

```
config/
├── appsettings.json           # Default settings
├── appsettings.Development.json
├── appsettings.Staging.json
├── appsettings.Production.json
└── secrets/                   # Secrets (gitignore)
```

### 1.2 Configuration Hierarchy

```
Default settings (appsettings.json)
    │
    ▼
Environment-specific (appsettings.{Environment}.json)
    │
    ▼
Environment variables
    │
    ▼
Secrets (Secret Manager / Vault)
```

---

## 2. Configuration Items

### 2.1 Application Settings

| Key | Description | Default | Required |
|----|------|--------|------|
| App:Name | App name | {Value} | Y |
| App:Version | Version | {Value} | Y |

### 2.2 Database Settings

| Key | Description | Per Environment |
|----|------|--------|
| Database:ConnectionString | DB connection | Y |
| Database:MaxPoolSize | Pool size | N |

---

## 3. Environment-Specific Settings

### 3.1 Development

```json
{
  "Database": {
    "ConnectionString": "localhost..."
  },
  "Logging": {
    "Level": "Debug"
  }
}
```

### 3.2 Production

```json
{
  "Database": {
    "ConnectionString": "${DATABASE_URL}"
  },
  "Logging": {
    "Level": "Warning"
  }
}
```

---

## 4. Secret Management

### 4.1 Secret List

| Secret | Purpose | Management Method |
|--------|------|----------|
| DB Password | DB access | Secret Manager |
| API Key | External API | Vault |

---

## 5. Validation

### 5.1 Required Setting Validation

| Setting | Validation Rule |
|------|----------|
| Database:ConnectionString | Not empty |
| App:Name | Not empty |
```

---

## 6. Deployment Design Template

```markdown
# Deployment Design

## Overview

| Item | Content |
|------|------|
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## 1. Deployment Architecture

### 1.1 Environment Configuration

| Environment | Purpose | URL |
|------|------|-----|
| Development | Development | dev.example.com |
| Staging | Testing | staging.example.com |
| Production | Operations | example.com |

### 1.2 Infrastructure Diagram

```
┌─────────────────────────────────────────────┐
│                 Load Balancer                │
└─────────────────────────────────────────────┘
                      │
        ┌─────────────┼─────────────┐
        ▼             ▼             ▼
   ┌─────────┐   ┌─────────┐   ┌─────────┐
   │ App 1   │   │ App 2   │   │ App 3   │
   └─────────┘   └─────────┘   └─────────┘
        │             │             │
        └─────────────┼─────────────┘
                      ▼
              ┌─────────────┐
              │  Database   │
              └─────────────┘
```

---

## 2. Container Configuration

### 2.1 Docker Images

| Service | Image | Port |
|--------|--------|------|
| {Service 1} | {Image} | {Port} |

### 2.2 Docker Compose

```yaml
version: '3.8'
services:
  app:
    image: {image}
    ports:
      - "{port}:{port}"
    environment:
      - ENV_VAR=value
```

---

## 3. CI/CD Pipeline

### 3.1 Workflow

```
┌────────┐    ┌────────┐    ┌────────┐    ┌────────┐
│  Push  │ ─▶ │ Build  │ ─▶ │  Test  │ ─▶ │ Deploy │
└────────┘    └────────┘    └────────┘    └────────┘
```

### 3.2 Deployment Triggers

| Branch | Environment | Trigger |
|--------|------|--------|
| develop | Development | Automatic |
| main | Staging | Automatic |
| release/* | Production | Manual approval |

---

## 4. Scaling Strategy

### 4.1 Horizontal Scaling

| Condition | Action |
|------|------|
| CPU > 70% | Add instance |
| CPU < 30% | Remove instance |

---

## 5. Monitoring

| Item | Tool | Alert Condition |
|------|------|----------|
| Server status | {Tool} | On down |
| Response time | {Tool} | > {X}ms |
| Error rate | {Tool} | > {X}% |

---

## 6. Rollback Procedure

1. {Step 1}
2. {Step 2}
3. {Step 3}
```

---

## 7. IaC Design Template

```markdown
# Infrastructure as Code (IaC) Design

## Overview

| Item | Content |
|------|------|
| IaC Tool | {Terraform / Pulumi / CloudFormation} |
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## 1. IaC Structure

### 1.1 Directory Structure

```
deploy/
├── terraform/
│   ├── modules/
│   │   ├── network/
│   │   ├── compute/
│   │   └── database/
│   ├── environments/
│   │   ├── dev/
│   │   ├── staging/
│   │   └── prod/
│   └── main.tf
└── scripts/
    └── setup.sh
```

### 1.2 Module Configuration

| Module | Description | Resources |
|------|------|--------|
| network | Network | VPC, Subnet, Security Group |
| compute | Compute | EC2, ECS, Lambda |
| database | Database | RDS, DynamoDB |

---

## 2. Resource Definitions

### 2.1 Network

| Resource | Name | Settings |
|--------|------|------|
| VPC | {name}-vpc | CIDR: 10.0.0.0/16 |
| Subnet | {name}-subnet-{az} | CIDR: 10.0.{N}.0/24 |

---

## 3. Environment-Specific Settings

### 3.1 Variable Files

**dev.tfvars:**
```hcl
environment = "dev"
instance_type = "t3.micro"
```

**prod.tfvars:**
```hcl
environment = "prod"
instance_type = "t3.large"
```

---

## 4. State Management

### 4.1 Backend Configuration

```hcl
terraform {
  backend "s3" {
    bucket = "{state-bucket}"
    key    = "{project}/terraform.tfstate"
    region = "{region}"
  }
}
```

---

## 5. Deployment Procedure

### 5.1 Manual Deployment

```bash
# Initialize
terraform init

# Plan
terraform plan -var-file=environments/{env}.tfvars

# Apply
terraform apply -var-file=environments/{env}.tfvars
```

---

## 6. Tagging Rules

| Tag | Description | Example |
|------|------|------|
| Environment | Environment | dev, prod |
| Project | Project | {project-name} |
| Owner | Owner | {team} |
```
