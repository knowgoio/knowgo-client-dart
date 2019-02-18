part of openapi.api;

class Journey {
  
  int journeyID = null;
  Journey();

  @override
  String toString() {
    return 'Journey[journeyID=$journeyID, ]';
  }

  Journey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['JourneyID'] == null) {
      journeyID = null;
    } else {
          journeyID = json['JourneyID'];
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'JourneyID': journeyID
    };
  }

  static List<Journey> listFromJson(List<dynamic> json) {
    return json == null ? new List<Journey>() : json.map((value) => new Journey.fromJson(value)).toList();
  }

  static Map<String, Journey> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Journey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new Journey.fromJson(value));
    }
    return map;
  }
}

