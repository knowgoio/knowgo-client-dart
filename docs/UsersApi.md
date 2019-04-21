# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersApi.md#createUser) | **POST** /users | Create user
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /users/{userId} | Delete user
[**exportUser**](UsersApi.md#exportUser) | **GET** /users/{userId}/export | Exports all data about current user in CSV format
[**getUserById**](UsersApi.md#getUserById) | **GET** /users/{userId} | Get user by user id
[**loginUser**](UsersApi.md#loginUser) | **POST** /users/login | Logs user into the system
[**logoutUser**](UsersApi.md#logoutUser) | **GET** /users/logout | Logs out current logged in user session
[**updateUser**](UsersApi.md#updateUser) | **PUT** /users/{userId} | Updated user


# **createUser**
> User createUser(user)

Create user

This can only be done by the logged in user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();
var user = new User(); // User | User object to operate on

try { 
    var result = api_instance.createUser(user);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->createUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| User object to operate on | 

### Return type

[**User**](User.md)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(userId)

Delete user

This can only be done by the logged in user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    api_instance.deleteUser(userId);
} catch (e) {
    print("Exception when calling UsersApi->deleteUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportUser**
> exportUser(userId)

Exports all data about current user in CSV format

This endpoint allows a logged in user to export all of the data pertaining to their userId from across the system in a simple CSV format, facilitating their right to data and service portability. This includes not only the personal information about the individual, but also all vehicles they are (or have been) associated with, journeys taken, and all events recorded.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    api_instance.exportUser(userId);
} catch (e) {
    print("Exception when calling UsersApi->exportUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> User getUserById(userId)

Get user by user id

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    var result = api_instance.getUserById(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getUserById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]

### Return type

[**User**](User.md)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUser**
> String loginUser(email, password, basicAuthCredentials)

Logs user into the system

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UsersApi();
var email = email_example; // String | The user email address for login
var password = password_example; // String | The password for login in clear text
var basicAuthCredentials = new BasicAuthCredentials(); // BasicAuthCredentials | Basic Auth credentials for user authentication

try { 
    var result = api_instance.loginUser(email, password, basicAuthCredentials);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->loginUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| The user email address for login | [optional] [default to null]
 **password** | **String**| The password for login in clear text | [optional] [default to null]
 **basicAuthCredentials** | [**BasicAuthCredentials**](BasicAuthCredentials.md)| Basic Auth credentials for user authentication | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutUser**
> logoutUser()

Logs out current logged in user session

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();

try { 
    api_instance.logoutUser();
} catch (e) {
    print("Exception when calling UsersApi->logoutUser: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> updateUser(userId, user)

Updated user

This can only be done by the logged in user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();
var userId = 789; // int | ID of user that needs to be fetched
var user = new User(); // User | Updated user object

try { 
    api_instance.updateUser(userId, user);
} catch (e) {
    print("Exception when calling UsersApi->updateUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]
 **user** | [**User**](User.md)| Updated user object | 

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

