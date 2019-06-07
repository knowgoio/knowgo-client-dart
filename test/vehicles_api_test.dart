import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for VehiclesApi
void main() {
  var instance = new VehiclesApi();

  group('tests for VehiclesApi', () {
    // Add a new auto
    //
    // Adds a new Auto to the system. The AutoID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Auto record with allocated AutoID are returned upon successful record creation.
    //
    //Future<Auto> addAuto(Auto auto) async 
    test('test addAuto', () async {
      // TODO
    });

    // Deletes an Auto
    //
    //Future deleteAuto(int autoId) async 
    test('test deleteAuto', () async {
      // TODO
    });

    // Find auto by ID
    //
    // Returns a single auto
    //
    //Future<Auto> getAutoById(int autoId) async 
    test('test getAutoById', () async {
      // TODO
    });

    // Return a list of vehicles available for a specific user
    //
    // Given an authenticated user, return a list of vehicles that are available to them.
    //
    //Future<List<Auto>> listVehicles() async 
    test('test listVehicles', () async {
      // TODO
    });

    // Return a list of vehicles available for a specific user
    //
    // Given an authenticated user, return a list of vehicles that are available to them.
    //
    //Future<List<Auto>> listVehiclesByUserId(int userId) async 
    test('test listVehiclesByUserId', () async {
      // TODO
    });

    // Update an existing auto
    //
    //Future updateAuto(Auto auto) async 
    test('test updateAuto', () async {
      // TODO
    });

    // Updates an auto with form data
    //
    //Future updateAutoWithForm(int autoId, Auto auto) async 
    test('test updateAutoWithForm', () async {
      // TODO
    });

  });
}
