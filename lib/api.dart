library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/events_api.dart';
part 'api/journeys_api.dart';
part 'api/users_api.dart';
part 'api/vehicles_api.dart';

part 'model/auto.dart';
part 'model/basic_auth_credentials.dart';
part 'model/event.dart';
part 'model/journey.dart';
part 'model/journey_classifications.dart';
part 'model/password_recovery_confirmation.dart';
part 'model/user.dart';


ApiClient defaultApiClient = ApiClient();
