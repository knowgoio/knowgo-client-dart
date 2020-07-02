import 'dart:convert';
import 'package:knowgo/api.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

/// tests for ServerApi
void main() {
  ApiClient apiClient = defaultApiClient;

  group('tests for ServerApi', () {
    // Obtain configuration information about the current KnowGo instance
    //
    //Future<Config> currentConfig() async
    test('test currentConfig', () async {
      apiClient.client = MockClient((request) async {
        Config config = Config();

        config.country = "de";
        config.region = "eu";
        config.mqttProxyHost = ":1883";

        return Response(json.encode(config), 200);
      });

      final instance = ServerApi(apiClient);
      final config = await instance.currentConfig();

      expect(config.region, "eu");
      expect(config.country, "de");
      expect(config.mqttProxyHost, ":1883");
    });
  });
}
