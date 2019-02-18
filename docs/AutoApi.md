# openapi.api.AutoApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAuto**](AutoApi.md#addAuto) | **POST** /auto | Add a new auto
[**deleteAuto**](AutoApi.md#deleteAuto) | **DELETE** /auto/{AutoID} | Deletes an Auto
[**getAutoById**](AutoApi.md#getAutoById) | **GET** /auto/{AutoID} | Find auto by ID
[**updateAuto**](AutoApi.md#updateAuto) | **PUT** /auto | Update an existing auto
[**updateAutoWithForm**](AutoApi.md#updateAutoWithForm) | **POST** /auto/{AutoID} | Updates an auto with form data


# **addAuto**
> Auto addAuto(auto)

Add a new auto

Adds a new Auto to the system. The AutoID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Auto record with allocated AutoID are returned upon successful record creation.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: payd_auth
//openapi.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AutoApi();
var auto = new Auto(); // Auto | Auto object to operate on

try { 
    var result = api_instance.addAuto(auto);
    print(result);
} catch (e) {
    print("Exception when calling AutoApi->addAuto: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auto** | [**Auto**](Auto.md)| Auto object to operate on | 

### Return type

[**Auto**](Auto.md)

### Authorization

[payd_auth](../README.md#payd_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuto**
> deleteAuto(autoID, apiKey)

Deletes an Auto

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: payd_auth
//openapi.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AutoApi();
var autoID = 789; // int | Auto id to delete
var apiKey = apiKey_example; // String | 

try { 
    api_instance.deleteAuto(autoID, apiKey);
} catch (e) {
    print("Exception when calling AutoApi->deleteAuto: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **autoID** | **int**| Auto id to delete | [default to null]
 **apiKey** | **String**|  | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[payd_auth](../README.md#payd_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoById**
> Auto getAutoById(autoID)

Find auto by ID

Returns a single auto

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//openapi.api.Configuration.apiKey{'api_key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'api_key'} = "Bearer";

var api_instance = new AutoApi();
var autoID = 789; // int | ID of auto to return

try { 
    var result = api_instance.getAutoById(autoID);
    print(result);
} catch (e) {
    print("Exception when calling AutoApi->getAutoById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **autoID** | **int**| ID of auto to return | [default to null]

### Return type

[**Auto**](Auto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuto**
> updateAuto(auto)

Update an existing auto

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: payd_auth
//openapi.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AutoApi();
var auto = new Auto(); // Auto | Auto object to operate on

try { 
    api_instance.updateAuto(auto);
} catch (e) {
    print("Exception when calling AutoApi->updateAuto: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auto** | [**Auto**](Auto.md)| Auto object to operate on | 

### Return type

void (empty response body)

### Authorization

[payd_auth](../README.md#payd_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAutoWithForm**
> updateAutoWithForm(autoID, auto)

Updates an auto with form data

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: payd_auth
//openapi.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AutoApi();
var autoID = 789; // int | ID of auto that needs to be updated
var auto = new Auto(); // Auto | Auto object to operate on

try { 
    api_instance.updateAutoWithForm(autoID, auto);
} catch (e) {
    print("Exception when calling AutoApi->updateAutoWithForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **autoID** | **int**| ID of auto that needs to be updated | [default to null]
 **auto** | [**Auto**](Auto.md)| Auto object to operate on | 

### Return type

void (empty response body)

### Authorization

[payd_auth](../README.md#payd_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

