
# Order

## Structure

`Order`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `pet_id` | `Integer` | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `ship_date` | `DateTime` | Optional | - |
| `status` | [`Status1Enum`](../../doc/models/status-1-enum.md) | Optional | - |
| `complete` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "id": 180,
  "petId": 220,
  "quantity": 136,
  "shipDate": "2016-03-13T12:52:32.123Z",
  "status": "placed"
}
```

