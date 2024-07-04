# User

Operations about user

Find out more about our store: [http://swagger.io](http://swagger.io)

```ruby
user_controller = client.user
```

## Class Name

`UserController`

## Methods

* [Create Users With Array Input](../../doc/controllers/user.md#create-users-with-array-input)
* [Update User](../../doc/controllers/user.md#update-user)
* [Create Users With List Input](../../doc/controllers/user.md#create-users-with-list-input)
* [Logout User](../../doc/controllers/user.md#logout-user)
* [Login User](../../doc/controllers/user.md#login-user)
* [Get User by Name](../../doc/controllers/user.md#get-user-by-name)
* [Create User](../../doc/controllers/user.md#create-user)
* [Delete User](../../doc/controllers/user.md#delete-user)


# Create Users With Array Input

Creates list of users with given input array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_users_with_array_input(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Array<User>`](../../doc/models/user.md) | Body, Required | List of user object |

## Response Type

`void`

## Example Usage

```ruby
body = [
  User.new
]

user_controller.create_users_with_array_input(body)
```


# Update User

This can only be done by the logged in user.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_user(username,
                body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `username` | `String` | Template, Required | name that need to be updated |
| `body` | [`UserRequest`](../../doc/models/user-request.md) | Body, Required | Updated user object |

## Response Type

`void`

## Example Usage

```ruby
username = 'username0'

body = UserRequest.new

user_controller.update_user(
  username,
  body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid user supplied | `APIException` |
| 404 | User not found | `APIException` |


# Create Users With List Input

Creates list of users with given input array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_users_with_list_input(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Array<User>`](../../doc/models/user.md) | Body, Required | List of user object |

## Response Type

`void`

## Example Usage

```ruby
body = [
  User.new
]

user_controller.create_users_with_list_input(body)
```


# Logout User

Logs out current logged in user session

:information_source: **Note** This endpoint does not require authentication.

```ruby
def logout_user
```

## Response Type

`void`

## Example Usage

```ruby
user_controller.logout_user
```


# Login User

Logs user into the system

:information_source: **Note** This endpoint does not require authentication.

```ruby
def login_user(username,
               password)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `username` | `String` | Query, Required | The user name for login |
| `password` | `String` | Query, Required | The password for login in clear text |

## Response Type

`String`

## Example Usage

```ruby
username = 'username0'

password = 'password4'

result = user_controller.login_user(
  username,
  password
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid username/password supplied | `APIException` |


# Get User by Name

Get user by user name

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_user_by_name(username)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `username` | `String` | Template, Required | The name that needs to be fetched. Use user1 for testing. |

## Response Type

[`User`](../../doc/models/user.md)

## Example Usage

```ruby
username = 'username0'

result = user_controller.get_user_by_name(username)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid username supplied | `APIException` |
| 404 | User not found | `APIException` |


# Create User

This can only be done by the logged in user.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_user(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`UserRequest`](../../doc/models/user-request.md) | Body, Required | Created user object |

## Response Type

`void`

## Example Usage

```ruby
body = UserRequest.new

user_controller.create_user(body)
```


# Delete User

This can only be done by the logged in user.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def delete_user(username)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `username` | `String` | Template, Required | The name that needs to be deleted |

## Response Type

`void`

## Example Usage

```ruby
username = 'username0'

user_controller.delete_user(username)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid username supplied | `APIException` |
| 404 | User not found | `APIException` |

