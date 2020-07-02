# knowgo.api.ServicesApi

## Load the API package
```dart
import 'package:knowgo/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addService**](ServicesApi.md#addService) | **POST** /services | Register a new KnowGo platform service
[**deleteServiceEndpoint**](ServicesApi.md#deleteServiceEndpoint) | **DELETE** /services/{serviceName}/{endpoint} | DELETE pass-through for service-specific endpoint
[**disableServiceByUserId**](ServicesApi.md#disableServiceByUserId) | **DELETE** /users/{userId}/services/{serviceName} | Disable a service for a specific user
[**enableServiceByUserId**](ServicesApi.md#enableServiceByUserId) | **POST** /users/{userId}/services/{serviceName} | Enable a service for a specific user
[**getServiceDefinition**](ServicesApi.md#getServiceDefinition) | **GET** /services/{serviceName} | Lookup the service definition for a specific service
[**getServiceEndpoint**](ServicesApi.md#getServiceEndpoint) | **GET** /services/{serviceName}/{endpoint} | GET pass-through for service-specific endpoint
[**listServices**](ServicesApi.md#listServices) | **GET** /services | Return a list of available KnowGo platform services
[**listServicesByUserId**](ServicesApi.md#listServicesByUserId) | **GET** /users/{userId}/services | Return a list of services for a specific user
[**postServiceEndpoint**](ServicesApi.md#postServiceEndpoint) | **POST** /services/{serviceName}/{endpoint} | POST pass-through for service-specific endpoint
[**removeServiceDefinition**](ServicesApi.md#removeServiceDefinition) | **DELETE** /services/{serviceName} | Deregister a KnowGo platform service
[**updateServiceDefinition**](ServicesApi.md#updateServiceDefinition) | **PUT** /services/{serviceName} | Update the service definition for a specific service
[**updateServiceEndpoint**](ServicesApi.md#updateServiceEndpoint) | **PUT** /services/{serviceName}/{endpoint} | PUT pass-through for service-specific endpoint


# **addService**
> addService(serviceDefinition)

Register a new KnowGo platform service

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

var api_instance = ServicesApi();
var serviceDefinition = ServiceDefinition(); // ServiceDefinition | KnowGo Service Definition

try { 
    api_instance.addService(serviceDefinition);
} catch (e) {
    print("Exception when calling ServicesApi->addService: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceDefinition** | [**ServiceDefinition**](ServiceDefinition.md)| KnowGo Service Definition | 

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServiceEndpoint**
> deleteServiceEndpoint(serviceName, endpoint)

DELETE pass-through for service-specific endpoint

Passes through a DELETE request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.

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

var api_instance = ServicesApi();
var serviceName = serviceName_example; // String | Service ID of service
var endpoint = endpoint_example; // String | Service-specific REST API endpoint

try { 
    api_instance.deleteServiceEndpoint(serviceName, endpoint);
} catch (e) {
    print("Exception when calling ServicesApi->deleteServiceEndpoint: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | **String**| Service ID of service | [default to null]
 **endpoint** | **String**| Service-specific REST API endpoint | [default to null]

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

var api_instance = ServicesApi();
var userId = 789; // int | ID of user that needs to be fetched
var serviceName = serviceName_example; // String | Name of service to disable

try { 
    api_instance.disableServiceByUserId(userId, serviceName);
} catch (e) {
    print("Exception when calling ServicesApi->disableServiceByUserId: $e\n");
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

var api_instance = ServicesApi();
var userId = 789; // int | ID of user that needs to be fetched
var serviceName = serviceName_example; // String | Name of service to enable

try { 
    api_instance.enableServiceByUserId(userId, serviceName);
} catch (e) {
    print("Exception when calling ServicesApi->enableServiceByUserId: $e\n");
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

# **getServiceDefinition**
> ServiceDefinition getServiceDefinition(serviceName)

Lookup the service definition for a specific service

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

var api_instance = ServicesApi();
var serviceName = serviceName_example; // String | Service ID of service to look up

try { 
    var result = api_instance.getServiceDefinition(serviceName);
    print(result);
} catch (e) {
    print("Exception when calling ServicesApi->getServiceDefinition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | **String**| Service ID of service to look up | [default to null]

### Return type

[**ServiceDefinition**](ServiceDefinition.md)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceEndpoint**
> getServiceEndpoint(serviceName, endpoint)

GET pass-through for service-specific endpoint

Passes through a GET request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.

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

var api_instance = ServicesApi();
var serviceName = serviceName_example; // String | Service ID of service
var endpoint = endpoint_example; // String | Service-specific REST API endpoint

try { 
    api_instance.getServiceEndpoint(serviceName, endpoint);
} catch (e) {
    print("Exception when calling ServicesApi->getServiceEndpoint: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | **String**| Service ID of service | [default to null]
 **endpoint** | **String**| Service-specific REST API endpoint | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listServices**
> List<String> listServices()

Return a list of available KnowGo platform services

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

var api_instance = ServicesApi();

try { 
    var result = api_instance.listServices();
    print(result);
} catch (e) {
    print("Exception when calling ServicesApi->listServices: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

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

var api_instance = ServicesApi();
var userId = 789; // int | ID of user that needs to be fetched

try { 
    var result = api_instance.listServicesByUserId(userId);
    print(result);
} catch (e) {
    print("Exception when calling ServicesApi->listServicesByUserId: $e\n");
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

# **postServiceEndpoint**
> postServiceEndpoint(serviceName, endpoint)

POST pass-through for service-specific endpoint

Passes through a POST request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.

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

var api_instance = ServicesApi();
var serviceName = serviceName_example; // String | Service ID of service
var endpoint = endpoint_example; // String | Service-specific REST API endpoint

try { 
    api_instance.postServiceEndpoint(serviceName, endpoint);
} catch (e) {
    print("Exception when calling ServicesApi->postServiceEndpoint: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | **String**| Service ID of service | [default to null]
 **endpoint** | **String**| Service-specific REST API endpoint | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeServiceDefinition**
> removeServiceDefinition(serviceName)

Deregister a KnowGo platform service

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

var api_instance = ServicesApi();
var serviceName = serviceName_example; // String | Service ID of service to delete

try { 
    api_instance.removeServiceDefinition(serviceName);
} catch (e) {
    print("Exception when calling ServicesApi->removeServiceDefinition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | **String**| Service ID of service to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceDefinition**
> updateServiceDefinition(serviceName, serviceDefinition)

Update the service definition for a specific service

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

var api_instance = ServicesApi();
var serviceName = serviceName_example; // String | Service ID of service to update
var serviceDefinition = ServiceDefinition(); // ServiceDefinition | KnowGo Service Definition

try { 
    api_instance.updateServiceDefinition(serviceName, serviceDefinition);
} catch (e) {
    print("Exception when calling ServicesApi->updateServiceDefinition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | **String**| Service ID of service to update | [default to null]
 **serviceDefinition** | [**ServiceDefinition**](ServiceDefinition.md)| KnowGo Service Definition | 

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceEndpoint**
> updateServiceEndpoint(serviceName, endpoint)

PUT pass-through for service-specific endpoint

Passes through a PUT request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.

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

var api_instance = ServicesApi();
var serviceName = serviceName_example; // String | Service ID of service
var endpoint = endpoint_example; // String | Service-specific REST API endpoint

try { 
    api_instance.updateServiceEndpoint(serviceName, endpoint);
} catch (e) {
    print("Exception when calling ServicesApi->updateServiceEndpoint: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | **String**| Service ID of service | [default to null]
 **endpoint** | **String**| Service-specific REST API endpoint | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

