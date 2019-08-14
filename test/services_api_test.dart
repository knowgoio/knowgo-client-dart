import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ServicesApi
void main() {
  var instance = ServicesApi();

  group('tests for ServicesApi', () {
    // Register a new KnowGo platform service
    //
    //Future addService(ServiceDefinition serviceDefinition) async 
    test('test addService', () async {
      // TODO
    });

    // DELETE pass-through for service-specific endpoint
    //
    // Passes through a DELETE request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.
    //
    //Future deleteServiceEndpoint(String serviceName, String endpoint) async 
    test('test deleteServiceEndpoint', () async {
      // TODO
    });

    // Disable a service for a specific user
    //
    // Given an authenticated user, disable a specific service that the user no longer wishes to use.
    //
    //Future disableServiceByUserId(int userId, String serviceName) async 
    test('test disableServiceByUserId', () async {
      // TODO
    });

    // Enable a service for a specific user
    //
    // Given an authenticated user, enable a specific service that the user wishes to use.
    //
    //Future enableServiceByUserId(int userId, String serviceName) async 
    test('test enableServiceByUserId', () async {
      // TODO
    });

    // Lookup the service definition for a specific service
    //
    //Future<ServiceDefinition> getServiceDefinition(String serviceName) async 
    test('test getServiceDefinition', () async {
      // TODO
    });

    // GET pass-through for service-specific endpoint
    //
    // Passes through a GET request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.
    //
    //Future getServiceEndpoint(String serviceName, String endpoint) async 
    test('test getServiceEndpoint', () async {
      // TODO
    });

    // Return a list of available KnowGo platform services
    //
    //Future<List<String>> listServices() async 
    test('test listServices', () async {
      // TODO
    });

    // Return a list of services for a specific user
    //
    // Given an authenticated user, return a list of services that they have opted in to. This will include a subset of the '/services' result, and will persist regardless of the availability or lack of availability of a given service.
    //
    //Future<List<String>> listServicesByUserId(int userId) async 
    test('test listServicesByUserId', () async {
      // TODO
    });

    // POST pass-through for service-specific endpoint
    //
    // Passes through a POST request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.
    //
    //Future postServiceEndpoint(String serviceName, String endpoint) async 
    test('test postServiceEndpoint', () async {
      // TODO
    });

    // Deregister a KnowGo platform service
    //
    //Future removeServiceDefinition(String serviceName) async 
    test('test removeServiceDefinition', () async {
      // TODO
    });

    // Update the service definition for a specific service
    //
    //Future updateServiceDefinition(String serviceName, ServiceDefinition serviceDefinition) async 
    test('test updateServiceDefinition', () async {
      // TODO
    });

    // PUT pass-through for service-specific endpoint
    //
    // Passes through a PUT request to dynamically created service endpoints. A list of endpoints provided by a specific service are available through the Service Definition, returned by performing a GET on the service endpoint '/services/{serviceName}'.
    //
    //Future updateServiceEndpoint(String serviceName, String endpoint) async 
    test('test updateServiceEndpoint', () async {
      // TODO
    });

  });
}
