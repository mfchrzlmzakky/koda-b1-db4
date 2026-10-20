```mermaid

erDiagram

USERS ||--o{ ROLES : allow
USERS }o--|| SESSION : allow
USERS{
  int id PK
  string email
  string password
  int roles_id FK
  date created_at
}

ROLES{
  int id PK
  string name
}

SESSION{
  int id PK
  int user_id FK
  string token
}

```
