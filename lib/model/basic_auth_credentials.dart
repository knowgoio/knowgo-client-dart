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
    Map <String, dynamic> json = {};
    if (emailAddress != null)
      json['EmailAddress'] = emailAddress;
    if (password != null)
      json['Password'] = password;
    return json;
  }

  static List<BasicAuthCredentials> listFromJson(List<dynamic> json) {
    return json == null ? List<BasicAuthCredentials>() : json.map((value) => BasicAuthCredentials.fromJson(value)).toList();
  }

  static Map<String, BasicAuthCredentials> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BasicAuthCredentials>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BasicAuthCredentials.fromJson(value));
    }
    return map;
  }
}

