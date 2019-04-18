part of openapi.api;

class User {
  
  int personID = null;
  
  String fullName = null;
  
  String preferredName = null;
  
  String gender = null;
  //enum genderEnum {  Male,  Female,  Other,  Undisclosed,  };{
  
  String phoneNumber = null;
  
  String emailAddress = null;
  User();

  @override
  String toString() {
    return 'User[personID=$personID, fullName=$fullName, preferredName=$preferredName, gender=$gender, phoneNumber=$phoneNumber, emailAddress=$emailAddress, ]';
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
    if (json['PhoneNumber'] == null) {
      phoneNumber = null;
    } else {
          phoneNumber = json['PhoneNumber'];
    }
    if (json['EmailAddress'] == null) {
      emailAddress = null;
    } else {
          emailAddress = json['EmailAddress'];
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'PersonID': personID,
      'FullName': fullName,
      'PreferredName': preferredName,
      'Gender': gender,
      'PhoneNumber': phoneNumber,
      'EmailAddress': emailAddress
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

