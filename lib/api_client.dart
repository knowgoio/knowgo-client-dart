part of knowgo.api;

class QueryParam {
  String name;
  String? value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  String prefix;
  Client client = Client();

  Map<String, String?> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://api.knowgo.io", this.prefix = '/v1'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['app_id'] = ApiKeyAuth("header", "X-API-Key");
    _authentications['bearerAuth'] = HttpBasicAuth();
    _authentications['cookieAuth'] = ApiKeyAuth("query", "token");
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  void removeDefaultHeader(String key) {
    _defaultHeaderMap[key] = null;
  }

  dynamic _deserialize(dynamic value, String? targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Auto':
          return Auto.fromJson(value);
        case 'AuthCredentials':
          return AuthCredentials.fromJson(value);
        case 'Config':
          return Config.fromJson(value);
        case 'Event':
          return Event.fromJson(value);
        case 'Journey':
          return Journey.fromJson(value);
        case 'JourneyClassifications':
          return JourneyClassifications.fromJson(value);
        case 'PasswordRecoveryConfirmation':
          return PasswordRecoveryConfirmation.fromJson(value);
        case 'Score':
          return Score.fromJson(value);
        case 'ScoreClassification':
          return ScoreClassification.fromJson(value);
        case 'ServiceConfig':
          return ServiceConfig.fromJson(value);
        case 'ServiceDefinition':
          return ServiceDefinition.fromJson(value);
        case 'DataSource':
          return DataSource.fromJson(value);
        case 'Purposes':
          return Purposes.fromJson(value);
        case 'Endpoints':
          return Endpoints.fromJson(value);
        case 'User':
          return User.fromJson(value);
        default:
          {
            Match? match;
            if (value is List &&
                (match = _regList.firstMatch(targetType!)) != null) {
              var newTargetType = match![1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType!)) != null) {
              var newTargetType = match![1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object? obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object? body,
      Map<String, String?> headerParams,
      Map<String, String?> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams as List<QueryParam>, headerParams);

    var ps = queryParams
        .where((p) => p.value != null)
        .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value!)}');

    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    String url = basePath + prefix + path + queryString;
    Uri uri = Uri.parse(url);

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    Map<String, String> headers = {};
    headerParams.forEach((key, value) {
      if (value != null) {
        headers[key] = value;
      }
    });

    if (body is MultipartRequest) {
      var request = MultipartRequest(method, uri);
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headers);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(uri, headers: headers, body: msgBody);
        case "PUT":
          return client.put(uri, headers: headers, body: msgBody);
        case "DELETE":
          return client.delete(uri, headers: headers);
        case "PATCH":
          return client.patch(uri, headers: headers, body: msgBody);
        default:
          return client.get(uri, headers: headers);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String?> headerParams) {
    authNames.forEach((authName) {
      Authentication? auth = _authentications[authName];
      if (auth == null)
        throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T? getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }

  @override
  String toString() {
    return 'ApiClient=[basePath=$basePath, prefix=$prefix, headers=$_defaultHeaderMap, authentications=${_authentications.keys}]';
  }
}
