# openapi.api.JourneyApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteJourney**](JourneyApi.md#deleteJourney) | **DELETE** /journey/{JourneyID} | Delete Journey by ID
[**getJourneyById**](JourneyApi.md#getJourneyById) | **GET** /journey/{JourneyID} | Find journey by ID


# **deleteJourney**
> deleteJourney(journeyID)

Delete Journey by ID

For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JourneyApi();
var journeyID = 789; // int | ID of the journey to delete

try { 
    api_instance.deleteJourney(journeyID);
} catch (e) {
    print("Exception when calling JourneyApi->deleteJourney: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **journeyID** | **int**| ID of the journey to delete | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJourneyById**
> Journey getJourneyById(journeyID)

Find journey by ID

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JourneyApi();
var journeyID = 789; // int | ID of journey that needs to be fetched

try { 
    var result = api_instance.getJourneyById(journeyID);
    print(result);
} catch (e) {
    print("Exception when calling JourneyApi->getJourneyById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **journeyID** | **int**| ID of journey that needs to be fetched | [default to null]

### Return type

[**Journey**](Journey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

