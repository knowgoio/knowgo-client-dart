part of openapi.api;

class Auto {
  
  String autoID = null;
  
  String driverID = null;
  
  String ownerID = null;
  
  String name = null;
  
  String make = null;
  
  String model = null;
  
  int year = null;
  /* Vehicle identification number in accordance with ISO 3779:2009 */
  String VIN = null;
  
  String licensePlate = null;
  
  DateTime registrationExpiry = null;
  
  String fuelCapacity = null;
  
  int odometer = null;
  
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
          odometer = json['Odometer'];
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
    return {
      'AutoID': autoID,
      'DriverID': driverID,
      'OwnerID': ownerID,
      'Name': name,
      'Make': make,
      'Model': model,
      'Year': year,
      'VIN': VIN,
      'LicensePlate': licensePlate,
      'RegistrationExpiry': registrationExpiry == null ? '' : registrationExpiry.toUtc().toIso8601String(),
      'FuelCapacity': fuelCapacity,
      'Odometer': odometer,
      'PolicyID': policyID,
      'Notes': notes,
      'PhotoUrls': photoUrls,
      'DriveTrain': driveTrain,
      'EngineType': engineType,
      'ExteriorColor': exteriorColor,
      'InteriorColor': interiorColor,
      'Transmission': transmission
    };
  }

  static List<Auto> listFromJson(List<dynamic> json) {
    return json == null ? new List<Auto>() : json.map((value) => new Auto.fromJson(value)).toList();
  }

  static Map<String, Auto> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Auto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new Auto.fromJson(value));
    }
    return map;
  }
}

