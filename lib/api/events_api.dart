part of knowgo.api;

class EventsApi {
  final ApiClient apiClient;

  EventsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a new Event
  ///
  /// Adds a new Event to the system. The EventID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Event record with allocated EventID are returned upon successful record creation.
  Future<Event?> addEvent(Event event) async {
    Object postBody = event;

    // create path and map variables
    String path = "/events".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body.isNotEmpty) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Event')
          as Event;
    } else {
      return null;
    }
  }

  /// Delete Event by ID
  ///
  /// For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
  Future deleteEvent(int eventId) async {
    Object? postBody;

    // create path and map variables
    String path = "/events/{eventId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "eventId" + "}", eventId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Find Event by ID
  ///
  ///
  Future<Event?> getEventById(int eventId) async {
    Object? postBody;

    // create path and map variables
    String path = "/events/{eventId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "eventId" + "}", eventId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body.isNotEmpty) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Event')
          as Event;
    } else {
      return null;
    }
  }

  /// Updates an Event with form data
  ///
  ///
  Future updateEventWithForm(int eventId, Event event) async {
    Object postBody = event;

    // create path and map variables
    String path = "/events/{eventId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "eventId" + "}", eventId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
