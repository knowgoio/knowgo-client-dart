import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:openapi/api.dart';
import 'package:test/test.dart';

/// tests for UsersApi
void main() {
  ApiClient apiClient = defaultApiClient;

  group('tests for UsersApi', () {
    // Create user
    //
    // Create a new user within the system
    //
    //Future<User> createUser(User user) async
    test('test createUser', () async {
      List<User> users = List<User>();
      User user = User();

      user.emailAddress = "labs@adaptant.io";

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        final newUser = User.fromJson(parsed);
        newUser.personID = 123;
        users.add(newUser);
        return Response(json.encode(newUser), 201);
      });

      var instance = UsersApi(apiClient);
      final result = await instance.createUser(user);

      expect(users.isNotEmpty, true);
      expect(result.personID, 123);
    });

    // Delete user
    //
    // This can only be done by the logged in user.
    //
    //Future deleteUser(int userId) async
    test('test deleteUser', () async {
      List<User> users = List<User>();
      User user1 = User();
      User user2 = User();

      user1.personID = 1;
      user2.personID = 2;

      users.add(user1);
      users.add(user2);

      apiClient.client = MockClient((request) async {
        final userId = int.parse(request.url.pathSegments.last);
        users.removeWhere((u) => u.personID == userId);
        return Response("OK", 200);
      });

      final instance = UsersApi(apiClient);
      await instance.deleteUser(1);

      expect(users.where((u) => u.personID == 1).isEmpty, true);
    });

    // Get user by user id
    //
    //Future<User> getUserById(int userId) async
    test('test getUserById', () async {
      apiClient.client = MockClient((request) async {
        User user = User();
        user.personID = 1;
        user.emailAddress = "labs@adaptant.io";
        return Response(json.encode(user), 200);
      });
      final instance = UsersApi();
      final user = await instance.getUserById(1);
      expect(user.personID, 1);
      expect(user.emailAddress, "labs@adaptant.io");
    });

    // Updated user
    //
    // This can only be done by the logged in user.
    //
    //Future updateUser(int userId, User user) async
    test('test updateUser', () async {
      User user = User();
      User updatedUser = user;

      user.personID = 1;
      user.emailAddress = "labs@adaptant.io";
      updatedUser.emailAddress = "apiteam@adaptant.io";

      apiClient.client = MockClient((request) async {
        final parsed = json.decode(request.body);
        User updated = User.fromJson(parsed);
        user = updated;
        return Response("OK", 200);
      });

      final instance = UsersApi(apiClient);
      await instance.updateUser(1, updatedUser);

      expect(user.emailAddress, updatedUser.emailAddress);
    });
  });
}
