# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserApi.md#createUser) | **POST** /user | Create user
[**deleteUser**](UserApi.md#deleteUser) | **DELETE** /user/{userId} | Delete user
[**exportUser**](UserApi.md#exportUser) | **GET** /user/{userId}/export | Exports all data about current user in CSV format
[**getUserById**](UserApi.md#getUserById) | **GET** /user/{userId} | Get user by user id
[**loginUser**](UserApi.md#loginUser) | **GET** /user/login | Logs user into the system
[**logoutUser**](UserApi.md#logoutUser) | **GET** /user/logout | Logs out current logged in user session
[**updateUser**](UserApi.md#updateUser) | **PUT** /user/{userId} | Updated user


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

var api_instance = new UserApi();
var user = new User(); // User | User object to operate on

try { 
    var result = api_instance.createUser(user);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->createUser: $e\n");
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

var api_instance = new UserApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    api_instance.deleteUser(userId);
} catch (e) {
    print("Exception when calling UserApi->deleteUser: $e\n");
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

var api_instance = new UserApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    api_instance.exportUser(userId);
} catch (e) {
    print("Exception when calling UserApi->exportUser: $e\n");
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

var api_instance = new UserApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    var result = api_instance.getUserById(userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->getUserById: $e\n");
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
> String loginUser(email, password)

Logs user into the system

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserApi();
var email = email_example; // String | The user email address for login
var password = password_example; // String | The password for login in clear text

try { 
    var result = api_instance.loginUser(email, password);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->loginUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| The user email address for login | [default to null]
 **password** | **String**| The password for login in clear text | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
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

var api_instance = new UserApi();

try { 
    api_instance.logoutUser();
} catch (e) {
    print("Exception when calling UserApi->logoutUser: $e\n");
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

var api_instance = new UserApi();
var userId = 789; // int | ID of user that needs to be fetched
var user = new User(); // User | Updated user object

try { 
    api_instance.updateUser(userId, user);
} catch (e) {
    print("Exception when calling UserApi->updateUser: $e\n");
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

