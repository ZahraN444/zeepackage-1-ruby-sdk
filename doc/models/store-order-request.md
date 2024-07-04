
# Store Order Request

## Structure

`StoreOrderRequest`

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
  "id": 240,
  "petId": 24,
  "quantity": 196,
  "shipDate": "2016-03-13T12:52:32.123Z",
  "status": "placed"
}
```

