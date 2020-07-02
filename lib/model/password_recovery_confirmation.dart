part of knowgo.api;

class PasswordRecoveryConfirmation {
  String newPassword = null;

  String token = null;
  PasswordRecoveryConfirmation();

  @override
  String toString() {
    return 'PasswordRecoveryConfirmation[newPassword=$newPassword, token=$token, ]';
  }

  PasswordRecoveryConfirmation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['NewPassword'] == null) {
      newPassword = null;
    } else {
      newPassword = json['NewPassword'];
    }
    if (json['Token'] == null) {
      token = null;
    } else {
      token = json['Token'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (newPassword != null) json['NewPassword'] = newPassword;
    if (token != null) json['Token'] = token;
    return json;
  }

  static List<PasswordRecoveryConfirmation> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PasswordRecoveryConfirmation>()
        : json
            .map((value) => PasswordRecoveryConfirmation.fromJson(value))
            .toList();
  }

  static Map<String, PasswordRecoveryConfirmation> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PasswordRecoveryConfirmation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PasswordRecoveryConfirmation.fromJson(value));
    }
    return map;
  }
}
