part of openapi.api;



class EventApi {
  final ApiClient apiClient;

  EventApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a new Event
  ///
  /// Adds a new Event to the system. The EventID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Event record with allocated EventID are returned upon successful record creation.
  Future<Event> addEvent({ Event event }) async {
    Object postBody = event;

    // verify required params are set

    // create path and map variables
    String path = "/events".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Event') as Event;
    } else {
      return null;
    }
  }
  /// Delete Event by ID
  ///
  /// For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
  Future deleteEvent(int eventID) async {
    Object postBody;

    // verify required params are set
    if(eventID == null) {
     throw new ApiException(400, "Missing required param: eventID");
    }

    // create path and map variables
    String path = "/events/{EventID}".replaceAll("{format}","json").replaceAll("{" + "EventID" + "}", eventID.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }
  /// Find Event by ID
  ///
  /// 
  Future<Event> getEventById(int eventID) async {
    Object postBody;

    // verify required params are set
    if(eventID == null) {
     throw new ApiException(400, "Missing required param: eventID");
    }

    // create path and map variables
    String path = "/events/{EventID}".replaceAll("{format}","json").replaceAll("{" + "EventID" + "}", eventID.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Event') as Event;
    } else {
      return null;
    }
  }
  /// Updates an Event with form data
  ///
  /// 
  Future updateEventWithForm(int eventID, { Event event }) async {
    Object postBody = event;

    // verify required params are set
    if(eventID == null) {
     throw new ApiException(400, "Missing required param: eventID");
    }

    // create path and map variables
    String path = "/events/{EventID}".replaceAll("{format}","json").replaceAll("{" + "EventID" + "}", eventID.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }
}
