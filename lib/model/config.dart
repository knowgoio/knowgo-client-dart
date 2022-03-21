part of knowgo.api;

class Config {
  /* ISO 3166-1 alpha-2 country code designation */
  String? country = null;
  /* Region served */
  String? region = null;
  /* Address of the MQTT Proxy clients should connect to */
  String? mqttProxyHost = null;
  Config();

  @override
  String toString() {
    return 'Config[country=$country, region=$region, mqttProxyHost=$mqttProxyHost, ]';
  }

  Config.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    if (json['Country'] == null) {
      country = null;
    } else {
      country = json['Country'];
    }
    if (json['Region'] == null) {
      region = null;
    } else {
      region = json['Region'];
    }
    if (json['MQTTProxyHost'] == null) {
      mqttProxyHost = null;
    } else {
      mqttProxyHost = json['MQTTProxyHost'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (country != null) json['Country'] = country;
    if (region != null) json['Region'] = region;
    if (mqttProxyHost != null) json['MQTTProxyHost'] = mqttProxyHost;
    return json;
  }

  static List<Config> listFromJson(List<dynamic> json) {
    return json.map((value) => Config.fromJson(value)).toList();
  }

  static Map<String, Config> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Config>();
    json.forEach(
          (String key, dynamic value) => map[key] = Config.fromJson(value));
    return map;
  }
}
