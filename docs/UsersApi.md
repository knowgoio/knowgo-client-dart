# knowgo.api.UsersApi

## Load the API package
```dart
import 'package:knowgo/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmUserPasswordChangeByRecovery**](UsersApi.md#confirmUserPasswordChangeByRecovery) | **POST** /users/password/confirm | Confirm the change in user password via the recovery mechanism
[**createUser**](UsersApi.md#createUser) | **POST** /users | Create user
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /users/{userId} | Delete user
[**disableServiceByUserId**](UsersApi.md#disableServiceByUserId) | **DELETE** /users/{userId}/services/{serviceName} | Disable a service for a specific user
[**enableServiceByUserId**](UsersApi.md#enableServiceByUserId) | **POST** /users/{userId}/services/{serviceName} | Enable a service for a specific user
[**exportUser**](UsersApi.md#exportUser) | **GET** /users/{userId}/export | Exports all data about current user in CSV format
[**getUserById**](UsersApi.md#getUserById) | **GET** /users/{userId} | Get user by user id
[**listJourneysByUserId**](UsersApi.md#listJourneysByUserId) | **GET** /users/{userId}/journeys | Return a list of journeys available for a specific user
[**listServicesByUserId**](UsersApi.md#listServicesByUserId) | **GET** /users/{userId}/services | Return a list of services for a specific user
[**listVehiclesByUserId**](UsersApi.md#listVehiclesByUserId) | **GET** /users/{userId}/vehicles | Return a list of vehicles available for a specific user
[**loginUser**](UsersApi.md#loginUser) | **POST** /users/login | Logs user into the system and returns an authentication token.
[**logoutUser**](UsersApi.md#logoutUser) | **GET** /users/logout | Logs out current logged in user session
[**recoverUserPassword**](UsersApi.md#recoverUserPassword) | **POST** /users/password/recover | Initiaties a password recovery operation for the designated user.
[**refreshToken**](UsersApi.md#refreshToken) | **GET** /users/refresh | Refreshes the session token for a logged-in user
[**updateUser**](UsersApi.md#updateUser) | **PUT** /users/{userId} | Updated user


# **confirmUserPasswordChangeByRecovery**
> confirmUserPasswordChangeByRecovery(passwordRecoveryConfirmation)

Confirm the change in user password via the recovery mechanism

### Example 
```dart
import 'package:knowgo/api.dart';

var api_instance = UsersApi();
var passwordRecoveryConfirmation = PasswordRecoveryConfirmation(); // PasswordRecoveryConfirmation | User email, new password and reset token to initiate password change

try { 
    api_instance.confirmUserPasswordChangeByRecovery(passwordRecoveryConfirmation);
} catch (e) {
    print("Exception when calling UsersApi->confirmUserPasswordChangeByRecovery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordRecoveryConfirmation** | [**PasswordRecoveryConfirmation**](PasswordRecoveryConfirmation.md)| User email, new password and reset token to initiate password change | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> User createUser(user)

Create user

Create a new user within the system

### Example 
```dart
import 'package:knowgo/api.dart';

var api_instance = UsersApi();
var user = User(); // User | User object to operate on

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

No authorization required

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
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
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

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableServiceByUserId**
> disableServiceByUserId(userId, serviceName)

Disable a service for a specific user

Given an authenticated user, disable a specific service that the user no longer wishes to use.

### Example 
```dart
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
var userId = 789; // int | ID of user that needs to be fetched
var serviceName = serviceName_example; // String | Name of service to disable

try { 
    api_instance.disableServiceByUserId(userId, serviceName);
} catch (e) {
    print("Exception when calling UsersApi->disableServiceByUserId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]
 **serviceName** | **String**| Name of service to disable | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableServiceByUserId**
> enableServiceByUserId(userId, serviceName)

Enable a service for a specific user

Given an authenticated user, enable a specific service that the user wishes to use.

### Example 
```dart
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
var userId = 789; // int | ID of user that needs to be fetched
var serviceName = serviceName_example; // String | Name of service to enable

try { 
    api_instance.enableServiceByUserId(userId, serviceName);
} catch (e) {
    print("Exception when calling UsersApi->enableServiceByUserId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]
 **serviceName** | **String**| Name of service to enable | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

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
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
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

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> User getUserById(userId)

Get user by user id

### Example 
```dart
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
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

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listJourneysByUserId**
> List<Journey> listJourneysByUserId(userId)

Return a list of journeys available for a specific user

Given an authenticated user, return a list of journeys that are available to them.

### Example 
```dart
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    var result = api_instance.listJourneysByUserId(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->listJourneysByUserId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]

### Return type

[**List<Journey>**](Journey.md)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listServicesByUserId**
> List<String> listServicesByUserId(userId)

Return a list of services for a specific user

Given an authenticated user, return a list of services that they have opted in to. This will include a subset of the '/services' result, and will persist regardless of the availability or lack of availability of a given service.

### Example 
```dart
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    var result = api_instance.listServicesByUserId(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->listServicesByUserId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]

### Return type

**List<String>**

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVehiclesByUserId**
> List<Auto> listVehiclesByUserId(userId)

Return a list of vehicles available for a specific user

Given an authenticated user, return a list of vehicles that are available to them.

### Example 
```dart
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    var result = api_instance.listVehiclesByUserId(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->listVehiclesByUserId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of user that needs to be fetched | [default to null]

### Return type

[**List<Auto>**](Auto.md)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUser**
> String loginUser(username, password, basicAuthCredentials)

Logs user into the system and returns an authentication token.

### Example 
```dart
import 'package:knowgo/api.dart';

var api_instance = UsersApi();
var username = username_example; // String | The user's username or email address for login
var password = password_example; // String | The password for login in clear text
var basicAuthCredentials = BasicAuthCredentials(); // BasicAuthCredentials | Basic Auth credentials for user authentication

try { 
    var result = api_instance.loginUser(username, password, basicAuthCredentials);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->loginUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The user&#39;s username or email address for login | [optional] [default to null]
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
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();

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

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recoverUserPassword**
> recoverUserPassword(email, body)

Initiaties a password recovery operation for the designated user.

### Example 
```dart
import 'package:knowgo/api.dart';

var api_instance = UsersApi();
var email = ; // String | The user's email address to recover the password for.
var body = String(); // String | User email address to initiate password recovery procedure for

try { 
    api_instance.recoverUserPassword(email, body);
} catch (e) {
    print("Exception when calling UsersApi->recoverUserPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**String**](.md)| The user&#39;s email address to recover the password for. | [optional] [default to null]
 **body** | **String**| User email address to initiate password recovery procedure for | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> refreshToken()

Refreshes the session token for a logged-in user

### Example 
```dart
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();

try { 
    api_instance.refreshToken();
} catch (e) {
    print("Exception when calling UsersApi->refreshToken: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

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
import 'package:knowgo/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

var api_instance = UsersApi();
var userId = 789; // int | ID of user that needs to be fetched
var user = User(); // User | Updated user object

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

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

