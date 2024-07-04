
# Pet

## Structure

`Pet`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `category` | [`Category2`](../../doc/models/category-2.md) | Optional | - |
| `name` | `String` | Required | - |
| `photo_urls` | `Array<String>` | Required | - |
| `tags` | [`Array<Tag>`](../../doc/models/tag.md) | Optional | - |
| `status` | [`StatusEnum`](../../doc/models/status-enum.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": 120,
  "category": {
    "id": 232,
    "name": "name2"
  },
  "name": "name0",
  "photoUrls": [
    "photoUrls5",
    "photoUrls6"
  ],
  "tags": [
    {
      "id": 26,
      "name": "name0"
    }
  ],
  "status": "available"
}
```

