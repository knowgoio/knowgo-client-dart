part of openapi.api;

class Event {
  
  int eventID = null;
  
  int journeyID = null;
  
  int autoID = null;
  
  int eventCategoryID = null;
  
  double steeringWheelAngle = null;
  
  double torqueAtTransmission = null;
  
  double engineSpeed = null;
  
  double vehicleSpeed = null;
  
  double acceleratorPedalPosition = null;
  
  String parkingBrakeStatus = null;
  //enum parkingBrakeStatusEnum {  true,  false,  };{
  
  String brakePedalStatus = null;
  //enum brakePedalStatusEnum {  true,  false,  };{
  
  String transmissionGearPosition = null;
  //enum transmissionGearPositionEnum {  first,  second,  third,  fourth,  fifth,  sixth,  seventh,  eighth,  ninth,  tenth,  reverse,  neutral,  };{
  
  String gearLeverPosition = null;
  //enum gearLeverPositionEnum {  drive,  sport,  low,  first,  second,  third,  fourth,  fifth,  sixth,  seventh,  eighth,  ninth,  tenth,  reverse,  neutral,  };{
  
  double odometer = null;
  
  String ignitionStatus = null;
  //enum ignitionStatusEnum {  off,  accessory,  run,  start,  };{
  /* percentage fuel remaining level */
  double fuelLevel = null;
  /* fuel consumed in litres (this goes to 0 every time the vehicle restarts, like a trip meter) */
  double fuelConsumedSinceRestart = null;
  
  String doorStatus = null;
  //enum doorStatusEnum {  driver,  passenger,  rear_left,  rear_right,  };{
  
  String headlampStatus = null;
  //enum headlampStatusEnum {  true,  false,  };{
  
  String highBeamStatus = null;
  //enum highBeamStatusEnum {  true,  false,  };{
  
  String windshieldWiperStatus = null;
  //enum windshieldWiperStatusEnum {  true,  false,  };{
  
  double latitude = null;
  
  double longitude = null;
  
  DateTime timestamp = null;
  Event();

  @override
  String toString() {
    return 'Event[eventID=$eventID, journeyID=$journeyID, autoID=$autoID, eventCategoryID=$eventCategoryID, steeringWheelAngle=$steeringWheelAngle, torqueAtTransmission=$torqueAtTransmission, engineSpeed=$engineSpeed, vehicleSpeed=$vehicleSpeed, acceleratorPedalPosition=$acceleratorPedalPosition, parkingBrakeStatus=$parkingBrakeStatus, brakePedalStatus=$brakePedalStatus, transmissionGearPosition=$transmissionGearPosition, gearLeverPosition=$gearLeverPosition, odometer=$odometer, ignitionStatus=$ignitionStatus, fuelLevel=$fuelLevel, fuelConsumedSinceRestart=$fuelConsumedSinceRestart, doorStatus=$doorStatus, headlampStatus=$headlampStatus, highBeamStatus=$highBeamStatus, windshieldWiperStatus=$windshieldWiperStatus, latitude=$latitude, longitude=$longitude, timestamp=$timestamp, ]';
  }

