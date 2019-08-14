part of openapi.api;

class ServiceDefinition {
  
  String title = null;
  
  String serviceName = null;
  
  String description = null;
  
  String creationDate = null;
  
  String creationUser = null;
  
  String modificationDate = null;
  
  String modificationUser = null;
  
  List<String> endpoints = [];
  
  List<ServiceDefinitionPurposes> purposes = [];
  ServiceDefinition();

  @override
  String toString() {
    return 'ServiceDefinition[title=$title, serviceName=$serviceName, description=$description, creationDate=$creationDate, creationUser=$creationUser, modificationDate=$modificationDate, modificationUser=$modificationUser, endpoints=$endpoints, purposes=$purposes, ]';
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
      endpoints = (json['Endpoints'] as List).cast<String>();
    }
    if (json['Purposes'] == null) {
      purposes = null;
    } else {
      purposes = ServiceDefinitionPurposes.listFromJson(json['Purposes']);
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
      json['Endpoints'] = endpoints;
    if (purposes != null)
      json['Purposes'] = purposes;
    return json;
  }

  static List<ServiceDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceDefinition>() : json.map((value) => ServiceDefinition.fromJson(value)).toList();
  }

  static Map<String, ServiceDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceDefinition.fromJson(value));
    }
    return map;
  }
}

