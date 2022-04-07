import 'package:json_annotation/json_annotation.dart';

part 'previous_matchup.g.dart';

@JsonSerializable()
class PreviousMatchup {
  String gameId;
  String gameDate;

  PreviousMatchup(this.gameId, this.gameDate);

  factory PreviousMatchup.fromJson(Map<String, dynamic> data) =>
      _$PreviousMatchupFromJson(data);

  Map<String, dynamic> toJson() => _$PreviousMatchupToJson(this);
}
