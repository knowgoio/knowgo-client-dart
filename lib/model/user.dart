part of openapi.api;

class User {
  
  int personID = null;
  
  String fullName = null;
  
  String emailAddress = null;
  
  String password = null;
  
  String preferredName = null;
  
  String gender = null;
  //enum genderEnum {  Male,  Female,  Other,  Undisclosed,  };{
  
  DateTime dateOfBirth = null;
  
  String phoneNumber = null;
  User();

  @override
  String toString() {
    return 'User[personID=$personID, fullName=$fullName, emailAddress=$emailAddress, password=$password, preferredName=$preferredName, gender=$gender, dateOfBirth=$dateOfBirth, phoneNumber=$phoneNumber, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['PersonID'] == null) {
      personID = null;
    } else {
          personID = json['PersonID'];
    }
    if (json['FullName'] == null) {
      fullName = null;
    } else {
          fullName = json['FullName'];
    }
    if (json['EmailAddress'] == null) {
      emailAddress = null;
    } else {
          emailAddress = json['EmailAddress'];
    }
    if (json['Password'] == null) {
      password = null;
    } else {
          password = json['Password'];
    }
    if (json['PreferredName'] == null) {
      preferredName = null;
    } else {
          preferredName = json['PreferredName'];
    }
    if (json['Gender'] == null) {
      gender = null;
    } else {
          gender = json['Gender'];
    }
    if (json['DateOfBirth'] == null) {
      dateOfBirth = null;
    } else {
      dateOfBirth = DateTime.parse(json['DateOfBirth']);
    }
    if (json['PhoneNumber'] == null) {
      phoneNumber = null;
    } else {
          phoneNumber = json['PhoneNumber'];
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'PersonID': personID,
      'FullName': fullName,
      'EmailAddress': emailAddress,
      'Password': password,
      'PreferredName': preferredName,
      'Gender': gender,
      'DateOfBirth': dateOfBirth == null ? '' : dateOfBirth.toUtc().toIso8601String(),
      'PhoneNumber': phoneNumber
    };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}

