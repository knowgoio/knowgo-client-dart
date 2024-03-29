part of knowgo.api;

class ServicesApi {
  final ApiClient apiClient;

  ServicesApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Register a new KnowGo platform service
  ///
  ///
  Future addService(ServiceDefinition serviceDefinition) async {
    Object postBody = serviceDefinition;

    // create path and map variables
    String path = "/services".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json", "application/xml"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// DELETE pass-through for service-specific endpoint
  ///
  /// Passes through a DELETE request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint &#39;/services/{serviceName}&#39;.
  Future deleteServiceEndpoint(String serviceName, String endpoint) async {
    Object? postBody;

    // create path and map variables
    String path = "/services/{serviceName}/{endpoint}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "serviceName" + "}", serviceName.toString())
        .replaceAll("{" + "endpoint" + "}", endpoint.toString());

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

  /// Disable a service for a specific user
  ///
  /// Given an authenticated user, disable a specific service that the user no longer wishes to use.
  Future disableServiceByUserId(int userId, String serviceName) async {
    Object? postBody;

    // create path and map variables
    String path = "/users/{userId}/services/{serviceName}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "userId" + "}", userId.toString())
        .replaceAll("{" + "serviceName" + "}", serviceName.toString());

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

  /// Enable a service for a specific user
  ///
  /// Given an authenticated user, enable a specific service that the user wishes to use.
  Future enableServiceByUserId(int userId, String serviceName) async {
    Object? postBody;

    // create path and map variables
    String path = "/users/{userId}/services/{serviceName}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "userId" + "}", userId.toString())
        .replaceAll("{" + "serviceName" + "}", serviceName.toString());

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

  /// Lookup the service definition for a specific service
  ///
  ///
  Future<ServiceDefinition?> getServiceDefinition(String serviceName) async {
    Object? postBody;

    // create path and map variables
    String path = "/services/{serviceName}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "serviceName" + "}", serviceName.toString());

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
          _decodeBodyBytes(response), 'ServiceDefinition') as ServiceDefinition;
    } else {
      return null;
    }
  }

  /// GET pass-through for service-specific endpoint
  ///
  /// Passes through a GET request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint &#39;/services/{serviceName}&#39;.
  Future getServiceEndpoint(String serviceName, String endpoint) async {
    Object? postBody;

    // create path and map variables
    String path = "/services/{serviceName}/{endpoint}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "serviceName" + "}", serviceName.toString())
        .replaceAll("{" + "endpoint" + "}", endpoint.toString());

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
    }
  }

  /// Return a list of available KnowGo platform services
  ///
  ///
  Future<List<String>> listServices() async {
    Object? postBody;

    // create path and map variables
    String path = "/services".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>')
              as List)
          .map((item) => item as String)
          .toList();
    } else {
      return [];
    }
  }

  /// Return a list of services for a specific user
  ///
  /// Given an authenticated user, return a list of services that they have opted in to. This will include a subset of the &#39;/services&#39; result, and will persist regardless of the availability or lack of availability of a given service.
  Future<List<String>> listServicesByUserId(int userId) async {
    Object? postBody;

    // create path and map variables
    String path = "/users/{userId}/services"
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>')
              as List)
          .map((item) => item as String)
          .toList();
    } else {
      return [];
    }
  }

  /// POST pass-through for service-specific endpoint
  ///
  /// Passes through a POST request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint &#39;/services/{serviceName}&#39;.
  Future postServiceEndpoint(String serviceName, String endpoint) async {
    Object? postBody;

    // create path and map variables
    String path = "/services/{serviceName}/{endpoint}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "serviceName" + "}", serviceName.toString())
        .replaceAll("{" + "endpoint" + "}", endpoint.toString());

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

  /// Deregister a KnowGo platform service
  ///
  ///
  Future removeServiceDefinition(String serviceName) async {
    Object? postBody;

    // create path and map variables
    String path = "/services/{serviceName}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "serviceName" + "}", serviceName.toString());

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

  /// Update the service definition for a specific service
  ///
  ///
  Future updateServiceDefinition(
      String serviceName, ServiceDefinition serviceDefinition) async {
    Object postBody = serviceDefinition;

    // create path and map variables
    String path = "/services/{serviceName}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "serviceName" + "}", serviceName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json", "application/xml"];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// PUT pass-through for service-specific endpoint
  ///
  /// Passes through a PUT request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint &#39;/services/{serviceName}&#39;.
  Future updateServiceEndpoint(String serviceName, String endpoint) async {
    Object? postBody;

    // create path and map variables
    String path = "/services/{serviceName}/{endpoint}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "serviceName" + "}", serviceName.toString())
        .replaceAll("{" + "endpoint" + "}", endpoint.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["app_id", "bearerAuth", "cookieAuth"];
    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
