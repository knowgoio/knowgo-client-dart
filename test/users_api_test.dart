import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  var instance = UsersApi();

  group('tests for UsersApi', () {
    // Confirm the change in user password via the recovery mechanism
    //
    //Future confirmUserPasswordChangeByRecovery(PasswordRecoveryConfirmation passwordRecoveryConfirmation) async 
    test('test confirmUserPasswordChangeByRecovery', () async {
      // TODO
    });

    // Create user
    //
    // Create a new user within the system
    //
    //Future<User> createUser(User user) async 
    test('test createUser', () async {
      // TODO
    });

    // Delete user
    //
    // This can only be done by the logged in user.
    //
    //Future deleteUser(int userId) async 
    test('test deleteUser', () async {
      // TODO
    });

    // Exports all data about current user in CSV format
    //
    // This endpoint allows a logged in user to export all of the data pertaining to their userId from across the system in a simple CSV format, facilitating their right to data and service portability. This includes not only the personal information about the individual, but also all vehicles they are (or have been) associated with, journeys taken, and all events recorded.
    //
    //Future exportUser(int userId) async 
    test('test exportUser', () async {
      // TODO
    });

    // Get user by user id
    //
    //Future<User> getUserById(int userId) async 
    test('test getUserById', () async {
      // TODO
    });

    // Logs user into the system and returns an authentication token.
    //
    //Future<String> loginUser({ String username, String password, BasicAuthCredentials basicAuthCredentials }) async 
    test('test loginUser', () async {
      // TODO
    });

    // Logs out current logged in user session
    //
    //Future logoutUser() async 
    test('test logoutUser', () async {
      // TODO
    });

    // Initiaties a password recovery operation for the designated user.
    //
    //Future recoverUserPassword(String email, String body) async 
    test('test recoverUserPassword', () async {
      // TODO
    });

    // Refreshes the session token for a logged-in user
    //
    //Future refreshToken() async 
    test('test refreshToken', () async {
      // TODO
    });

    // Updated user
    //
    // This can only be done by the logged in user.
    //
    //Future updateUser(int userId, User user) async 
    test('test updateUser', () async {
      // TODO
    });

  });
}
