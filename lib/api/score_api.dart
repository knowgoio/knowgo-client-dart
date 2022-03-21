part of knowgo.api;

class ScoreApi {
  final ApiClient apiClient;

  ScoreApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultScoreServiceApiClient;

  /// Provide an overall Score for a specific Driver
  ///
  ///
  Future<Score?> getDriverScore(int driverId,
      {String? untilDate, String? fromDate, String? xFields}) async {
    Object? postBody;

    // create path and map variables
    String path = "/score/drivers/{driverId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "driverId" + "}", driverId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};
    if (untilDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "untilDate", untilDate));
    }
    if (fromDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "fromDate", fromDate));
    }

    if (xFields != null) headerParams["X-Fields"] = xFields;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];
    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body.isNotEmpty) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Score')
          as Score;
    } else {
      return null;
    }
  }

  /// Provide a Score for a specific Journey
  ///
  ///
  Future<Score?> getJourneyScore(String journeyId, {String? xFields}) async {
    Object? postBody;

    // create path and map variables
    String path = "/score/journeys/{journeyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "journeyId" + "}", journeyId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {};
    Map<String, String> formParams = {};

    if (xFields != null) headerParams["X-Fields"] = xFields;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];
    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body.isNotEmpty) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Score')
          as Score;
    } else {
      return null;
    }
  }
}
