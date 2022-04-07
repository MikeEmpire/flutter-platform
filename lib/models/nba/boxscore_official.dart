import 'package:json_annotation/json_annotation.dart';

part 'boxscore_official.g.dart';

@JsonSerializable()
class BoxscoreOfficial {
  int personId;
  String name;
  String nameI;
  String jerseyNum;
  String firstName;
  String familyName;
  String assignment;

  BoxscoreOfficial(this.personId, this.name, this.nameI, this.jerseyNum,
      this.familyName, this.assignment, this.firstName);

  factory BoxscoreOfficial.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreOfficialFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreOfficialToJson(this);
}
