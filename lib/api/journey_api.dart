part of openapi.api;



class JourneyApi {
  final ApiClient apiClient;

  JourneyApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete Journey by ID
  ///
  /// For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
  Future deleteJourney(int journeyID) async {
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
    List<String> authNames = [];

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
  Future<Journey> getJourneyById(int journeyID) async {
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
    List<String> authNames = [];

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
}
