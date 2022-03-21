import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:knowgo/api.dart';
import 'package:test/test.dart';

/// tests for JourneysApi
void main() {
  ApiClient apiClient = defaultApiClient;

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
      var journeys = [];
      var journey = Journey();

      journey.autoID = 1;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        final newJourney = Journey.fromJson(parsed);
        newJourney.driverID = 1;
        journeys.add(newJourney);
        return Response(json.encode(newJourney), 201);
      });

      var instance = JourneysApi(apiClient);
      final result = await instance.addJourney(journey);

      expect(journeys.isNotEmpty, true);
      expect(result?.autoID, 1);
      expect(result?.driverID, 1);
    });

    // Create a Journey classification
    //
    //Future<JourneyClassifications> createJourneyClassification(JourneyClassifications journeyClassifications) async
    test('test createJourneyClassification', () async {
      var classifications = [];
      var classification = JourneyClassifications();

      classification.classificationName = "work";
      classification.driverID = 1;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        final newClassification = JourneyClassifications.fromJson(parsed);
        newClassification.classificationID = 1;
        classifications.add(newClassification);
        return Response(json.encode(newClassification), 201);
      });

      var instance = JourneysApi(apiClient);
      final result = await instance.createJourneyClassification(classification);

      expect(classifications.isNotEmpty, true);
      expect(result?.classificationID, 1);
      expect(result?.classificationName, "work");
      expect(result?.driverID, 1);
    });

    // Delete Journey by ID
    //
    // Manual deletion of a defined Journey based on its journeyId.
    //
    //Future deleteJourney(String journeyId) async
    test('test deleteJourney', () async {
      var journeys = [];
      var journey1 = Journey();
      var journey2 = Journey();

      journey1.journeyID = "1";
      journey2.journeyID = "2";

      journeys.add(journey1);
      journeys.add(journey2);

      apiClient.client = MockClient((request) async {
        final journeyId = request.url.pathSegments.last;
        journeys.removeWhere((j) => j.journeyID == journeyId);
        return Response("OK", 200);
      });

      final instance = JourneysApi(apiClient);
      await instance.deleteJourney("1");

      expect(journeys.where((j) => j.journeyID == "1").isEmpty, true);
      expect(journeys.where((j) => j.journeyID == "2").isEmpty, false);
    });

    // Delete specified Journey classification
    //
    //Future deleteJourneyClassification(int classificationId) async
    test('test deleteJourneyClassification', () async {
      var classifications = [];
      var classification1 = JourneyClassifications();
      var classification2 = JourneyClassifications();

      classification1.classificationID = 1;
      classification1.classificationName = "work";
      classification2.classificationID = 2;
      classification2.classificationName = "private";

      classifications..add(classification1)..add(classification2);

      apiClient.client = MockClient((request) async {
        final classificationId = int.parse(request.url.pathSegments.last);
        classifications
            .removeWhere((j) => j.classificationID == classificationId);
        return Response("OK", 200);
      });

      final instance = JourneysApi(apiClient);
      await instance.deleteJourneyClassification(1);

      expect(
          classifications.where((j) => j.classificationID == 1).isEmpty, true);
      expect(
          classifications.where((j) => j.classificationID == 2).isEmpty, false);
    });

    // Find journey by ID
    //
    //Future<Journey> getJourneyById(String journeyId) async
    test('test getJourneyById', () async {
      apiClient.client = MockClient((request) async {
        var journey = Journey();
        journey.journeyID = "1";
        journey.driverID = 1;
        journey.autoID = 123;
        return Response(json.encode(journey), 200);
      });
      final instance = JourneysApi();
      final journey = await instance.getJourneyById("1");
      expect(journey?.journeyID, "1");
      expect(journey?.driverID, 1);
      expect(journey?.autoID, 123);
    });

    // Get Journey classification by classification id
    //
    //Future<JourneyClassifications> getJourneyClassificationById(int classificationId) async
    test('test getJourneyClassificationById', () async {
      var classifications = [];
      var classification1 = JourneyClassifications();
      var classification2 = JourneyClassifications();

      classification1.classificationID = 1;
      classification1.classificationName = "work";
      classification2.classificationID = 2;
      classification2.classificationName = "private";

      classifications..add(classification1)..add(classification2);

      apiClient.client = MockClient((request) async {
        final classificationId = int.parse(request.url.pathSegments.last);
        final classification = classifications
            .singleWhere((j) => j.classificationID == classificationId);
        return Response(json.encode(classification), 200);
      });

      final instance = JourneysApi(apiClient);
      final result = await instance.getJourneyClassificationById(1);

      expect(result?.classificationID, 1);
      expect(result?.classificationName, "work");
    });

    // Return a list of Journey classifications available for a specific user
    //
    // Given an authenticated user, return a list of Journey classifications that are available to them.
    //
    //Future<List<JourneyClassifications>> listJourneyClassifications() async
    test('test listJourneyClassifications', () async {
      apiClient.client = MockClient((request) async {
        var classifications = [];
        var classification1 = JourneyClassifications();
        var classification2 = JourneyClassifications();

        classification1.classificationID = 1;
        classification1.classificationName = "work";

        classification2.classificationID = 2;
        classification2.classificationName = "private";

        classifications.add(classification1);
        classifications.add(classification2);

        return Response(json.encode(classifications), 200);
      });
      final instance = JourneysApi(apiClient);
      final classifications = await instance.listJourneyClassifications();

      expect(classifications.length, 2);
      expect(classifications.first.classificationID, 1);
      expect(classifications.last.classificationName, "private");
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
      apiClient.client = MockClient((request) async {
        var journeys = [];
        var journey1 = Journey();
        var journey2 = Journey();

        journey1.journeyID = "1";
        journey2.journeyID = "2";

        journeys.add(journey1);
        journeys.add(journey2);

        return Response(json.encode(journeys), 200);
      });
      final instance = JourneysApi(apiClient);
      final journeys = await instance.listJourneys();

      expect(journeys.length, 2);
      expect(journeys.elementAt(0).journeyID, "1");
      expect(journeys.elementAt(1).journeyID, "2");
    });

    // Return a list of journeys available for a specific user
    //
    // Given an authenticated user, return a list of journeys that are available to them.
    //
    //Future<List<Journey>> listJourneysByUserId(int userId) async
    test('test listJourneysByUserId', () async {
      apiClient.client = MockClient((request) async {
        var userId = int.parse(request.url.pathSegments.elementAt(2));
        var journeys = [];
        var journey1 = Journey();
        var journey2 = Journey();
        var journey3 = Journey();

        journey1.journeyID = "1";
        journey1.driverID = 1;

        journey2.journeyID = "2";
        journey2.driverID = 2;

        journey3.journeyID = "3";
        journey3.driverID = 2;

        journeys.add(journey1);
        journeys.add(journey2);
        journeys.add(journey3);

        // Extract a sublist of journeys that match the supplied userId
        final userJourneys =
            journeys.where((j) => j.driverID == userId).toList();

        return Response(json.encode(userJourneys), 200);
      });
      final instance = JourneysApi(apiClient);
      final journeys = await instance.listJourneysByUserId(2);

      expect(journeys.length, 2);
      expect(journeys.elementAt(0).journeyID, "2");
      expect(journeys.elementAt(0).driverID, 2);
      expect(journeys.elementAt(1).journeyID, "3");
      expect(journeys.elementAt(1).driverID, 2);
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
      var classification = JourneyClassifications();
      var updatedClassification = classification;

      classification.classificationID = 1;
      classification.classificationName = "work";
      updatedClassification.classificationName = "private";

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        var updated = JourneyClassifications.fromJson(parsed);
        classification = updated;
        return Response("OK", 200);
      });

      final instance = JourneysApi(apiClient);
      await instance.updateJourneyClassificationById(1, updatedClassification);

      expect(classification.classificationName,
          updatedClassification.classificationName);
    });

    // Updates a Journey with form data
    //
    //Future updateJourneyWithForm(String journeyId, Journey journey) async
    test('test updateJourneyWithForm', () async {
      var journey = Journey();
      var updatedJourney = journey;

      journey.journeyID = "1";
      journey.driverID = 1;
      journey.autoID = 123;
      updatedJourney.driverID = 2;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        var updated = Journey.fromJson(parsed);
        journey = updated;
        return Response("OK", 200);
      });

      final instance = JourneysApi(apiClient);
      await instance.updateJourneyWithForm("1", updatedJourney);

      expect(journey.driverID, 2);
      expect(journey.autoID, 123);
    });
  });
}
