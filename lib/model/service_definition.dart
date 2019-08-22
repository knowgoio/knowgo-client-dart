part of openapi.api;

class Endpoints {
  List<String> endpoint;

  Endpoints({this.endpoint});

  @override
  String toString() {
    return endpoint.toString();
  }

  Endpoints.fromJson(Map<String, dynamic> json) {
    endpoint = json['Endpoint'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Endpoint'] = this.endpoint;
    return data;
  }
}

class Purposes {
  List<Purpose> purpose;

  Purposes({this.purpose});

  @override
  String toString() {
    return purpose.toString();
  }

  Purposes.fromJson(Map<String, dynamic> json) {
    if (json['Purpose'] != null) {
      purpose = List<Purpose>();
      json['Purpose'].forEach((v) {
        purpose.add(Purpose.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.purpose != null) {
      data['Purpose'] = this.purpose.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Purpose {
  String description;
  String legalBasis;
  DataNeeded dataNeeded;
  DataWanted dataWanted;

  Purpose(
      {this.description, this.legalBasis, this.dataNeeded, this.dataWanted});

  @override
  String toString() {
    return 'Purpose[description=$description, legalBasis=$legalBasis, dataNeeded=$dataNeeded, dataWanted=$dataWanted, ]';
  }

  Purpose.fromJson(Map<String, dynamic> json) {
    description = json['Description'];
    legalBasis = json['LegalBasis'];
    dataNeeded = json['DataNeeded'] != null
        ? DataNeeded.fromJson(json['DataNeeded'])
        : null;
    dataWanted = json['DataWanted'] != null
        ? DataWanted.fromJson(json['DataWanted'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Description'] = this.description;
    data['LegalBasis'] = this.legalBasis;
    if (this.dataNeeded != null) {
      data['DataNeeded'] = this.dataNeeded.toJson();
    }
    if (this.dataWanted != null) {
      data['DataWanted'] = this.dataWanted.toJson();
    }
    return data;
  }
}

class DataNeeded {
  List<DataSource> dataSources;

  DataNeeded({this.dataSources});

  @override
  String toString() {
    return dataSources.toString();
  }

  DataNeeded.fromJson(Map<String, dynamic> json) {
    if (json['DataSources'] != null) {
      dataSources = List<DataSource>();
      json['DataSources'].forEach((v) {
        dataSources.add(DataSource.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.dataSources != null) {
      data['DataSources'] = this.dataSources.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataWanted {
  List<DataSource> dataSources;

  DataWanted({this.dataSources});

  @override
  String toString() {
    return dataSources.toString();
  }

  DataWanted.fromJson(Map<String, dynamic> json) {
    if (json['DataSources'] != null) {
      dataSources = List<DataSource>();
      json['DataSources'].forEach((v) {
        dataSources.add(DataSource.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.dataSources != null) {
      data['DataSources'] = this.dataSources.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataSource {
  String source;
  String justification;
  String linkedService;

  DataSource({this.source, this.justification, this.linkedService});

  @override
  String toString() {
    return 'DataSource[source=$source, justification=$justification, linkedService=$linkedService, ]';
  }

  DataSource.fromJson(Map<String, dynamic> json) {
    source = json['Source'];
    justification = json['Justification'];
    linkedService = json['LinkedService'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Source'] = this.source;
    data['Justification'] = this.justification;
    data['LinkedService'] = this.linkedService;
    return data;
  }
}

class ServiceConfig {
  String host;

  ServiceConfig({this.host});

  @override
  String toString() {
    return 'ServiceConfig[host=$host, ]';
  }

  ServiceConfig.fromJson(Map<String, dynamic> json) {
    host = json['Host'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Host'] = this.host;
    return data;
  }
}

class ServiceDefinition {
  String title = null;

  String serviceName = null;

  String description = null;

  String creationDate = null;

  String creationUser = null;

  String modificationDate = null;

  String modificationUser = null;

  Endpoints endpoints = null;

  Purposes purposes = null;

  ServiceConfig config = null;

  ServiceDefinition();

  @override
  String toString() {
    return 'ServiceDefinition[title=$title, serviceName=$serviceName, description=$description, creationDate=$creationDate, creationUser=$creationUser, modificationDate=$modificationDate, modificationUser=$modificationUser, endpoints=$endpoints, purposes=$purposes, config=$config, ]';
  }

  ServiceDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['Title'] == null) {
      title = null;
    } else {
      title = json['Title'];
    }
    if (json['ServiceName'] == null) {
      serviceName = null;
    } else {
      serviceName = json['ServiceName'];
    }
    if (json['Description'] == null) {
      description = null;
    } else {
      description = json['Description'];
    }
    if (json['CreationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = json['CreationDate'];
    }
    if (json['CreationUser'] == null) {
      creationUser = null;
    } else {
      creationUser = json['CreationUser'];
    }
    if (json['ModificationDate'] == null) {
      modificationDate = null;
    } else {
      modificationDate = json['ModificationDate'];
    }
    if (json['ModificationUser'] == null) {
      modificationUser = null;
    } else {
      modificationUser = json['ModificationUser'];
    }
    if (json['Endpoints'] == null) {
      endpoints = null;
    } else {
      endpoints = Endpoints.fromJson(json['Endpoints']);
    }
    if (json['Purposes'] == null) {
      purposes = null;
    } else {
      purposes = Purposes.fromJson(json['Purposes']);
    }
    if (json['ServiceConfig'] == null) {
      config = null;
    } else {
      config = ServiceConfig.fromJson(json['ServiceConfig']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['Title'] = title;
    if (serviceName != null)
      json['ServiceName'] = serviceName;
    if (description != null)
      json['Description'] = description;
    if (creationDate != null)
      json['CreationDate'] = creationDate;
    if (creationUser != null)
      json['CreationUser'] = creationUser;
    if (modificationDate != null)
      json['ModificationDate'] = modificationDate;
    if (modificationUser != null)
      json['ModificationUser'] = modificationUser;
    if (endpoints != null)
      json['Endpoints'] = endpoints.toJson();
    if (purposes != null)
      json['Purposes'] = purposes.toJson();
    if (config != null)
      json['ServiceConfig'] = config.toJson();

    return json;
  }

  static List<ServiceDefinition> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ServiceDefinition>()
        : json.map((value) => ServiceDefinition.fromJson(value)).toList();
  }

  static Map<String, ServiceDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceDefinition.fromJson(value));
    }
    return map;
  }
}
