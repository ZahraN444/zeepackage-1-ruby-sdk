
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `test_header` | `String` | This is a test header<br>*Default*: `'TestHeaderDefaultValue'` |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `api_key_credentials` | [`ApiKeyCredentials`]($a/custom-header-signature.md) | The credential object for Custom Header Signature |
| `http_basic_credentials` | [`HttpBasicCredentials`]($a/basic-authentication.md) | The credential object for Basic Authentication |
| `petstore_auth_credentials` | [`PetstoreAuthCredentials`]($a/oauth-2-implicit-grant.md) | The credential object for OAuth 2 Implicit Grant |

The API client can be initialized as follows:

```ruby
client = SwaggerPetstore::Client.new(
  test_header: 'TestHeaderDefaultValue',
  api_key_credentials: ApiKeyCredentials.new(
    api_key: 'api_key'
  ),
  http_basic_credentials: HttpBasicCredentials.new(
    username: 'username',
    passwprd: 'passwprd'
  ),
  petstore_auth_credentials: PetstoreAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_redirect_uri: 'OAuthRedirectUri',
    o_auth_scopes: [
      OAuthScopePetstoreAuthEnum::READPETS,
      OAuthScopePetstoreAuthEnum::WRITEPETS
    ]
  ),
  environment: Environment::PRODUCTION
)
```

## Swagger Petstore Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| pet | Gets PetController |
| store | Gets StoreController |
| user | Gets UserController |
