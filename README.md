# openapi
The KnowGo REST API allows you to access, manage, control, and learn from your vehicle data. APIs for Pay-As-you-Drive (PAYD) driving risk assessment based on geolocational and odometer data are provided, as well as for the more complex Pay-How-You-Drive (PHYD) case involving additional vehicle instrumentation data. This work has received funding from the European Union’s Horizon 2020 research and innovation programme under grant agreements No. 731678 and No. 825480.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://www.adaptant.io](https://www.adaptant.io)

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: openapi
version: 1.0.0
description: OpenAPI API client
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';

// TODO Configure API key authorization: app_id
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('app_id').apiKeyPrefix = 'Bearer';

var api_instance = new EventsApi();
var event = new Event(); // Event | Event object to operate on

try {
    var result = api_instance.addEvent(event);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->addEvent: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.adaptant.io/payd/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EventsApi* | [**addEvent**](docs//EventsApi.md#addevent) | **POST** /events | Add a new Event
*EventsApi* | [**deleteEvent**](docs//EventsApi.md#deleteevent) | **DELETE** /events/{eventId} | Delete Event by ID
*EventsApi* | [**getEventById**](docs//EventsApi.md#geteventbyid) | **GET** /events/{eventId} | Find Event by ID
*EventsApi* | [**updateEventWithForm**](docs//EventsApi.md#updateeventwithform) | **POST** /events/{eventId} | Updates an Event with form data
*JourneysApi* | [**addJourney**](docs//JourneysApi.md#addjourney) | **POST** /journeys | Add a new Journey
*JourneysApi* | [**deleteJourney**](docs//JourneysApi.md#deletejourney) | **DELETE** /journey/{journeyId} | Delete Journey by ID
*JourneysApi* | [**getJourneyById**](docs//JourneysApi.md#getjourneybyid) | **GET** /journey/{journeyId} | Find journey by ID
*JourneysApi* | [**updateJourneyWithForm**](docs//JourneysApi.md#updatejourneywithform) | **POST** /journey/{journeyId} | Updates a Journey with form data
*UsersApi* | [**createUser**](docs//UsersApi.md#createuser) | **POST** /users | Create user
*UsersApi* | [**deleteUser**](docs//UsersApi.md#deleteuser) | **DELETE** /users/{userId} | Delete user
*UsersApi* | [**exportUser**](docs//UsersApi.md#exportuser) | **GET** /users/{userId}/export | Exports all data about current user in CSV format
*UsersApi* | [**getUserById**](docs//UsersApi.md#getuserbyid) | **GET** /users/{userId} | Get user by user id
*UsersApi* | [**loginUser**](docs//UsersApi.md#loginuser) | **GET** /users/login | Logs user into the system
*UsersApi* | [**logoutUser**](docs//UsersApi.md#logoutuser) | **GET** /users/logout | Logs out current logged in user session
*UsersApi* | [**updateUser**](docs//UsersApi.md#updateuser) | **PUT** /users/{userId} | Updated user
*VehiclesApi* | [**addAuto**](docs//VehiclesApi.md#addauto) | **POST** /autos | Add a new auto
*VehiclesApi* | [**deleteAuto**](docs//VehiclesApi.md#deleteauto) | **DELETE** /autos/{autoId} | Deletes an Auto
*VehiclesApi* | [**getAutoById**](docs//VehiclesApi.md#getautobyid) | **GET** /autos/{autoId} | Find auto by ID
*VehiclesApi* | [**listVehicles**](docs//VehiclesApi.md#listvehicles) | **GET** /vehicles | Return a list of vehicles available for a specific user
*VehiclesApi* | [**listVehiclesByUserId**](docs//VehiclesApi.md#listvehiclesbyuserid) | **GET** /users/{userId}/vehicles | Return a list of vehicles available for a specific user
*VehiclesApi* | [**updateAuto**](docs//VehiclesApi.md#updateauto) | **PUT** /autos | Update an existing auto
*VehiclesApi* | [**updateAutoWithForm**](docs//VehiclesApi.md#updateautowithform) | **POST** /autos/{autoId} | Updates an auto with form data


## Documentation For Models

 - [Auto](docs//Auto.md)
 - [Event](docs//Event.md)
 - [Journey](docs//Journey.md)
 - [User](docs//User.md)


## Documentation For Authorization


## app_id

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


## Author

labs@adaptant.io


