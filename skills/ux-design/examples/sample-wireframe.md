# Sample Wireframe

## View: User Dashboard

### Metadata

| Item | Content |
|------|---------|
| View ID | USR-V01 |
| UFC Logical View | USR-V01 |
| UFC Physical View | USR-V01-WEB |
| Client | Web (React) |
| Access Path | `/dashboard` |

### Layout

```
+---------------------------------------------------------+
|  [Logo]  Dashboard  |  Settings  |  Profile  | [Logout] |
+---------------------------------------------------------+
|  +------------+  +----------------------------------+    |
|  |            |  |                                  |    |
|  |  Sidebar   |  |         Main Content             |    |
|  |            |  |                                  |    |
|  |  - Home    |  |  +---------+  +---------+        |    |
|  |  - Tasks   |  |  | Card 1  |  | Card 2  |        |    |
|  |  - Report  |  |  +---------+  +---------+        |    |
|  |  - Help    |  |                                  |    |
|  |            |  |  +-------------------------+     |    |
|  |            |  |  |     Data Table          |     |    |
|  |            |  |  |     ...                 |     |    |
|  |            |  |  +-------------------------+     |    |
|  +------------+  +----------------------------------+    |
+---------------------------------------------------------+
|  (C) 2025 Company Name  |  Privacy  |  Terms            |
+---------------------------------------------------------+
```

### Components

| Area | Component | Description |
|------|-----------|-------------|
| Header | Logo, Nav, UserMenu | Top navigation |
| Sidebar | MenuList | Left menu (collapsible) |
| Main | Cards, DataTable | Main content area |
| Footer | Links | Footer links |

### Interactions

- Clicking Sidebar menu changes Main area content
- Clicking Card navigates to detail page
- Clicking DataTable row shows detail modal
- Clicking Profile in Header shows dropdown menu

### Responsive Behavior

| Screen Size | Behavior |
|-------------|----------|
| Desktop (>1024px) | Sidebar always visible |
| Tablet (768-1024px) | Sidebar collapsed, hamburger menu |
| Mobile (<768px) | Sidebar hidden, bottom navigation |
