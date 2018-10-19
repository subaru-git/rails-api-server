# API design

## article

### `/`

Get all articles.

#### params

- tag
  - Get articles that have a specification tag.
- num
  - Get num articles.
- user
  - Get articles that created specification user.
- path
  - Get articles that belongs to specification path.

#### exsample

`/?tag=rails&num=10`

#### return

```json
{
  "status": true,
  "articles": [
    {
      "id": 1,
      "title": "title",
      "content": "content",
      "tags": [
        "rails",
        "ruby"
      ],
      "updated_by": {
        "name": "user1"
      },
      "created_by": {
        "name": "user2"
      },
      "updated_at": "2018-02-03T03:15:45.000Z",
      "created_at": "2018-02-01T03:15:45.000Z",
    }
  ]
}
```
