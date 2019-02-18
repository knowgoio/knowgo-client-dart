part of openapi.api;

class Journey {
  
  String journeyID = null;
  
  int driverID = null;
  
  int autoID = null;
  
  DateTime journeyBegin = null;
  
  DateTime journeyEnd = null;
  Journey();

  @override
  String toString() {
    return 'Journey[journeyID=$journeyID, driverID=$driverID, autoID=$autoID, journeyBegin=$journeyBegin, journeyEnd=$journeyEnd, ]';
  }

  Journey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['JourneyID'] == null) {
      journeyID = null;
    } else {
          journeyID = json['JourneyID'];
    }
    if (json['DriverID'] == null) {
      driverID = null;
    } else {
          driverID = json['DriverID'];
    }
    if (json['AutoID'] == null) {
      autoID = null;
    } else {
          autoID = json['AutoID'];
    }
    if (json['JourneyBegin'] == null) {
      journeyBegin = null;
    } else {
      journeyBegin = DateTime.parse(json['JourneyBegin']);
    }
    if (json['JourneyEnd'] == null) {
      journeyEnd = null;
    } else {
      journeyEnd = DateTime.parse(json['JourneyEnd']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'JourneyID': journeyID,
      'DriverID': driverID,
      'AutoID': autoID,
      'JourneyBegin': journeyBegin == null ? '' : journeyBegin.toUtc().toIso8601String(),
      'JourneyEnd': journeyEnd == null ? '' : journeyEnd.toUtc().toIso8601String()
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

