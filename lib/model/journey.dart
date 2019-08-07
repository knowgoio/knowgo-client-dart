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
          odometerBegin = json['OdometerBegin'].toDouble();
    }
    if (json['OdometerEnd'] == null) {
      odometerEnd = null;
    } else {
          odometerEnd = json['OdometerEnd'].toDouble();
    }
    if (json['Events'] == null) {
      events = null;
    } else {
      events = Event.listFromJson(json['Events']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (journeyID != null)
      json['JourneyID'] = journeyID;
    if (driverID != null)
      json['DriverID'] = driverID;
    if (autoID != null)
      json['AutoID'] = autoID;
    if (name != null)
      json['Name'] = name;
    if (journeyType != null)
      json['JourneyType'] = journeyType;
    if (journeyBegin != null)
      json['JourneyBegin'] = journeyBegin == null ? null : journeyBegin.toUtc().toIso8601String();
    if (journeyEnd != null)
      json['JourneyEnd'] = journeyEnd == null ? null : journeyEnd.toUtc().toIso8601String();
    if (odometerBegin != null)
      json['OdometerBegin'] = odometerBegin;
    if (odometerEnd != null)
      json['OdometerEnd'] = odometerEnd;
    if (events != null)
      json['Events'] = events;
    return json;
  }

  static List<Journey> listFromJson(List<dynamic> json) {
    return json == null ? List<Journey>() : json.map((value) => Journey.fromJson(value)).toList();
  }

  static Map<String, Journey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Journey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Journey.fromJson(value));
    }
    return map;
  }
}

