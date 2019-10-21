part of openapi.api;

class ScoreClassification {
  /* Name of Classifier run */
  String classifier = null;
  /* Score provided by the Classifier */
  double score = null;
  /* Weighting applied for the Classifier */
  int weight = null;
  /* Confidence score returned by the Classifier */
  double confidence = null;
  ScoreClassification();

  @override
  String toString() {
    return 'ScoreClassification[classifier=$classifier, score=$score, weight=$weight, confidence=$confidence, ]';
  }

  ScoreClassification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['classifier'] == null) {
      classifier = null;
    } else {
          classifier = json['classifier'];
    }
    if (json['score'] == null) {
      score = null;
    } else {
          score = double.parse(json['score']);
    }
    if (json['weight'] == null) {
      weight = null;
    } else {
          weight = json['weight'];
    }
    if (json['confidence'] == null) {
      confidence = null;
    } else {
          confidence = double.parse(json['confidence']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (classifier != null)
      json['classifier'] = classifier;
    if (score != null)
      json['score'] = score;
    if (weight != null)
      json['weight'] = weight;
    if (confidence != null)
      json['confidence'] = confidence;
    return json;
  }

  static List<ScoreClassification> listFromJson(List<dynamic> json) {
    return json == null ? List<ScoreClassification>() : json.map((value) => ScoreClassification.fromJson(value)).toList();
  }

  static Map<String, ScoreClassification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ScoreClassification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ScoreClassification.fromJson(value));
    }
    return map;
  }
}

