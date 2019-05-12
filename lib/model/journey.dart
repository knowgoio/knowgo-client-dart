part of openapi.api;

class Journey {
  
  String journeyID = null;
  
  int driverID = null;
  
  int autoID = null;
  
  String name = null;
  
  List<String> journeyType = [];
  
  DateTime journeyBegin = null;
  
  DateTime journeyEnd = null;
  
  double odometerBegin = null;
  
  double odometerEnd = null;
  
  List<Event> events = [];
  Journey();

  @override
  String toString() {
    return 'Journey[journeyID=$journeyID, driverID=$driverID, autoID=$autoID, name=$name, journeyType=$journeyType, journeyBegin=$journeyBegin, journeyEnd=$journeyEnd, odometerBegin=$odometerBegin, odometerEnd=$odometerEnd, events=$events, ]';
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
    if (json['Name'] == null) {
      name = null;
    } else {
          name = json['Name'];
    }
    if (json['JourneyType'] == null) {
      journeyType = null;
    } else {
      journeyType = (json['JourneyType'] as List).cast<String>();
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
    if (json['OdometerBegin'] == null) {
      odometerBegin = null;
    } else {
          odometerBegin = json['OdometerBegin'];
    }
    if (json['OdometerEnd'] == null) {
      odometerEnd = null;
    } else {
          odometerEnd = json['OdometerEnd'];
    }
    if (json['Events'] == null) {
      events = null;
    } else {
      events = Event.listFromJson(json['Events']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'JourneyID': journeyID,
      'DriverID': driverID,
      'AutoID': autoID,
      'Name': name,
      'JourneyType': journeyType,
      'JourneyBegin': journeyBegin == null ? '' : journeyBegin.toUtc().toIso8601String(),
      'JourneyEnd': journeyEnd == null ? '' : journeyEnd.toUtc().toIso8601String(),
      'OdometerBegin': odometerBegin,
      'OdometerEnd': odometerEnd,
      'Events': events
    };
  }

  static List<Journey> listFromJson(List<dynamic> json) {
    return json == null ? new List<Journey>() : json.map((value) => new Journey.fromJson(value)).toList();
  }

  static Map<String, Journey> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Journey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Journey.fromJson(value));
    }
    return map;
  }
}

