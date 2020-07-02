part of knowgo.api;

class VehiclesApi {
  final ApiClient apiClient;

  VehiclesApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Add a new auto
  ///
  /// Adds a new Auto to the system. The AutoID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Auto record with allocated AutoID are returned upon successful record creation.
  Future<Auto> addAuto(Auto auto) async {
    Object postBody = auto;

    // verify required params are set
    if (auto == null) {
      throw ApiException(400, "Missing required param: auto");
    }

    // create path and map variables
    String path = "/autos".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Auto') as Auto;
    } else {
      return null;
    }
  }

  /// Deletes an Auto
  ///
  ///
  Future deleteAuto(int autoId) async {
    Object postBody;

    // verify required params are set
    if (autoId == null) {
      throw ApiException(400, "Missing required param: autoId");
    }

    // create path and map variables
    String path = "/autos/{autoId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "autoId" + "}", autoId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Find auto by ID
  ///
  /// Returns a single auto
  Future<Auto> getAutoById(int autoId) async {
    Object postBody;

    // verify required params are set
    if (autoId == null) {
      throw ApiException(400, "Missing required param: autoId");
    }

    // create path and map variables
    String path = "/autos/{autoId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "autoId" + "}", autoId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Auto') as Auto;
    } else {
      return null;
    }
  }

  /// Return a list of vehicles available for a specific user
  ///
  /// Given an authenticated user, return a list of vehicles that are available to them.
  Future<List<Auto>> listVehicles() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/vehicles".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Auto>')
              as List)
          .map((item) => item as Auto)
          .toList();
    } else {
      return null;
    }
  }

  /// Return a list of vehicles available for a specific user
  ///
  /// Given an authenticated user, return a list of vehicles that are available to them.
  Future<List<Auto>> listVehiclesByUserId(int userId) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{userId}/vehicles"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Auto>')
              as List)
          .map((item) => item as Auto)
          .toList();
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
    if (auto == null) {
      throw ApiException(400, "Missing required param: auto");
    }

    // create path and map variables
    String path = "/autos".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Updates an auto with form data
  ///
  ///
  Future updateAutoWithForm(int autoId, Auto auto) async {
    Object postBody = auto;

    // verify required params are set
    if (autoId == null) {
      throw ApiException(400, "Missing required param: autoId");
    }
    if (auto == null) {
      throw ApiException(400, "Missing required param: auto");
    }

    // create path and map variables
    String path = "/autos/{autoId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "autoId" + "}", autoId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
