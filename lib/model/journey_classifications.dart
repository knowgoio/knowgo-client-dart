part of knowgo.api;

class JourneyClassifications {
  int? driverID = null;

  int? classificationID = null;

  String? classificationName = null;
  JourneyClassifications();

  @override
  String toString() {
    return 'JourneyClassifications[driverID=$driverID, classificationID=$classificationID, classificationName=$classificationName, ]';
  }

  JourneyClassifications.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    if (json['DriverID'] == null) {
      driverID = null;
    } else {
      driverID = json['DriverID'];
    }
    if (json['ClassificationID'] == null) {
      classificationID = null;
    } else {
      classificationID = json['ClassificationID'];
    }
    if (json['ClassificationName'] == null) {
      classificationName = null;
    } else {
      classificationName = json['ClassificationName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (driverID != null) json['DriverID'] = driverID;
    if (classificationID != null) json['ClassificationID'] = classificationID;
    if (classificationName != null)
      json['ClassificationName'] = classificationName;
    return json;
  }

  static List<JourneyClassifications> listFromJson(List<dynamic> json) {
    return json.map((value) => JourneyClassifications.fromJson(value)).toList();
  }

  static Map<String, JourneyClassifications> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, JourneyClassifications>();
    json.forEach((String key, dynamic value) =>
          map[key] = JourneyClassifications.fromJson(value));
    return map;
  }
}
