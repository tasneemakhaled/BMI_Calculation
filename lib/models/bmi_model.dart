class BmiModel {
  final double height;
  final double weight;
  final double bmi;
  final String risk;
  final String summary;
  final String recommendation;
  BmiModel({
    required this.height,
    required this.weight,
    required this.bmi,
    required this.risk,
    required this.summary,
    required this.recommendation,
  });
  factory BmiModel.fromJson(json) {
    return BmiModel(
      height: json['data']['height'],
      weight: json['data']['weight'],
      bmi: json['data']['bmi'],
      risk: json['data']['risk'],
      summary: json['data']['summary'],
      recommendation: json['data']['recommendation'],
    );
  }
}
