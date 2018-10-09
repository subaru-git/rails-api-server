# create article model

## command

`rails generate model article content:string`
`rails generate model User name:string email:string password_digest:string`

## structure

### article

| name       | type    | detail |
| :--------: | :-----: | :----- |
| id         | integer | (auto) |
| title      | text    |        |
| content    | text    |        |
| created_at | date    | (auto) |
| updated_at | date    | (auto) |

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

### History

| name       | type    | detail                                                                            |
| :--------: | :-----: | :-------------------------------------------------------------------------------- |
| id         | integer | (auto) <br> if minimum same article id then it means this user created an article |
| user       | integer | user::id                                                                          |
| article    | integer | article::id                                                                       |
| created_at | date    | (auto)                                                                            |
| updated_at | date    | (auto)                                                                            |

### User

| name            | type    | detail |
| :-------------: | :-----: | :----- |
| id              | integer | (auto) |
| name            | string  |        |
| email           | string  |        |
| password_digest | string  |        |
| created_at      | date    | (auto) |
| updated_at      | date    | (auto) |
