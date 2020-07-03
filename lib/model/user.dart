part of knowgo.api;

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

  String photoUrl = null;

  String accountType = null;

  User();

  @override
  String toString() {
    return 'User[personID=$personID, fullName=$fullName, emailAddress=$emailAddress, password=$password, preferredName=$preferredName, gender=$gender, dateOfBirth=$dateOfBirth, phoneNumber=$phoneNumber, photoUrl=$photoUrl, accountType=$accountType]';
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
    if (json['PhotoUrl'] == null) {
      photoUrl = null;
    } else {
      photoUrl = json['PhotoUrl'];
    }
    if (json['AccountType'] == null) {
      accountType = null;
    } else {
      accountType = json['AccountType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (personID != null) json['PersonID'] = personID;
    if (fullName != null) json['FullName'] = fullName;
    if (emailAddress != null) json['EmailAddress'] = emailAddress;
    if (password != null) json['Password'] = password;
    if (preferredName != null) json['PreferredName'] = preferredName;
    if (gender != null) json['Gender'] = gender;
    if (dateOfBirth != null)
      json['DateOfBirth'] =
          dateOfBirth == null ? null : dateOfBirth.toUtc().toIso8601String();
    if (phoneNumber != null) json['PhoneNumber'] = phoneNumber;
    if (photoUrl != null) json['PhotoUrl'] = photoUrl;
    if (accountType != null) json['AccountType'] = accountType;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null
        ? List<User>()
        : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }
}
