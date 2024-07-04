
# Custom Header Signature



Documentation for accessing and setting credentials for api_key.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| api_key | `String` | - | `api_key` |



**Note:** Auth credentials can be set using `ApiKeyCredentials` object, passed in as named parameter `api_key_credentials` in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = SwaggerPetstore::Client.new(
  api_key_credentials: ApiKeyCredentials.new(
    api_key: 'api_key'
  )
)
```


