part of openapi.api;



class JourneyApi {
  final ApiClient apiClient;

  JourneyApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a new Journey
  ///
  /// Adds a new Journey to the system. The JourneyID as input is ignored, as it is dynamically allocated at insertion time. Journey details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Journey record with allocated JourneyID are returned upon successful record creation.
  Future<Journey> addJourney(Journey journey) async {
    Object postBody = journey;

    // verify required params are set
    if(journey == null) {
     throw new ApiException(400, "Missing required param: journey");
    }

    // create path and map variables
    String path = "/journey".replaceAll("{format}","json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Journey') as Journey;
    } else {
      return null;
    }
  }
  /// Delete Journey by ID
  ///
  /// Manual deletion of a defined Journey based on its JourneyID.
  Future deleteJourney(String journeyID) async {
    Object postBody;

    // verify required params are set
    if(journeyID == null) {
     throw new ApiException(400, "Missing required param: journeyID");
    }

    // create path and map variables
    String path = "/journey/{JourneyID}".replaceAll("{format}","json").replaceAll("{" + "JourneyID" + "}", journeyID.toString());

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
  /// Find journey by ID
  ///
  /// 
  Future<Journey> getJourneyById(String journeyID) async {
    Object postBody;

    // verify required params are set
    if(journeyID == null) {
     throw new ApiException(400, "Missing required param: journeyID");
    }

    // create path and map variables
    String path = "/journey/{JourneyID}".replaceAll("{format}","json").replaceAll("{" + "JourneyID" + "}", journeyID.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Journey') as Journey;
    } else {
      return null;
    }
  }
  /// Updates a Journey with form data
  ///
  /// 
  Future updateJourneyWithForm(String journeyID, Journey journey) async {
    Object postBody = journey;

    // verify required params are set
    if(journeyID == null) {
     throw new ApiException(400, "Missing required param: journeyID");
    }
    if(journey == null) {
     throw new ApiException(400, "Missing required param: journey");
    }

    // create path and map variables
    String path = "/journey/{JourneyID}".replaceAll("{format}","json").replaceAll("{" + "JourneyID" + "}", journeyID.toString());

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
