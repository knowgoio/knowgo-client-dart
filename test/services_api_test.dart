import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:openapi/api.dart';
import 'package:test/test.dart';

/// tests for ServicesApi
void main() {
  ApiClient apiClient = defaultApiClient;

  group('tests for ServicesApi', () {
    // Register a new KnowGo platform service
    //
    //Future addService(ServiceDefinition serviceDefinition) async 
    test('test addService', () async {
      List<ServiceDefinition> services = List<ServiceDefinition>();
      ServiceDefinition service = ServiceDefinition();
      final serviceName = "knowgo-score";

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        final newService = ServiceDefinition.fromJson(parsed);
        services.add(newService);
        return Response("Created", 201);
      });

      final instance = ServicesApi(apiClient);
      service.serviceName = serviceName;
      await instance.addService(service);

      expect(services.length, 1);
      expect(services.elementAt(0).serviceName, serviceName);
    });

    // Lookup the service definition for a specific service
    //
    //Future<ServiceDefinition> getServiceDefinition(String serviceName) async 
    test('test getServiceDefinition', () async {
      final serviceName = "knowgo-score";

      apiClient.client = MockClient((request) async {
        ServiceDefinition service = ServiceDefinition();
        service.serviceName = serviceName;
        return Response(json.encode(service), 200);
      });

      final instance = ServicesApi(apiClient);
      final service = await instance.getServiceDefinition(serviceName);

      expect(service.serviceName, serviceName);
    });

    // Return a list of available KnowGo platform services
    //
    //Future<List<String>> listServices() async 
    test('test listServices', () async {
      apiClient.client = MockClient((request) async {
        List<String> services = [ "knowgo-score", ];
        return Response(json.encode(services), 200);
      });
      final instance = ServicesApi(apiClient);
      final services = await instance.listServices();
      expect(services.length, 1);
      expect(services.elementAt(0), 'knowgo-score');
    });

    // Deregister a KnowGo platform service
    //
    //Future removeServiceDefinition(String serviceName) async 
    test('test removeServiceDefinition', () async {
      List<ServiceDefinition> services = List<ServiceDefinition>();
      ServiceDefinition service1 = ServiceDefinition();
      ServiceDefinition service2 = ServiceDefinition();
      final serviceName = "knowgo-score";

      service1.serviceName = serviceName;
      service2.serviceName = "other";

      services.add(service1);
      services.add(service2);

      apiClient.client = MockClient((request) async {
        services.removeWhere((service) => service.serviceName == serviceName);
        return Response("OK", 200);
      });

      final instance = ServicesApi(apiClient);
      await instance.removeServiceDefinition(serviceName);

      expect(services.length, 1);
    });

    // Update the service definition for a specific service
    //
    //Future updateServiceDefinition(String serviceName, ServiceDefinition serviceDefinition) async 
    test('test updateServiceDefinition', () async {
      final oldServiceName = "old-service";
      final newServiceName = "new-service";
      ServiceDefinition oldService = ServiceDefinition();

      oldService.serviceName = oldServiceName;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        oldService.serviceName = parsed["ServiceName"];
        return Response("OK", 200);
      });

      final instance = ServicesApi(apiClient);
      ServiceDefinition updatedService = ServiceDefinition();

      updatedService.serviceName = newServiceName;
      await instance.updateServiceDefinition(oldServiceName, updatedService);

      expect(oldService.serviceName, newServiceName);
    });
  });
}
