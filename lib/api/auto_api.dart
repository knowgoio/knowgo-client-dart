part of openapi.api;



class AutoApi {
  final ApiClient apiClient;

  AutoApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a new auto
  ///
  /// Adds a new Auto to the system. The AutoID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Auto record with allocated AutoID are returned upon successful record creation.
  Future<Auto> addAuto(Auto auto) async {
    Object postBody = auto;

    // verify required params are set
    if(auto == null) {
     throw new ApiException(400, "Missing required param: auto");
    }

    // create path and map variables
    String path = "/auto".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["payd_auth"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Auto') as Auto;
    } else {
      return null;
    }
  }
  /// Deletes an Auto
  ///
  /// 
  Future deleteAuto(int autoID, { String apiKey }) async {
    Object postBody;

    // verify required params are set
    if(autoID == null) {
     throw new ApiException(400, "Missing required param: autoID");
    }

    // create path and map variables
    String path = "/auto/{AutoID}".replaceAll("{format}","json").replaceAll("{" + "AutoID" + "}", autoID.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["api_key"] = apiKey;

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["payd_auth"];

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
  /// Find auto by ID
  ///
  /// Returns a single auto
  Future<Auto> getAutoById(int autoID) async {
    Object postBody;

    // verify required params are set
    if(autoID == null) {
     throw new ApiException(400, "Missing required param: autoID");
    }

    // create path and map variables
    String path = "/auto/{AutoID}".replaceAll("{format}","json").replaceAll("{" + "AutoID" + "}", autoID.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Auto') as Auto;
    } else {
      return null;
    }
  }
  /// Update an existing auto
  ///
  /// 
  Future updateAuto(Auto auto) async {
    Object postBody = auto;

    // verify required params are set
    if(auto == null) {
     throw new ApiException(400, "Missing required param: auto");
    }

    // create path and map variables
    String path = "/auto".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["payd_auth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
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
  /// Updates an auto with form data
  ///
  /// 
  Future updateAutoWithForm(int autoID, Auto auto) async {
    Object postBody = auto;

    // verify required params are set
    if(autoID == null) {
     throw new ApiException(400, "Missing required param: autoID");
    }
    if(auto == null) {
     throw new ApiException(400, "Missing required param: auto");
    }

    // create path and map variables
    String path = "/auto/{AutoID}".replaceAll("{format}","json").replaceAll("{" + "AutoID" + "}", autoID.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["payd_auth"];

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
