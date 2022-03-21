import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:knowgo/api.dart';
import 'package:test/test.dart';

/// tests for EventsApi
void main() {
  ApiClient apiClient = defaultApiClient;

  group('tests for EventsApi', () {
    // Add a new Event
    //
    // Adds a new Event to the system. The EventID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Event record with allocated EventID are returned upon successful record creation.
    //
    //Future<Event> addEvent(Event event) async
    test('test addEvent', () async {
      var events = [];
      var event = Event();

      event.vehicleSpeed = 100;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        final newEvent = Event.fromJson(parsed);
        newEvent.eventID = 123;
        events.add(newEvent);
        return Response(json.encode(newEvent), 201);
      });

      var instance = EventsApi(apiClient);
      final result = await instance.addEvent(event);

      expect(events.isNotEmpty, true);
      expect(result?.eventID, 123);
      expect(result?.vehicleSpeed, 100);
    });

    // Delete Event by ID
    //
    // For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
    //
    //Future deleteEvent(int eventId) async
    test('test deleteEvent', () async {
      var events = [];
      var event1 = Event();
      var event2 = Event();

      event1.eventID = 1;
      event2.eventID = 2;

      events.add(event1);
      events.add(event2);

      apiClient.client = MockClient((request) async {
        final eventId = int.parse(request.url.pathSegments.last);
        events.removeWhere((e) => e.eventID == eventId);
        return Response("OK", 200);
      });

      final instance = EventsApi(apiClient);
      await instance.deleteEvent(1);

      expect(events.where((e) => e.eventID == 1).isEmpty, true);
    });

    // Find Event by ID
    //
    //Future<Event> getEventById(int eventId) async
    test('test getEventById', () async {
      apiClient.client = MockClient((request) async {
        var event = Event();
        event.eventID = 1;
        event.vehicleSpeed = 100;
        return Response(json.encode(event), 200);
      });
      final instance = EventsApi();
      final event = await instance.getEventById(1);
      expect(event?.eventID, 1);
      expect(event?.vehicleSpeed, 100);
    });

    // Updates an Event with form data
    //
    //Future updateEventWithForm(int eventId, Event event) async
    test('test updateEventWithForm', () async {
      var event = Event();
      var updatedEvent = event;

      event.eventID = 1;
      event.vehicleSpeed = 100;
      updatedEvent.vehicleSpeed = 140;

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        var updated = Event.fromJson(parsed);
        event = updated;
        return Response("OK", 200);
      });

      final instance = EventsApi(apiClient);
      await instance.updateEventWithForm(1, updatedEvent);

      expect(event.vehicleSpeed, updatedEvent.vehicleSpeed);
    });
  });
}
