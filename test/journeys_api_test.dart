import 'package:knowgo/api.dart';
import 'package:test/test.dart';

/// tests for JourneysApi
void main() {
  var instance = JourneysApi();

  group('tests for JourneysApi', () {
    // Add a new Journey classification for a specific Journey
    //
    //Future addClassificationToJourney(String journeyId, int classificationId) async
    test('test addClassificationToJourney', () async {
      // TODO
    });

    // Add a new Journey
    //
    // Adds a new Journey to the system. The JourneyID as input is ignored, as it is dynamically allocated at insertion time. Journey details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Journey record with allocated JourneyID are returned upon successful record creation.
    //
    //Future<Journey> addJourney(Journey journey) async
    test('test addJourney', () async {
      // TODO
    });

    // Create a Journey classification
    //
    //Future<JourneyClassifications> createJourneyClassification(JourneyClassifications journeyClassifications) async
    test('test createJourneyClassification', () async {
      // TODO
    });

    // Delete Journey by ID
    //
    // Manual deletion of a defined Journey based on its journeyId.
    //
    //Future deleteJourney(String journeyId) async
    test('test deleteJourney', () async {
      // TODO
    });

    // Delete specified Journey classification
    //
    //Future deleteJourneyClassification(int classificationId) async
    test('test deleteJourneyClassification', () async {
      // TODO
    });

    // Find journey by ID
    //
    //Future<Journey> getJourneyById(String journeyId) async
    test('test getJourneyById', () async {
      // TODO
    });

    // Get Journey classification by classification id
    //
    //Future<JourneyClassifications> getJourneyClassificationById(int classificationId) async
    test('test getJourneyClassificationById', () async {
      // TODO
    });

    // Return a list of Journey classifications available for a specific user
    //
    // Given an authenticated user, return a list of Journey classifications that are available to them.
    //
    //Future<List<JourneyClassifications>> listJourneyClassifications() async
    test('test listJourneyClassifications', () async {
      // TODO
    });

    // Return a list of Journey classifications for a specific Journey
    //
    // Given an authenticated user, return a list of Journey classificiations that are available to them within the context of a specific Journey.
    //
    //Future<List<JourneyClassifications>> listJourneyClassificationsByJourneyId(String journeyId) async
    test('test listJourneyClassificationsByJourneyId', () async {
      // TODO
    });

    // Return a list of journeys available for a specific user
    //
    // Given an authenticated user, return a list of journeys that are available to them.
    //
    //Future<List<Journey>> listJourneys() async
    test('test listJourneys', () async {
      // TODO
    });

    // Return a list of journeys available for a specific user
    //
    // Given an authenticated user, return a list of journeys that are available to them.
    //
    //Future<List<Journey>> listJourneysByUserId(int userId) async
    test('test listJourneysByUserId', () async {
      // TODO
    });

    // Remove a specific classification from a Journey
    //
    //Future removeClassificationFromJourney(String journeyId, int classificationId) async
    test('test removeClassificationFromJourney', () async {
      // TODO
    });

    // Update a specified Journey classification
    //
    //Future updateJourneyClassificationById(int classificationId, JourneyClassifications journeyClassifications) async
    test('test updateJourneyClassificationById', () async {
      // TODO
    });

    // Updates a Journey with form data
    //
    //Future updateJourneyWithForm(String journeyId, Journey journey) async
    test('test updateJourneyWithForm', () async {
      // TODO
    });
  });
}
