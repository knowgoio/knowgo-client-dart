part of knowgo.api;

class JourneysApi {
  final ApiClient apiClient;

  JourneysApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Add a new Journey classification for a specific Journey
  ///
  ///
  Future addClassificationToJourney(
      String journeyId, int classificationId) async {
    Object? postBody;

    // create path and map variables
    String path = "/journeys/{journeyId}/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString())
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Add a new Journey
  ///
  /// Adds a new Journey to the system. The JourneyID as input is ignored, as it is dynamically allocated at insertion time. Journey details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Journey record with allocated JourneyID are returned upon successful record creation.
  Future<Journey?> addJourney(Journey journey) async {
    Object postBody = journey;

    // create path and map variables
    String path = "/journeys".replaceAll("{format}", "json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Journey')
          as Journey;
    } else {
      return null;
    }
  }

  /// Create a Journey classification
  ///
  ///
  Future<JourneyClassifications?> createJourneyClassification(
      JourneyClassifications journeyClassifications) async {
    Object postBody = journeyClassifications;

    // create path and map variables
    String path = "/journeys/classifications".replaceAll("{format}", "json");

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
    Object? postBody;

    // create path and map variables
    String path = "/journeys/{journeyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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

  /// Delete specified Journey classification
  ///
  ///
  Future deleteJourneyClassification(int classificationId) async {
    Object? postBody;

    // create path and map variables
    String path = "/journeys/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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

  /// Find journey by ID
  ///
  ///
  Future<Journey?> getJourneyById(String journeyId) async {
    Object? postBody;

    // create path and map variables
    String path = "/journeys/{journeyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Journey')
          as Journey;
    } else {
      return null;
    }
  }

  /// Get Journey classification by classification id
  ///
  ///
  Future<JourneyClassifications?> getJourneyClassificationById(
      int classificationId) async {
    Object? postBody;

    // create path and map variables
    String path = "/journeys/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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
    Object? postBody;

    // create path and map variables
    String path = "/journeys/classifications".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(
                  _decodeBodyBytes(response), 'List<JourneyClassifications>')
              as List)
          .map((item) => item as JourneyClassifications)
          .toList();
    } else {
      return [];
    }
  }

  /// Return a list of Journey classifications for a specific Journey
  ///
  /// Given an authenticated user, return a list of Journey classificiations that are available to them within the context of a specific Journey.
  Future<List<JourneyClassifications>> listJourneyClassificationsByJourneyId(
      String journeyId) async {
    Object? postBody;

    // create path and map variables
    String path = "/journeys/{journeyId}/classifications"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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
      return (apiClient.deserialize(
                  _decodeBodyBytes(response), 'List<JourneyClassifications>')
              as List)
          .map((item) => item as JourneyClassifications)
          .toList();
    } else {
      return [];
    }
  }

  /// Return a list of journeys available for a specific user
  ///
  /// Given an authenticated user, return a list of journeys that are available to them.
  Future<List<Journey>> listJourneys() async {
    Object? postBody;

    // create path and map variables
    String path = "/journeys".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Journey>')
              as List)
          .map((item) => item as Journey)
          .toList();
    } else {
      return [];
    }
  }

  /// Return a list of journeys available for a specific user
  ///
  /// Given an authenticated user, return a list of journeys that are available to them.
  Future<List<Journey>> listJourneysByUserId(int userId) async {
    Object? postBody;

    // create path and map variables
    String path = "/users/{userId}/journeys"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "userId" + "}", userId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Journey>')
              as List)
          .map((item) => item as Journey)
          .toList();
    } else {
      return [];
    }
  }

  /// Remove a specific classification from a Journey
  ///
  ///
  Future removeClassificationFromJourney(
      String journeyId, int classificationId) async {
    Object? postBody;

    // create path and map variables
    String path = "/journeys/{journeyId}/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString())
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

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

  /// Update a specified Journey classification
  ///
  ///
  Future updateJourneyClassificationById(int classificationId,
      JourneyClassifications journeyClassifications) async {
    Object postBody = journeyClassifications;

    // create path and map variables
    String path = "/journeys/classifications/{classificationId}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "classificationId" + "}", classificationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Updates a Journey with form data
  ///
  ///
  Future updateJourneyWithForm(String journeyId, Journey journey) async {
    Object postBody = journey;

    // create path and map variables
    String path = "/journeys/{journeyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

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
