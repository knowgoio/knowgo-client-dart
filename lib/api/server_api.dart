part of knowgo.api;

class ServerApi {
  final ApiClient apiClient;

  ServerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Obtain configuration information about the current KnowGo instance
  ///
  ///
  Future<Config> currentConfig() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/config".replaceAll("{format}", "json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Config')
          as Config;
    } else {
      return null;
    }
  }
}
