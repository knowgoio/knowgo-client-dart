import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:knowgo/api.dart';
import 'package:test/test.dart';

/// tests for VehiclesApi
void main() {
  ApiClient apiClient = defaultApiClient;

  group('tests for VehiclesApi', () {
    // Add a new auto
    //
    // Adds a new Auto to the system. The AutoID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Auto record with allocated AutoID are returned upon successful record creation.
    //
    //Future<Auto> addAuto(Auto auto) async
    test('test addAuto', () async {
      List<Auto> vehicles = List<Auto>();
      Auto auto = Auto(), updatedAuto;

      auto.driverID = 1;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        Auto newAuto = Auto.fromJson(parsed);
        newAuto.autoID = 123;
        vehicles.add(newAuto);
        return Response(json.encode(newAuto), 201);
      });

      final instance = VehiclesApi(apiClient);
      updatedAuto = await instance.addAuto(auto);

      expect(vehicles.isNotEmpty, true);
      expect(updatedAuto.driverID, 1);
      expect(updatedAuto.autoID, 123);
    });

    // Deletes an Auto
    //
    //Future deleteAuto(int autoId) async
    test('test deleteAuto', () async {
      List<Auto> vehicles = List<Auto>();
      Auto auto1 = Auto();
      Auto auto2 = Auto();

      auto1.autoID = 1;
      auto2.autoID = 2;

      vehicles.add(auto1);
      vehicles.add(auto2);

      apiClient.client = MockClient((request) async {
        final int autoId = int.parse(request.url.pathSegments.last);
        vehicles.removeWhere((e) => e.autoID == autoId);
        return Response("OK", 200);
      });

      final instance = VehiclesApi(apiClient);
      await instance.deleteAuto(2);

      expect(vehicles.length, 1);
      expect(vehicles.elementAt(0).autoID, 1);
    });

    // Find auto by ID
    //
    // Returns a single auto
    //
    //Future<Auto> getAutoById(int autoId) async
    test('test getAutoById', () async {
      List<Auto> vehicles = List<Auto>();
      Auto auto1 = Auto();
      Auto auto2 = Auto();

      auto1.autoID = 1;
      auto2.autoID = 2;

      vehicles.add(auto1);
      vehicles.add(auto2);

      apiClient.client = MockClient((request) async {
        final int autoId = int.parse(request.url.pathSegments.last);
        final auto = vehicles.singleWhere((e) => e.autoID == autoId);
        return Response(json.encode(auto), 200);
      });

      final instance = VehiclesApi(apiClient);
      final auto = await instance.getAutoById(2);

      expect(auto.autoID, 2);
    });

    // Return a list of vehicles available for a specific user
    //
    // Given an authenticated user, return a list of vehicles that are available to them.
    //
    //Future<List<Auto>> listVehicles() async
    test('test listVehicles', () async {
      apiClient.client = MockClient((request) async {
        List<Auto> vehicles = List<Auto>();
        Auto auto1 = Auto();
        Auto auto2 = Auto();

        auto1.autoID = 1;
        auto2.autoID = 2;

        vehicles.add(auto1);
        vehicles.add(auto2);

        return Response(json.encode(vehicles), 200);
      });
      final instance = VehiclesApi(apiClient);
      final vehicles = await instance.listVehicles();

      expect(vehicles.length, 2);
      expect(vehicles.elementAt(0).autoID, 1);
      expect(vehicles.elementAt(1).autoID, 2);
    });

    // Return a list of vehicles available for a specific user
    //
    // Given an authenticated user, return a list of vehicles that are available to them.
    //
    //Future<List<Auto>> listVehiclesByUserId(int userId) async
    test('test listVehiclesByUserId', () async {
      List<Auto> vehicles = List<Auto>();
      Auto auto1 = Auto();
      Auto auto2 = Auto();
      Auto auto3 = Auto();

      auto1.autoID = 1;
      auto1.driverID = 123;
      auto2.autoID = 2;
      auto2.driverID = 456;
      auto3.autoID = 3;
      auto3.driverID = 123;

      vehicles.add(auto1);
      vehicles.add(auto2);
      vehicles.add(auto3);

      apiClient.client = MockClient((request) async {
        final userId = int.parse(request.url.pathSegments.elementAt(2));
        List<Auto> userAutos =
            vehicles.where((e) => e.driverID == userId).toList();
        return Response(json.encode(userAutos), 200);
      });

      final instance = VehiclesApi(apiClient);
      final userVehicles = await instance.listVehiclesByUserId(123);

      expect(userVehicles.length, 2);

      userVehicles.forEach((f) {
        expect(f.driverID, 123);
      });
    });

    // Update an existing auto
    //
    //Future updateAuto(Auto auto) async
    test('test updateAuto', () async {
      Auto auto = Auto();
      Auto updatedAuto = auto;

      auto.driverID = 1;
      updatedAuto.driverID = 2;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        Auto updated = Auto.fromJson(parsed);
        auto = updated;
        return Response("OK", 200);
      });

      final instance = VehiclesApi(apiClient);
      await instance.updateAuto(updatedAuto);

      expect(auto.driverID, updatedAuto.driverID);
    });

    // Updates an auto with form data
    //
    //Future updateAutoWithForm(int autoId, Auto auto) async
    test('test updateAutoWithForm', () async {
      Auto auto = Auto();
      Auto updatedAuto = auto;

      auto.autoID = 1;
      auto.driverID = 1;
      updatedAuto.driverID = 2;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        Auto updated = Auto.fromJson(parsed);
        auto = updated;
        return Response("OK", 200);
      });

      final instance = VehiclesApi(apiClient);
      await instance.updateAutoWithForm(1, updatedAuto);

      expect(auto.driverID, updatedAuto.driverID);
    });
  });
}
