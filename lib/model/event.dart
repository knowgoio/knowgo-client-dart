part of knowgo.api;

class Event {
  int eventID = null;

  String journeyID = null;

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

  double bearing = null;

  double accuracy = null;

  DateTime timestamp = null;

  double accelX = null;

  double accelY = null;

  double accelZ = null;

  double gyroX = null;

  double gyroY = null;

  double gyroZ = null;
  Event();

  @override
  String toString() {
    var eventStr = 'Event[';

    if (eventID != null) {
      eventStr += 'eventID=$eventID, ';
    }
    if (journeyID != null) {
      eventStr += 'journeyID=$journeyID, ';
    }
    if (autoID != null) {
      eventStr += 'autoID=$autoID, ';
    }
    if (eventCategoryID != null) {
      eventStr += 'eventCategoryID=$eventCategoryID, ';
    }
    if (steeringWheelAngle != null) {
      eventStr += 'steeringWheelAngle=$steeringWheelAngle, ';
    }
    if (torqueAtTransmission != null) {
      eventStr += 'torqueAtTransmission=$torqueAtTransmission, ';
    }
    if (engineSpeed != null) {
      eventStr += 'engineSpeed=$engineSpeed, ';
    }
    if (vehicleSpeed != null) {
      eventStr += 'vehicleSpeed=$vehicleSpeed, ';
    }
    if (acceleratorPedalPosition != null) {
      eventStr += 'acceleratorPedalPosition=$acceleratorPedalPosition, ';
    }
    if (parkingBrakeStatus != null) {
      eventStr += 'parkingBrakeStatus=$parkingBrakeStatus, ';
    }
    if (brakePedalStatus != null) {
      eventStr += 'brakePedalStatus=$brakePedalStatus, ';
    }
    if (transmissionGearPosition != null) {
      eventStr += 'transmissionGearPosition=$transmissionGearPosition, ';
    }
    if (gearLeverPosition != null) {
      eventStr += 'gearLeverPosition=$gearLeverPosition, ';
    }
    if (odometer != null) {
      eventStr += 'odometer=$odometer, ';
    }
    if (ignitionStatus != null) {
      eventStr += 'ignitionStatus=$ignitionStatus, ';
    }
    if (fuelLevel != null) {
      eventStr += 'fuelLevel=$fuelLevel, ';
    }
    if (fuelConsumedSinceRestart != null) {
      eventStr += 'fuelConsumedSinceRestart=$fuelConsumedSinceRestart, ';
    }
    if (doorStatus != null) {
      eventStr += 'doorStatus=$doorStatus, ';
    }
    if (headlampStatus != null) {
      eventStr += 'headlampStatus=$headlampStatus, ';
    }
    if (highBeamStatus != null) {
      eventStr += 'highBeamStatus=$highBeamStatus, ';
    }
    if (windshieldWiperStatus != null) {
      eventStr += 'windshieldWiperStatus=$windshieldWiperStatus, ';
    }
    if (latitude != null) {
      eventStr += 'latitude=$latitude, ';
    }
    if (longitude != null) {
      eventStr += 'longitude=$longitude, ';
    }
    if (bearing != null) {
      eventStr += 'bearing=$bearing, ';
    }
    if (accuracy != null) {
      eventStr += 'accuracy=$accuracy, ';
    }
    if (timestamp != null) {
      eventStr += 'timestamp=$timestamp, ';
    }
    if (accelX != null) {
      eventStr += 'accelX=$accelX, ';
    }
    if (accelY != null) {
      eventStr += 'accelY=$accelY, ';
    }
    if (accelZ != null) {
      eventStr += 'accelZ=$accelZ, ';
    }
    if (gyroX != null) {
      eventStr += 'gyroX=$gyroX, ';
    }
    if (gyroY != null) {
      eventStr += 'gyroY=$gyroY, ';
    }
    if (gyroZ != null) {
      eventStr += 'gyroZ=$gyroZ, ';
    }

    eventStr += ']';

    return eventStr;
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
      odometer = json['odometer'].toDouble();
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
      fuelConsumedSinceRestart = json['fuel_consumed_since_restart'].toDouble();
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
    if (json['bearing'] == null) {
      bearing = null;
    } else {
      bearing = json['bearing'];
    }
    if (json['accuracy'] == null) {
      accuracy = null;
    } else {
      accuracy = json['accuracy'];
    }
    if (json['timestamp'] == null) {
      timestamp = null;
    } else {
      timestamp = DateTime.parse(json['timestamp']);
    }
    if (json['accel_x'] == null) {
      accelX = null;
    } else {
      accelX = json['accel_x'];
    }
    if (json['accel_y'] == null) {
      accelY = null;
    } else {
      accelY = json['accel_y'];
    }
    if (json['accel_z'] == null) {
      accelZ = null;
    } else {
      accelZ = json['accel_z'];
    }
    if (json['gyro_x'] == null) {
      gyroX = null;
    } else {
      gyroX = json['gyro_x'];
    }
    if (json['gyro_y'] == null) {
      gyroY = null;
    } else {
      gyroY = json['gyro_y'];
    }
    if (json['gyro_z'] == null) {
      gyroZ = null;
    } else {
      gyroZ = json['gyro_z'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (eventID != null) json['EventID'] = eventID;
    if (journeyID != null) json['JourneyID'] = journeyID;
    if (autoID != null) json['AutoID'] = autoID;
    if (eventCategoryID != null) json['EventCategoryID'] = eventCategoryID;
    if (steeringWheelAngle != null)
      json['steering_wheel_angle'] = steeringWheelAngle;
    if (torqueAtTransmission != null)
      json['torque_at_transmission'] = torqueAtTransmission;
    if (engineSpeed != null) json['engine_speed'] = engineSpeed;
    if (vehicleSpeed != null) json['vehicle_speed'] = vehicleSpeed;
    if (acceleratorPedalPosition != null)
      json['accelerator_pedal_position'] = acceleratorPedalPosition;
    if (parkingBrakeStatus != null)
      json['parking_brake_status'] = parkingBrakeStatus;
    if (brakePedalStatus != null) json['brake_pedal_status'] = brakePedalStatus;
    if (transmissionGearPosition != null)
      json['transmission_gear_position'] = transmissionGearPosition;
    if (gearLeverPosition != null)
      json['gear_lever_position'] = gearLeverPosition;
    if (odometer != null) json['odometer'] = odometer;
    if (ignitionStatus != null) json['ignition_status'] = ignitionStatus;
    if (fuelLevel != null) json['fuel_level'] = fuelLevel;
    if (fuelConsumedSinceRestart != null)
      json['fuel_consumed_since_restart'] = fuelConsumedSinceRestart;
    if (doorStatus != null) json['door_status'] = doorStatus;
    if (headlampStatus != null) json['headlamp_status'] = headlampStatus;
    if (highBeamStatus != null) json['high_beam_status'] = highBeamStatus;
    if (windshieldWiperStatus != null)
      json['windshield_wiper_status'] = windshieldWiperStatus;
    if (latitude != null) json['latitude'] = latitude;
    if (longitude != null) json['longitude'] = longitude;
    if (bearing != null) json['bearing'] = bearing;
    if (accuracy != null) json['accuracy'] = accuracy;
    if (timestamp != null)
      json['timestamp'] =
          timestamp == null ? null : timestamp.toUtc().toIso8601String();
    if (accelX != null) json['accel_x'] = accelX;
    if (accelY != null) json['accel_y'] = accelY;
    if (accelZ != null) json['accel_z'] = accelZ;
    if (gyroX != null) json['gyro_x'] = gyroX;
    if (gyroY != null) json['gyro_y'] = gyroY;
    if (gyroZ != null) json['gyro_z'] = gyroZ;
    return json;
  }

  static List<Event> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Event>()
        : json.map((value) => Event.fromJson(value)).toList();
  }

  static Map<String, Event> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Event>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Event.fromJson(value));
    }
    return map;
  }
}
