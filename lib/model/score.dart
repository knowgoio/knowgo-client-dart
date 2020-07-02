part of knowgo.api;

class Score {
  /* ID of Journey scored */
  String id = null;
  /* Score */
  double score = null;
  /* Score Level */
  String level = null;
  //enum levelEnum {  Unscorable,  Negligible,  Minor,  Moderate,  High,  };{
  /* Number of Journeys included in calculation */
  int numJourneys = null;
  /* Overall confidence score */
  double confidence = null;
  /* Start date of data to score */
  DateTime fromDate = null;
  /* End date of data to score */
  DateTime untilDate = null;

  List<ScoreClassification> results = [];
  Score();

  @override
  String toString() {
    return 'Score[id=$id, score=$score, level=$level, numJourneys=$numJourneys, confidence=$confidence, fromDate=$fromDate, untilDate=$untilDate, results=$results, ]';
  }

  Score.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
      id = json['id'];
    }
    if (json['score'] == null) {
      score = null;
    } else {
      score = double.parse(json['score']);
    }
    if (json['level'] == null) {
      level = null;
    } else {
      level = json['level'];
    }
    if (json['num_journeys'] == null) {
      numJourneys = null;
    } else {
      numJourneys = json['num_journeys'];
    }
    if (json['confidence'] == null) {
      confidence = null;
    } else {
      confidence = double.parse(json['confidence']);
    }
    if (json['fromDate'] == null) {
      fromDate = null;
    } else {
      fromDate = DateTime.parse(json['fromDate']);
    }
    if (json['untilDate'] == null) {
      untilDate = null;
    } else {
      untilDate = DateTime.parse(json['untilDate']);
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = ScoreClassification.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    if (score != null) json['score'] = score;
    if (level != null) json['level'] = level;
    if (numJourneys != null) json['num_journeys'] = numJourneys;
    if (confidence != null) json['confidence'] = confidence;
    if (fromDate != null)
      json['fromDate'] =
          fromDate == null ? null : fromDate.toUtc().toIso8601String();
    if (untilDate != null)
      json['untilDate'] =
          untilDate == null ? null : untilDate.toUtc().toIso8601String();
    if (results != null) json['results'] = results;
    return json;
  }

  static List<Score> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Score>()
        : json.map((value) => Score.fromJson(value)).toList();
  }

  static Map<String, Score> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Score>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Score.fromJson(value));
    }
    return map;
  }
}
