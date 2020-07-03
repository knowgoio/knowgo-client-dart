part of knowgo.api;

class AuthCredentials {
  
  String emailAddress = null;
  
  String password = null;

  String accountType = null;

  String authToken = null;

  AuthCredentials();

  @override
  String toString() {
    return 'AuthCredentials[emailAddress=$emailAddress, password=$password, accountType=$accountType, authToken=$authToken]';
  }

  AuthCredentials.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['AccountType'] == null) {
      accountType = null;
    } else {
      accountType = json['AccountType'];
    }
    if (json['AuthToken'] == null) {
      authToken = null;
    } else {
      authToken = json['AuthToken'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailAddress != null) {
      json['EmailAddress'] = emailAddress;
    }
    if (password != null) {
      json['Password'] = password;
    }
    if (accountType != null) {
      json['AccountType'] = accountType;
    }
    if (authToken != null) {
      json['AuthToken'] = authToken;
    }
    return json;
  }

  static List<AuthCredentials> listFromJson(List<dynamic> json) {
    return json == null ? List<AuthCredentials>() : json.map((value) => AuthCredentials.fromJson(value)).toList();
  }

  static Map<String, AuthCredentials> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuthCredentials>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuthCredentials.fromJson(value));
    }
    return map;
  }
}

