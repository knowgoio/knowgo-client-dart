import 'package:knowgo/api.dart';
import 'package:test/test.dart';

/// tests for EventsApi
void main() {
  var instance = EventsApi();

  group('tests for EventsApi', () {
    // Add a new Event
    //
    // Adds a new Event to the system. The EventID as input is ignored, as it is dynamically allocated at insertion time. Auto details may be as complete or as incomplete as needed, with later updates possible via the PUT method. The complete new Event record with allocated EventID are returned upon successful record creation.
    //
    //Future<Event> addEvent(Event event) async
    test('test addEvent', () async {
      // TODO
    });

    // Delete Event by ID
    //
    // For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
    //
    //Future deleteEvent(int eventId) async
    test('test deleteEvent', () async {
      // TODO
    });

    // Find Event by ID
    //
    //Future<Event> getEventById(int eventId) async
    test('test getEventById', () async {
      // TODO
    });

    // Updates an Event with form data
    //
    //Future updateEventWithForm(int eventId, Event event) async
    test('test updateEventWithForm', () async {
      // TODO
    });
  });
}
