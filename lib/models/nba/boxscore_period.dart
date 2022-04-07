import 'package:json_annotation/json_annotation.dart';

part 'boxscore_period.g.dart';

@JsonSerializable()
class BoxscorePeriod {
  int period;
  String periodType;
  int score;

  BoxscorePeriod(this.period, this.periodType, this.score);

  factory BoxscorePeriod.fromJson(Map<String, dynamic> data) =>
      _$BoxscorePeriodFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscorePeriodToJson(this);
}
