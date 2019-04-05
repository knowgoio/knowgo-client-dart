# openapi.api.EventApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://api.adaptant.io:8080/payd/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEvent**](EventApi.md#addEvent) | **POST** /events | Add a new Event
[**deleteEvent**](EventApi.md#deleteEvent) | **DELETE** /events/{EventID} | Delete Event by ID
[**getEventById**](EventApi.md#getEventById) | **GET** /events/{EventID} | Find Event by ID
[**updateEventWithForm**](EventApi.md#updateEventWithForm) | **POST** /events/{EventID} | Updates an Event with form data


# **addEvent**
> Event addEvent(event)

Add a new Event

Adds a new Event to the system. The EventID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Event record with allocated EventID are returned upon successful record creation.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new EventApi();
var event = new Event(); // Event | Event object to operate on

try { 
    var result = api_instance.addEvent(event);
    print(result);
} catch (e) {
    print("Exception when calling EventApi->addEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event** | [**Event**](Event.md)| Event object to operate on | [optional] 

### Return type

[**Event**](Event.md)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEvent**
> deleteEvent(eventID)

Delete Event by ID

For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

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

[app_id](../README.md#app_id)

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
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

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

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEventWithForm**
> updateEventWithForm(eventID, event)

Updates an Event with form data

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new EventApi();
var eventID = 789; // int | ID of Event that needs to be updated
var event = new Event(); // Event | Event object to operate on

try { 
    api_instance.updateEventWithForm(eventID, event);
} catch (e) {
    print("Exception when calling EventApi->updateEventWithForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventID** | **int**| ID of Event that needs to be updated | [default to null]
 **event** | [**Event**](Event.md)| Event object to operate on | [optional] 

### Return type

void (empty response body)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

