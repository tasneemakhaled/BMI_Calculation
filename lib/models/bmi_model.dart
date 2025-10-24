import 'package:bmi_app/entities/bmi_entity.dart';

class BmiModel extends BmiEntity {
  BmiModel({
    required super.height,
    required super.weight,
    required super.bmi,
    required super.risk,
    required super.summary,
    required super.recommendation,
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
