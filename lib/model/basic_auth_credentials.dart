part of openapi.api;

class BasicAuthCredentials {
  
  String emailAddress = null;
  
  String password = null;
  BasicAuthCredentials();

  @override
  String toString() {
    return 'BasicAuthCredentials[emailAddress=$emailAddress, password=$password, ]';
  }

  BasicAuthCredentials.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'EmailAddress': emailAddress,
      'Password': password
    };
  }

  static List<BasicAuthCredentials> listFromJson(List<dynamic> json) {
    return json == null ? new List<BasicAuthCredentials>() : json.map((value) => new BasicAuthCredentials.fromJson(value)).toList();
  }

  static Map<String, BasicAuthCredentials> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BasicAuthCredentials>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BasicAuthCredentials.fromJson(value));
    }
    return map;
  }
}