  Event.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['EventID'] == null) {
      eventID = null;
    } else {
          eventID = json['EventID'];
    }
    if (json['JourneyID'] == null) {
      journeyID = null;
    } else {
          journeyID = json['JourneyID'];
    }
    if (json['AutoID'] == null) {
      autoID = null;
    } else {
          autoID = json['AutoID'];
    }
    if (json['EventCategoryID'] == null) {
      eventCategoryID = null;
    } else {
          eventCategoryID = json['EventCategoryID'];
    }
    if (json['steering_wheel_angle'] == null) {
      steeringWheelAngle = null;
    } else {
          steeringWheelAngle = json['steering_wheel_angle'];
    }
    if (json['torque_at_transmission'] == null) {
      torqueAtTransmission = null;
    } else {
          torqueAtTransmission = json['torque_at_transmission'];
    }
    if (json['engine_speed'] == null) {
      engineSpeed = null;
    } else {
          engineSpeed = json['engine_speed'];
    }
    if (json['vehicle_speed'] == null) {
      vehicleSpeed = null;
    } else {
          vehicleSpeed = json['vehicle_speed'];
    }
    if (json['accelerator_pedal_position'] == null) {
      acceleratorPedalPosition = null;
    } else {
          acceleratorPedalPosition = json['accelerator_pedal_position'];
    }
    if (json['parking_brake_status'] == null) {
      parkingBrakeStatus = null;
    } else {
          parkingBrakeStatus = json['parking_brake_status'];
    }
    if (json['brake_pedal_status'] == null) {
      brakePedalStatus = null;
    } else {
          brakePedalStatus = json['brake_pedal_status'];
    }
    if (json['transmission_gear_position'] == null) {
      transmissionGearPosition = null;
    } else {
          transmissionGearPosition = json['transmission_gear_position'];
    }
    if (json['gear_lever_position'] == null) {
      gearLeverPosition = null;
    } else {
          gearLeverPosition = json['gear_lever_position'];
    }
    if (json['odometer'] == null) {
      odometer = null;
    } else {
          odometer = json['odometer'];
    }
    if (json['ignition_status'] == null) {
      ignitionStatus = null;
    } else {
          ignitionStatus = json['ignition_status'];
    }
    if (json['fuel_level'] == null) {
      fuelLevel = null;
    } else {
          fuelLevel = json['fuel_level'];
    }
    if (json['fuel_consumed_since_restart'] == null) {
      fuelConsumedSinceRestart = null;
    } else {
          fuelConsumedSinceRestart = json['fuel_consumed_since_restart'];
    }
    if (json['door_status'] == null) {
      doorStatus = null;
    } else {
          doorStatus = json['door_status'];
    }
    if (json['headlamp_status'] == null) {
      headlampStatus = null;
    } else {
          headlampStatus = json['headlamp_status'];
    }
    if (json['high_beam_status'] == null) {
      highBeamStatus = null;
    } else {
          highBeamStatus = json['high_beam_status'];
    }
    if (json['windshield_wiper_status'] == null) {
      windshieldWiperStatus = null;
    } else {
          windshieldWiperStatus = json['windshield_wiper_status'];
    }
    if (json['latitude'] == null) {
      latitude = null;
    } else {
          latitude = json['latitude'];
    }
    if (json['longitude'] == null) {
      longitude = null;
    } else {
          longitude = json['longitude'];
    }
    if (json['timestamp'] == null) {
      timestamp = null;
    } else {
      timestamp = DateTime.parse(json['timestamp']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'EventID': eventID,
      'JourneyID': journeyID,
      'AutoID': autoID,
      'EventCategoryID': eventCategoryID,
      'steering_wheel_angle': steeringWheelAngle,
      'torque_at_transmission': torqueAtTransmission,
      'engine_speed': engineSpeed,
      'vehicle_speed': vehicleSpeed,
      'accelerator_pedal_position': acceleratorPedalPosition,
      'parking_brake_status': parkingBrakeStatus,
      'brake_pedal_status': brakePedalStatus,
      'transmission_gear_position': transmissionGearPosition,
      'gear_lever_position': gearLeverPosition,
      'odometer': odometer,
      'ignition_status': ignitionStatus,
      'fuel_level': fuelLevel,
      'fuel_consumed_since_restart': fuelConsumedSinceRestart,
      'door_status': doorStatus,
      'headlamp_status': headlampStatus,
      'high_beam_status': highBeamStatus,
      'windshield_wiper_status': windshieldWiperStatus,
      'latitude': latitude,
      'longitude': longitude,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String()
    };
  }

  static List<Event> listFromJson(List<dynamic> json) {
    return json == null ? new List<Event>() : json.map((value) => new Event.fromJson(value)).toList();
  }

  static Map<String, Event> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Event>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new Event.fromJson(value));
    }
    return map;
  }
}

