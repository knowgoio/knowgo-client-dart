# openapi.api.EventApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.adaptant.io/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEvent**](EventApi.md#deleteEvent) | **DELETE** /events/{EventID} | Delete Event by ID
[**getEventById**](EventApi.md#getEventById) | **GET** /events/{EventID} | Find Event by ID


# **deleteEvent**
> deleteEvent(eventID)

Delete Event by ID

For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new EventApi();
var eventID = 789; // int | ID of the Event to delete

try { 
    api_instance.deleteEvent(eventID);
} catch (e) {
    print("Exception when calling EventApi->deleteEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventID** | **int**| ID of the Event to delete | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventById**
> Event getEventById(eventID)

Find Event by ID

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new EventApi();
var eventID = 789; // int | ID of Event that needs to be fetched

try { 
    var result = api_instance.getEventById(eventID);
    print(result);
} catch (e) {
    print("Exception when calling EventApi->getEventById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventID** | **int**| ID of Event that needs to be fetched | [default to null]

### Return type

[**Event**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

