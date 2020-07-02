part of knowgo.api;

class JourneysApi {
  final ApiClient apiClient;

  JourneysApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Add a new Journey classification for a specific Journey
  ///
  ///
  Future addClassificationToJourney(
      String journeyId, int classificationId) async {
    Object postBody;

    // verify required params are set
    if (journeyId == null) {
      throw ApiException(400, "Missing required param: journeyId");
    }
    if (classificationId == null) {
      throw ApiException(400, "Missing required param: classificationId");
    }

    // create path and map variables
    String path = "/journeys/{journeyId}/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString())
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Add a new Journey
  ///
  /// Adds a new Journey to the system. The JourneyID as input is ignored, as it is dynamically allocated at insertion time. Journey details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Journey record with allocated JourneyID are returned upon successful record creation.
  Future<Journey> addJourney(Journey journey) async {
    Object postBody = journey;

    // verify required params are set
    if (journey == null) {
      throw ApiException(400, "Missing required param: journey");
    }

    // create path and map variables
    String path = "/journeys".replaceAll("{format}", "json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Journey')
          as Journey;
    } else {
      return null;
    }
  }

  /// Create a Journey classification
  ///
  ///
  Future<JourneyClassifications> createJourneyClassification(
      JourneyClassifications journeyClassifications) async {
    Object postBody = journeyClassifications;

    // verify required params are set
    if (journeyClassifications == null) {
      throw ApiException(400, "Missing required param: journeyClassifications");
    }

    // create path and map variables
    String path = "/journeys/classifications".replaceAll("{format}", "json");

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
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'JourneyClassifications')
          as JourneyClassifications;
    } else {
      return null;
    }
  }

  /// Delete Journey by ID
  ///
  /// Manual deletion of a defined Journey based on its journeyId.
  Future deleteJourney(String journeyId) async {
    Object postBody;

    // verify required params are set
    if (journeyId == null) {
      throw ApiException(400, "Missing required param: journeyId");
    }

    // create path and map variables
    String path = "/journeys/{journeyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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

  /// Delete specified Journey classification
  ///
  ///
  Future deleteJourneyClassification(int classificationId) async {
    Object postBody;

    // verify required params are set
    if (classificationId == null) {
      throw ApiException(400, "Missing required param: classificationId");
    }

    // create path and map variables
    String path = "/journeys/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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

  /// Find journey by ID
  ///
  ///
  Future<Journey> getJourneyById(String journeyId) async {
    Object postBody;

    // verify required params are set
    if (journeyId == null) {
      throw ApiException(400, "Missing required param: journeyId");
    }

    // create path and map variables
    String path = "/journeys/{journeyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Journey')
          as Journey;
    } else {
      return null;
    }
  }

  /// Get Journey classification by classification id
  ///
  ///
  Future<JourneyClassifications> getJourneyClassificationById(
      int classificationId) async {
    Object postBody;

    // verify required params are set
    if (classificationId == null) {
      throw ApiException(400, "Missing required param: classificationId");
    }

    // create path and map variables
    String path = "/journeys/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'JourneyClassifications')
          as JourneyClassifications;
    } else {
      return null;
    }
  }

  /// Return a list of Journey classifications available for a specific user
  ///
  /// Given an authenticated user, return a list of Journey classifications that are available to them.
  Future<List<JourneyClassifications>> listJourneyClassifications() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/journeys/classifications".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(
                  _decodeBodyBytes(response), 'List<JourneyClassifications>')
              as List)
          .map((item) => item as JourneyClassifications)
          .toList();
    } else {
      return null;
    }
  }

  /// Return a list of Journey classifications for a specific Journey
  ///
  /// Given an authenticated user, return a list of Journey classificiations that are available to them within the context of a specific Journey.
  Future<List<JourneyClassifications>> listJourneyClassificationsByJourneyId(
      String journeyId) async {
    Object postBody;

    // verify required params are set
    if (journeyId == null) {
      throw ApiException(400, "Missing required param: journeyId");
    }

    // create path and map variables
    String path = "/journeys/{journeyId}/classifications"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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
      return (apiClient.deserialize(
                  _decodeBodyBytes(response), 'List<JourneyClassifications>')
              as List)
          .map((item) => item as JourneyClassifications)
          .toList();
    } else {
      return null;
    }
  }

  /// Return a list of journeys available for a specific user
  ///
  /// Given an authenticated user, return a list of journeys that are available to them.
  Future<List<Journey>> listJourneys() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/journeys".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Journey>')
              as List)
          .map((item) => item as Journey)
          .toList();
    } else {
      return null;
    }
  }

  /// Return a list of journeys available for a specific user
  ///
  /// Given an authenticated user, return a list of journeys that are available to them.
  Future<List<Journey>> listJourneysByUserId(int userId) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{userId}/journeys"
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Journey>')
              as List)
          .map((item) => item as Journey)
          .toList();
    } else {
      return null;
    }
  }

  /// Remove a specific classification from a Journey
  ///
  ///
  Future removeClassificationFromJourney(
      String journeyId, int classificationId) async {
    Object postBody;

    // verify required params are set
    if (journeyId == null) {
      throw ApiException(400, "Missing required param: journeyId");
    }
    if (classificationId == null) {
      throw ApiException(400, "Missing required param: classificationId");
    }

    // create path and map variables
    String path = "/journeys/{journeyId}/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString())
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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

  /// Update a specified Journey classification
  ///
  ///
  Future updateJourneyClassificationById(int classificationId,
      JourneyClassifications journeyClassifications) async {
    Object postBody = journeyClassifications;

    // verify required params are set
    if (classificationId == null) {
      throw ApiException(400, "Missing required param: classificationId");
    }
    if (journeyClassifications == null) {
      throw ApiException(400, "Missing required param: journeyClassifications");
    }

    // create path and map variables
    String path = "/journeys/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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

  /// Updates a Journey with form data
  ///
  ///
  Future updateJourneyWithForm(String journeyId, Journey journey) async {
    Object postBody = journey;

    // verify required params are set
    if (journeyId == null) {
      throw ApiException(400, "Missing required param: journeyId");
    }
    if (journey == null) {
      throw ApiException(400, "Missing required param: journey");
    }

    // create path and map variables
    String path = "/journeys/{journeyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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
