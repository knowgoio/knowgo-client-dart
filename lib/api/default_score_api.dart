part of knowgo.api;

class DefaultScoreApi {
  final ApiClient apiClient;

  DefaultScoreApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultScoreServiceApiClient;

  /// Health check endpoint for service health monitoring
  ///
  ///
  Future HealthCheck() async {
    Object? postBody;

    // create path and map variables
    String path = "/healthcheck".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];
    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
