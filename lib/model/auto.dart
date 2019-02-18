part of openapi.api;

class Auto {
  
  int autoID = null;
  
  int ownerID = null;
  
  String VIN = null;
  
  String make = null;
  
  String model = null;
  
  int year = null;
  
  String driveTrain = null;
  
  String engineType = null;
  
  String exteriorColor = null;
  
  String interiorColor = null;
  
  String transmission = null;
  Auto();

  @override
  String toString() {
    return 'Auto[autoID=$autoID, ownerID=$ownerID, VIN=$VIN, make=$make, model=$model, year=$year, driveTrain=$driveTrain, engineType=$engineType, exteriorColor=$exteriorColor, interiorColor=$interiorColor, transmission=$transmission, ]';
  }

  Auto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['AutoID'] == null) {
      autoID = null;
    } else {
          autoID = json['AutoID'];
    }
    if (json['OwnerID'] == null) {
      ownerID = null;
    } else {
          ownerID = json['OwnerID'];
    }
    if (json['VIN'] == null) {
      VIN = null;
    } else {
          VIN = json['VIN'];
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
      'OwnerID': ownerID,
      'VIN': VIN,
      'Make': make,
      'Model': model,
      'Year': year,
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

