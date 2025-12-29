# UX Design Template Collection

> 6 templates for the complete UX design process

---

## Table of Contents

1. [User Persona Template](#1-user-persona-template)
2. [User Scenario Template](#2-user-scenario-template)
3. [Task Flow Template](#3-task-flow-template)
4. [Interaction Pattern Template](#4-interaction-pattern-template)
5. [Wireframe Template](#5-wireframe-template)
6. [Usability Checklist Template](#6-usability-checklist-template)

---

## 1. User Persona Template

```markdown
# User Personas

## Overview

| Item | Content |
|------|------|
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## Persona 1: {Persona Name}

### Basic Information

| Item | Content |
|------|------|
| Name | {Name} |
| Role | {Role} |
| Experience Level | Beginner / Intermediate / Advanced |
| Primary Usage Time | {Time period} |
| Primary Environment | {Environment - Desktop/Mobile/CLI} |

### Background

{Persona background description - job, career, skill level, etc.}

### Goals

1. {Goal 1}
2. {Goal 2}
3. {Goal 3}

### Needs

- {Need 1}
- {Need 2}
- {Need 3}

### Pain Points

- {Pain Point 1}
- {Pain Point 2}
- {Pain Point 3}

### Expected Behaviors

| Situation | Expected Behavior |
|------|----------|
| {Situation 1} | {Behavior} |
| {Situation 2} | {Behavior} |

### Preferred Features

- {Feature 1}
- {Feature 2}

### Quote

> "{Typical quote from persona}"

---

## Persona 2: {Persona Name}

### Basic Information

| Item | Content |
|------|------|
| Name | {Name} |
| Role | {Role} |
| Experience Level | Beginner / Intermediate / Advanced |

### Background

{Background description}

### Goals

1. {Goal 1}
2. {Goal 2}

### Needs

- {Need 1}
- {Need 2}

### Pain Points

- {Pain Point 1}

### Quote

> "{Quote}"

---

## Persona Comparison

| Item | Persona 1 | Persona 2 |
|------|-----------|-----------|
| Role | {Role} | {Role} |
| Experience Level | {Level} | {Level} |
| Main Goal | {Goal} | {Goal} |
| Main Pain Point | {Pain Point} | {Pain Point} |
```

---

## 2. User Scenario Template

```markdown
# User Scenarios

## Overview

| Item | Content |
|------|------|
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## Scenario 1: {Scenario Name}

### Context

| Item | Content |
|------|------|
| User | {Persona} |
| Situation | {Situation description} |
| Goal | {Goal to achieve} |
| Client | {CLI/TUI/Web} |

### Preconditions

- {Condition 1}
- {Condition 2}

### Main Flow (Happy Path)

1. **{Step 1 Name}**
   - User: {User action}
   - System: {System response}

2. **{Step 2 Name}**
   - User: {User action}
   - System: {System response}

3. **{Step 3 Name}**
   - User: {User action}
   - System: {System response}

### Alternative Flows

#### A1: {Alternative Name}

**Condition:** {Alternative condition}

1. {Alternative step 1}
2. {Alternative step 2}

### Exception Flows

#### E1: {Exception Name}

**Condition:** {Exception condition}

1. System: Display error message
2. User: {Recovery action}

### Postconditions

- {Result state 1}
- {Result state 2}

### Success Criteria

- [ ] {Criteria 1}
- [ ] {Criteria 2}

---

## User Journey Map

### {Persona} Journey

| Stage | Action | Emotion | Touchpoint | Opportunity |
|------|------|------|-----------|------|
| Awareness | {Action} | {Emotion} | {Touchpoint} | {Opportunity} |
| Exploration | {Action} | {Emotion} | {Touchpoint} | {Opportunity} |
| Usage | {Action} | {Emotion} | {Touchpoint} | {Opportunity} |
| Completion | {Action} | {Emotion} | {Touchpoint} | {Opportunity} |
```

---

## 3. Task Flow Template

```markdown
# Task Flow: {Task Name}

## Overview

| Item | Content |
|------|------|
| Domain | {Domain/Context} |
| Actor | {User/System} |
| Trigger | {Start condition} |
| Version | 1.0 |

---

## 1. Flow Diagram

```
┌─────────┐     ┌─────────┐     ┌─────────┐     ┌─────────┐
│  Start  │ ──▶ │ Step 1  │ ──▶ │ Step 2  │ ──▶ │ Complete│
└─────────┘     └─────────┘     └─────────┘     └─────────┘
                     │
                     │ Condition
                     ▼
                ┌─────────┐
                │ Alt 1   │
                └─────────┘
```

---

## 2. Step Details

### Step 1: {Step Name}

| Item | Content |
|------|------|
| Description | {Step description} |
| Input | {Input data} |
| Processing | {Processing logic} |
| Output | {Output data} |
| Next | Step 2 |

**UI Elements:**
- {UI element 1}
- {UI element 2}

**Business Rules:**
- {Rule 1}

---

### Step 2: {Step Name}

| Item | Content |
|------|------|
| Description | {Step description} |
| Input | {Input} |
| Processing | {Processing} |
| Output | {Output} |
| Next | Complete |

---

## 3. Branch Conditions

| Condition | Branch | Description |
|------|------|------|
| {Condition 1} | Step 2 | {Description} |
| {Condition 2} | Alt 1 | {Description} |

---

## 4. Exception Handling

| Exception | Location | Handling |
|------|----------|------|
| {Exception 1} | Step 1 | {Handling method} |
| {Exception 2} | Step 2 | {Handling method} |

---

## 5. Data Flow

```
[User Input]
     │
     ▼
[Step 1] ──▶ [Data A]
     │
     ▼
[Step 2] ──▶ [Data B]
     │
     ▼
[Result Output]
```

---

## 6. Related Screens

| Screen | View ID | Description |
|------|---------|------|
| {Screen 1} | {ID} | {Description} |
| {Screen 2} | {ID} | {Description} |
```

---

## 4. Interaction Pattern Template

```markdown
# Interaction Patterns

## Overview

| Item | Content |
|------|------|
| Version | 1.0 |
| Last Modified | {YYYY-MM-DD} |

---

## 1. Navigation Patterns

### 1.1 Main Menu

**Purpose:** Access to main features

**Structure:**
```
┌────────────────────────────────────┐
│ [Logo]  Menu1  Menu2  Menu3  [User]│
└────────────────────────────────────┘
```

**Behavior:**
- Click: Navigate to page
- Hover: Show submenu (if available)

**Accessibility:**
- Keyboard: Tab to navigate, Enter to select
- Screen reader: Announce current location

---

### 1.2 Tab Navigation

**Purpose:** Switch between related content

**Structure:**
```
┌─────┬─────┬─────┐
│ Tab1│ Tab2│ Tab3│
├─────┴─────┴─────┤
│                 │
│   Tab Content   │
│                 │
└─────────────────┘
```

**Behavior:**
- Click: Switch tab content
- Shortcut: Ctrl+Tab (next), Ctrl+Shift+Tab (previous)

---

## 2. Input Patterns

### 2.1 Form Input

**Field Layout:**
```
Label
┌─────────────────────────┐
│ Placeholder             │
└─────────────────────────┘
Helper text or error

[Submit]  [Cancel]
```

**Validation:**
- Real-time: Validate while typing
- On submit: Validate entire form

**Feedback:**
- Success: Green checkmark
- Error: Red message

---

### 2.2 Search

**Structure:**
```
┌──────────────────┬──────┐
│ 🔍 Search...     │ Go   │
└──────────────────┴──────┘
```

**Behavior:**
- Input: Autocomplete suggestions
- Enter: Execute search
- No results: Display guidance message

---

## 3. Feedback Patterns

### 3.1 Toast Notification

**Purpose:** Temporary notification

**Position:** Top right of screen

```
┌──────────────────────┐
│ ✓ Saved successfully │
└──────────────────────┘
```

**Behavior:**
- Auto-dismiss after 3 seconds
- Click: Dismiss immediately

### 3.2 Modal Dialog

**Purpose:** When important confirmation is needed

```
┌─────────────────────────────┐
│         Title               │
├─────────────────────────────┤
│                             │
│         Content             │
│                             │
├─────────────────────────────┤
│       [Cancel]  [Confirm]   │
└─────────────────────────────┘
```

**Behavior:**
- ESC: Close
- Background click: Close (optional)
- Focus trap: Restrict to modal interior

---

## 4. Data Display Patterns

### 4.1 Table

**Structure:**
```
┌────┬──────────┬────────┬────────┐
│ ID │ Name     │ Status │ Action │
├────┼──────────┼────────┼────────┤
│ 1  │ Item 1   │ Active │ [Edit] │
│ 2  │ Item 2   │ Draft  │ [Edit] │
└────┴──────────┴────────┴────────┘
[◀] Page 1 of 10 [▶]
```

**Features:**
- Sort: Header click
- Pagination
- Row selection

### 4.2 Card

**Purpose:** Display information per item

```
┌─────────────────┐
│ [Image]         │
├─────────────────┤
│ Title           │
│ Description     │
│ [Action]        │
└─────────────────┘
```

---

## 5. Action Patterns

### 5.1 Buttons

| Type | Purpose | Style |
|------|------|--------|
| Primary | Main action | Accent color |
| Secondary | Secondary action | Border only |
| Danger | Dangerous action | Red |

### 5.2 Confirmation Dialog

**When to use:**
- Delete operations
- Irreversible actions
- Important changes

---

## 6. Loading Patterns

### 6.1 Spinner

**Purpose:** Short wait (< 3 seconds)

### 6.2 Skeleton

**Purpose:** Content loading

```
┌─────────────────────────┐
│ ████████████            │
│ ██████████████████████  │
│ ██████████████          │
└─────────────────────────┘
```
```

---

## 5. Wireframe Template

```markdown
# Wireframe: {Screen Name}

## Metadata

| Item | Content |
|------|------|
| Screen Name | {Screen Name} |
| View ID | {View ID} |
| Client | {CLI/TUI/Web} |
| Access Path | {Menu path or URL} |
| Version | 1.0 |

---

## 1. Screen Layout

### 1.1 Overall Structure

```
┌─────────────────────────────────────────────────────────┐
│                        Header                            │
│  [Logo]        Navigation              [User] [Settings] │
├─────────────────────────────────────────────────────────┤
│        │                                                 │
│        │                                                 │
│  Side  │              Main Content                       │
│  bar   │                                                 │
│        │                                                 │
│        │                                                 │
├────────┴─────────────────────────────────────────────────┤
│                        Footer                            │
└─────────────────────────────────────────────────────────┘
```

### 1.2 Grid System

| Area | Ratio | Description |
|------|------|------|
| Sidebar | 20% | Navigation |
| Main Content | 80% | Primary content |

---

## 2. Section Details

### 2.1 Header

```
┌─────────────────────────────────────────────────────────┐
│ [Logo]   Menu1   Menu2   Menu3   │ 🔔  👤 Username ▼  │
└─────────────────────────────────────────────────────────┘
```

**Components:**
- Logo: Navigate to home
- Main menu: Access main features
- Notifications: Show new notifications
- User: Dropdown menu

---

### 2.2 Sidebar

```
┌────────────────┐
│ 📊 Dashboard   │
├────────────────┤
│ 📁 Menu 1      │
│   └ Sub 1      │
│   └ Sub 2      │
├────────────────┤
│ 📁 Menu 2      │
├────────────────┤
│ ⚙️ Settings    │
└────────────────┘
```

**Behavior:**
- Menu click: Navigate to page
- Current location: Highlighted

---

### 2.3 Main Content

```
┌────────────────────────────────────────────────────────┐
│ Page Title                               [Action Btn]  │
├────────────────────────────────────────────────────────┤
│                                                        │
│  ┌──────────────────────────────────────────────────┐ │
│  │                                                  │ │
│  │              Primary Content Area                │ │
│  │                                                  │ │
│  │  ┌─────────┐  ┌─────────┐  ┌─────────┐         │ │
│  │  │ Card 1  │  │ Card 2  │  │ Card 3  │         │ │
│  │  │         │  │         │  │         │         │ │
│  │  └─────────┘  └─────────┘  └─────────┘         │ │
│  │                                                  │ │
│  └──────────────────────────────────────────────────┘ │
│                                                        │
│  ┌──────────────────────────────────────────────────┐ │
│  │              Secondary Content                   │ │
│  └──────────────────────────────────────────────────┘ │
│                                                        │
└────────────────────────────────────────────────────────┘
```

---

## 3. Component Specifications

| Component | Type | Behavior | Data |
|----------|------|------|--------|
| Page Title | Text | - | {title} |
| Action Btn | Button | Click → {action} | - |
| Card 1 | Card | Click → Details | {data} |

---

## 4. Interactions

### 4.1 User Flow

1. Page entry
2. Data loading (show skeleton)
3. Display content
4. User action

### 4.2 State-based Screens

| State | Display Content |
|------|----------|
| Loading | Skeleton |
| Normal | Data display |
| Empty | Empty state message |
| Error | Error message |

---

## 5. Responsive Design

### 5.1 Breakpoints

| Size | Width | Layout |
|------|------|----------|
| Desktop | > 1024px | Sidebar + Main |
| Tablet | 768-1024px | Collapsed Sidebar |
| Mobile | < 768px | Hamburger menu |

---

## 6. Accessibility

- [ ] Keyboard navigation
- [ ] Screen reader support
- [ ] Sufficient color contrast
- [ ] Clear focus indicators
```

---

## 6. Usability Checklist Template

```markdown
# Usability Checklist

## Overview

| Item | Content |
|------|------|
| Target | {Screen/Feature name} |
| Verification Date | {YYYY-MM-DD} |
| Verifier | {Name} |
| Version | 1.0 |

---

## 1. Accessibility

### 1.1 Keyboard Accessibility

- [ ] All features accessible via keyboard only
- [ ] Focus order is logical
- [ ] Focus indicators are clear
- [ ] No keyboard traps
- [ ] Shortcuts provided (if applicable)

### 1.2 Visual Accessibility

- [ ] Color contrast 4.5:1 or higher (regular text)
- [ ] Color contrast 3:1 or higher (large text)
- [ ] Information not conveyed by color alone
- [ ] Text size adjustable

### 1.3 Screen Reader

- [ ] Alt text for all images
- [ ] Labels connected to form fields
- [ ] ARIA attributes used appropriately
- [ ] Dynamic content changes announced

---

## 2. Consistency

### 2.1 Terminology

- [ ] Same term used for same concept
- [ ] Technical terms explained
- [ ] Error messages consistent

### 2.2 Layout

- [ ] Consistent layout across pages
- [ ] Consistent component positions
- [ ] Consistent spacing and margins

### 2.3 Behavior

- [ ] Same components behave the same way
- [ ] Icon meanings consistent
- [ ] Navigation patterns consistent

---

## 3. Feedback

### 3.1 Status Display

- [ ] Loading state displayed
- [ ] Progress state displayed (long operations)
- [ ] Current location displayed

### 3.2 Result Feedback

- [ ] Success message displayed
- [ ] Error messages clear
- [ ] Error recovery guidance provided

### 3.3 Interaction Feedback

- [ ] Button click feedback
- [ ] Hover state displayed
- [ ] Disabled state distinguished

---

## 4. Efficiency

### 4.1 Task Efficiency

- [ ] Frequently used features easily accessible
- [ ] Shortcuts provided
- [ ] Autocomplete supported

### 4.2 Input Efficiency

- [ ] Default values provided
- [ ] Previous input remembered
- [ ] Copy/paste supported

### 4.3 Navigation Efficiency

- [ ] Search feature provided
- [ ] Filtering feature
- [ ] Sorting feature

---

## 5. Error Prevention

### 5.1 Input Validation

- [ ] Required fields indicated
- [ ] Real-time validation
- [ ] Input format guidance

### 5.2 Confirmation Procedures

- [ ] Confirmation dialog for dangerous actions
- [ ] Confirmation before delete
- [ ] Unsaved changes warning

### 5.3 Recovery

- [ ] Undo supported
- [ ] Auto-save
- [ ] Trash/recovery feature

---

## 6. Learnability

### 6.1 Onboarding

- [ ] First-time user guide
- [ ] Tooltips provided
- [ ] Help easily accessible

### 6.2 Intuitiveness

- [ ] Icon meanings clear
- [ ] Labels clear
- [ ] Predictable behavior

---

## 7. Performance

### 7.1 Responsiveness

- [ ] Page load < 3 seconds
- [ ] Interaction response < 100ms
- [ ] Feedback provided during delays

### 7.2 Stability

- [ ] Recoverable from errors
- [ ] Data loss prevention
- [ ] Offline handling

---

## 8. Verification Results

### Passed Items

| Category | Passed | Total | Percentage |
|----------|------|------|------|
| Accessibility | /X | /Y | % |
| Consistency | /X | /Y | % |
| Feedback | /X | /Y | % |
| Efficiency | /X | /Y | % |
| Error Prevention | /X | /Y | % |
| Learnability | /X | /Y | % |
| Performance | /X | /Y | % |
| **Total** | /X | /Y | **%** |

### Failed Items and Actions

| Item | Severity | Action | Owner |
|------|--------|----------|------|
| {Item} | Critical/Major/Minor | {Action} | {Owner} |
```

---

## Client-Specific Wireframe Guide

| Client | Characteristics | Recommended Patterns |
|-----------|------|----------|
| **CLI** | Command-line based, text output | Command + options, table output |
| **TUI** | Terminal UI, box drawing | Menus, forms, lists |
| **Web** | Browser, responsive | Grids, cards, modals |

---

## Pattern Category Summary

| Category | Pattern Examples | When to Use |
|----------|----------|----------|
| Navigation | Menu, tab, breadcrumb | Page/section navigation |
| Input | Form, search, filter | User data collection |
| Feedback | Notification, toast, modal | Status/result notification |
| Data Display | Table, list, card | Information display |
| Action | Button, dropdown, context menu | User action prompts |
