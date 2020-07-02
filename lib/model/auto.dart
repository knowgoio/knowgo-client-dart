part of knowgo.api;

class Auto {
  int autoID = null;

  int driverID = null;

  int ownerID = null;

  String name = null;

  String make = null;

  String model = null;

  int year = null;
  /* Vehicle identification number in accordance with ISO 3779:2009 */
  String VIN = null;

  String licensePlate = null;

  DateTime registrationExpiry = null;

  String fuelCapacity = null;

  double odometer = null;

  String policyID = null;
  /* Optional field to enter owner notes about the vehicle */
  String notes = null;

  List<String> photoUrls = [];

  String driveTrain = null;

  String engineType = null;

  String exteriorColor = null;

  String interiorColor = null;

  String transmission = null;
  Auto();

  @override
  String toString() {
    return 'Auto[autoID=$autoID, driverID=$driverID, ownerID=$ownerID, name=$name, make=$make, model=$model, year=$year, VIN=$VIN, licensePlate=$licensePlate, registrationExpiry=$registrationExpiry, fuelCapacity=$fuelCapacity, odometer=$odometer, policyID=$policyID, notes=$notes, photoUrls=$photoUrls, driveTrain=$driveTrain, engineType=$engineType, exteriorColor=$exteriorColor, interiorColor=$interiorColor, transmission=$transmission, ]';
  }

  Auto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['AutoID'] == null) {
      autoID = null;
    } else {
      autoID = json['AutoID'];
    }
    if (json['DriverID'] == null) {
      driverID = null;
    } else {
      driverID = json['DriverID'];
    }
    if (json['OwnerID'] == null) {
      ownerID = null;
    } else {
      ownerID = json['OwnerID'];
    }
    if (json['Name'] == null) {
      name = null;
    } else {
      name = json['Name'];
    }
    if (json['Make'] == null) {
      make = null;
    } else {
      make = json['Make'];
    }
    if (json['Model'] == null) {
      model = null;
    } else {
      model = json['Model'];
    }
    if (json['Year'] == null) {
      year = null;
    } else {
      year = json['Year'];
    }
    if (json['VIN'] == null) {
      VIN = null;
    } else {
      VIN = json['VIN'];
    }
    if (json['LicensePlate'] == null) {
      licensePlate = null;
    } else {
      licensePlate = json['LicensePlate'];
    }
    if (json['RegistrationExpiry'] == null) {
      registrationExpiry = null;
    } else {
      registrationExpiry = DateTime.parse(json['RegistrationExpiry']);
    }
    if (json['FuelCapacity'] == null) {
      fuelCapacity = null;
    } else {
      fuelCapacity = json['FuelCapacity'];
    }
    if (json['Odometer'] == null) {
      odometer = null;
    } else {
      odometer = json['Odometer'].toDouble();
    }
    if (json['PolicyID'] == null) {
      policyID = null;
    } else {
      policyID = json['PolicyID'];
    }
    if (json['Notes'] == null) {
      notes = null;
    } else {
      notes = json['Notes'];
    }
    if (json['PhotoUrls'] == null) {
      photoUrls = null;
    } else {
      photoUrls = (json['PhotoUrls'] as List).cast<String>();
    }
    if (json['DriveTrain'] == null) {
      driveTrain = null;
    } else {
      driveTrain = json['DriveTrain'];
    }
    if (json['EngineType'] == null) {
      engineType = null;
    } else {
      engineType = json['EngineType'];
    }
    if (json['ExteriorColor'] == null) {
      exteriorColor = null;
    } else {
      exteriorColor = json['ExteriorColor'];
    }
    if (json['InteriorColor'] == null) {
      interiorColor = null;
    } else {
      interiorColor = json['InteriorColor'];
    }
    if (json['Transmission'] == null) {
      transmission = null;
    } else {
      transmission = json['Transmission'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (autoID != null) json['AutoID'] = autoID;
    if (driverID != null) json['DriverID'] = driverID;
    if (ownerID != null) json['OwnerID'] = ownerID;
    if (name != null) json['Name'] = name;
    if (make != null) json['Make'] = make;
    if (model != null) json['Model'] = model;
    if (year != null) json['Year'] = year;
    if (VIN != null) json['VIN'] = VIN;
    if (licensePlate != null) json['LicensePlate'] = licensePlate;
    if (registrationExpiry != null)
      json['RegistrationExpiry'] = registrationExpiry == null
          ? null
          : registrationExpiry.toUtc().toIso8601String();
    if (fuelCapacity != null) json['FuelCapacity'] = fuelCapacity;
    if (odometer != null) json['Odometer'] = odometer;
    if (policyID != null) json['PolicyID'] = policyID;
    if (notes != null) json['Notes'] = notes;
    if (photoUrls != null) json['PhotoUrls'] = photoUrls;
    if (driveTrain != null) json['DriveTrain'] = driveTrain;
    if (engineType != null) json['EngineType'] = engineType;
    if (exteriorColor != null) json['ExteriorColor'] = exteriorColor;
    if (interiorColor != null) json['InteriorColor'] = interiorColor;
    if (transmission != null) json['Transmission'] = transmission;
    return json;
  }

  static List<Auto> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Auto>()
        : json.map((value) => Auto.fromJson(value)).toList();
  }

  static Map<String, Auto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Auto>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Auto.fromJson(value));
    }
    return map;
  }
}
