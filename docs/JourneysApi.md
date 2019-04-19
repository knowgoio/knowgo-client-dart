# openapi.api.JourneysApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addJourney**](JourneysApi.md#addJourney) | **POST** /journeys | Add a new Journey
[**deleteJourney**](JourneysApi.md#deleteJourney) | **DELETE** /journey/{journeyId} | Delete Journey by ID
[**getJourneyById**](JourneysApi.md#getJourneyById) | **GET** /journey/{journeyId} | Find journey by ID
[**updateJourneyWithForm**](JourneysApi.md#updateJourneyWithForm) | **POST** /journey/{journeyId} | Updates a Journey with form data


# **addJourney**
> Journey addJourney(journey)

Add a new Journey

Adds a new Journey to the system. The JourneyID as input is ignored, as it is dynamically allocated at insertion time. Journey details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Journey record with allocated JourneyID are returned upon successful record creation.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new JourneysApi();
var journey = new Journey(); // Journey | Journey object to operate on

try { 
    var result = api_instance.addJourney(journey);
    print(result);
} catch (e) {
    print("Exception when calling JourneysApi->addJourney: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **journey** | [**Journey**](Journey.md)| Journey object to operate on | 

### Return type

[**Journey**](Journey.md)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJourney**
> deleteJourney(journeyId)

Delete Journey by ID

Manual deletion of a defined Journey based on its journeyId.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new JourneysApi();
var journeyId = journeyId_example; // String | ID of the journey to delete

try { 
    api_instance.deleteJourney(journeyId);
} catch (e) {
    print("Exception when calling JourneysApi->deleteJourney: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **journeyId** | **String**| ID of the journey to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJourneyById**
> Journey getJourneyById(journeyId)

Find journey by ID

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new JourneysApi();
var journeyId = journeyId_example; // String | ID of journey that needs to be fetched

try { 
    var result = api_instance.getJourneyById(journeyId);
    print(result);
} catch (e) {
    print("Exception when calling JourneysApi->getJourneyById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **journeyId** | **String**| ID of journey that needs to be fetched | [default to null]

### Return type

[**Journey**](Journey.md)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJourneyWithForm**
> updateJourneyWithForm(journeyId, journey)

Updates a Journey with form data

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new JourneysApi();
var journeyId = journeyId_example; // String | ID of journey that needs to be updated
var journey = new Journey(); // Journey | Journey object to operate on

try { 
    api_instance.updateJourneyWithForm(journeyId, journey);
} catch (e) {
    print("Exception when calling JourneysApi->updateJourneyWithForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **journeyId** | **String**| ID of journey that needs to be updated | [default to null]
 **journey** | [**Journey**](Journey.md)| Journey object to operate on | 

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

