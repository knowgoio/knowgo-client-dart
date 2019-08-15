# openapi.api.ServerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currentConfig**](ServerApi.md#currentConfig) | **GET** /config | Obtain configuration information about the current KnowGo instance


# **currentConfig**
> Config currentConfig()

Obtain configuration information about the current KnowGo instance

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = ServerApi();

try { 
    var result = api_instance.currentConfig();
    print(result);
} catch (e) {
    print("Exception when calling ServerApi->currentConfig: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Config**](Config.md)

### Authorization

[app_id](../README.md#app_id), [bearerAuth](../README.md#bearerAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

