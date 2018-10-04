# create article model

## command

`rails generate model article content:string`

## structure

### article

| name       | type    | detail   |
| :--------: | :-----: | :------- |
| id         | integer | (auto)   |
| title      | text    |          |
| content    | text    |          |
| created_by | integer | User::id |
| updated_by | integer | User::id |
| created_at | date    | (auto)   |
| updated_at | date    | (auto)   |

### tag

| name       | type    | detail      |
| :--------: | :-----: | :---------- |
| id         | integer | (auto)      |
| article    | integer | article::id |
| tag        | text    |             |
| created_at | date    | (auto)      |
| updated_at | date    | (auto)      |

### path

| name       | type    | detail      |
| :--------: | :-----: | :---------- |
| id         | integer | (auto)      |
| path       | text    |             |
| article    | integer | article::id |
| created_at | date    | (auto)      |
| updated_at | date    | (auto)      |

### like

| name       | type    | detail      |
| :--------: | :-----: | :---------- |
| id         | integer | (auto)      |
| user       | integer | user::id    |
| article    | integer | article::id |
| created_at | date    | (auto)      |
| updated_at | date    | (auto)      |

### User

| name            | type    | detail |
| :-------------: | :-----: | :----- |
| id              | integer | (auto) |
| name            | string  |        |
| email           | string  |        |
| password_digest | string  |        |
| created_at      | date    | (auto) |
| updated_at      | date    | (auto) |
