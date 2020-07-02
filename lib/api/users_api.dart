part of knowgo.api;

class UsersApi {
  final ApiClient apiClient;

  UsersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Confirm the change in user password via the recovery mechanism
  ///
  ///
  Future confirmUserPasswordChangeByRecovery(
      PasswordRecoveryConfirmation passwordRecoveryConfirmation) async {
    Object postBody = passwordRecoveryConfirmation;

    // verify required params are set
    if (passwordRecoveryConfirmation == null) {
      throw ApiException(
          400, "Missing required param: passwordRecoveryConfirmation");
    }

    // create path and map variables
    String path = "/users/password/confirm".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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

  /// Create user
  ///
  /// Create a new user within the system
  Future<User> createUser(User user) async {
    Object postBody = user;

    // verify required params are set
    if (user == null) {
      throw ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/users".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// Delete user
  ///
  /// This can only be done by the logged in user.
  Future deleteUser(int userId) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{userId}"
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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Disable a service for a specific user
  ///
  /// Given an authenticated user, disable a specific service that the user no longer wishes to use.
  Future disableServiceByUserId(int userId, String serviceName) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }
    if (serviceName == null) {
      throw ApiException(400, "Missing required param: serviceName");
    }

    // create path and map variables
    String path = "/users/{userId}/services/{serviceName}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "userId" + "}", userId.toString())
        .replaceAll("{" + "serviceName" + "}", serviceName.toString());

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

  /// Enable a service for a specific user
  ///
  /// Given an authenticated user, enable a specific service that the user wishes to use.
  Future enableServiceByUserId(int userId, String serviceName) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }
    if (serviceName == null) {
      throw ApiException(400, "Missing required param: serviceName");
    }

    // create path and map variables
    String path = "/users/{userId}/services/{serviceName}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "userId" + "}", userId.toString())
        .replaceAll("{" + "serviceName" + "}", serviceName.toString());

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

  /// Exports all data about current user in CSV format
  ///
  /// This endpoint allows a logged in user to export all of the data pertaining to their userId from across the system in a simple CSV format, facilitating their right to data and service portability. This includes not only the personal information about the individual, but also all vehicles they are (or have been) associated with, journeys taken, and all events recorded.
  Future exportUser(int userId) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{userId}/export"
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
    } else {
      return;
    }
  }

  /// Get user by user id
  ///
  ///
  Future<User> getUserById(int userId) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{userId}"
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
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

  /// Return a list of services for a specific user
  ///
  /// Given an authenticated user, return a list of services that they have opted in to. This will include a subset of the &#39;/services&#39; result, and will persist regardless of the availability or lack of availability of a given service.
  Future<List<String>> listServicesByUserId(int userId) async {
    Object postBody;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/users/{userId}/services"
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>')
              as List)
          .map((item) => item as String)
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

  /// Logs user into the system and returns an authentication token.
  ///
  ///
  Future<String> loginUser(
      {String username,
      String password,
      BasicAuthCredentials basicAuthCredentials}) async {
    Object postBody = basicAuthCredentials;

    // verify required params are set

    // create path and map variables
    String path = "/users/login".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (username != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "username", username));
    }
    if (password != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "password", password));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String')
          as String;
    } else {
      return null;
    }
  }

  /// Logs out current logged in user session
  ///
  ///
  Future logoutUser() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/users/logout".replaceAll("{format}", "json");

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
    } else {
      return;
    }
  }

  /// Initiaties a password recovery operation for the designated user.
  ///
  ///
  Future recoverUserPassword({String email, String body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/users/password/recover".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (email != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "email", email));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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

  /// Refreshes the session token for a logged-in user
  ///
  ///
  Future refreshToken() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/users/refresh".replaceAll("{format}", "json");

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
    } else {
      return;
    }
  }

  /// Updated user
  ///
  /// This can only be done by the logged in user.
  Future updateUser(int userId, User user) async {
    Object postBody = user;

    // verify required params are set
    if (userId == null) {
      throw ApiException(400, "Missing required param: userId");
    }
    if (user == null) {
      throw ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/users/{userId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "userId" + "}", userId.toString());

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
}
