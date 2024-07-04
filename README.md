
# Getting Started with Swagger Petstore

## Introduction

This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

Find out more about Swagger: [http://swagger.io](http://swagger.io)

## Install the Package

Install the gem from the command line:

```ruby
gem install zahra-package-test -v 1.1.2
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'zahra-package-test', '1.1.2'
```

For additional gem details, see the [RubyGems page for the zahra-package-test gem](https://rubygems.org/gems/zahra-package-test/versions/1.1.2).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/client.md)

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
| `api_key_credentials` | [`ApiKeyCredentials`](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/$a/https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/custom-header-signature.md) | The credential object for Custom Header Signature |
| `http_basic_credentials` | [`HttpBasicCredentials`](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/$a/https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/basic-authentication.md) | The credential object for Basic Authentication |
| `petstore_auth_credentials` | [`PetstoreAuthCredentials`](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/$a/https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/oauth-2-implicit-grant.md) | The credential object for OAuth 2 Implicit Grant |

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

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | **Default** |
| environment2 | - |
| environment3 | - |

## Authorization

This API uses the following authentication schemes.

* [`api_key (Custom Header Signature)`](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/$a/https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/custom-header-signature.md)
* [`httpBasic (Basic Authentication)`](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/$a/https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/basic-authentication.md)
* [`petstore_auth (OAuth 2 Implicit Grant)`](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/$a/https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/oauth-2-implicit-grant.md)

## List of APIs

* [Pet](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/controllers/pet.md)
* [Store](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/controllers/store.md)
* [User](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/controllers/user.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/http-response.md)
* [HttpRequest](https://www.github.com/ZahraN444/zeepackage-1-ruby-sdk/tree/1.1.2/doc/http-request.md)

