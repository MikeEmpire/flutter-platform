// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'elite_author.g.dart';

@JsonSerializable()
class EliteAuthor {
  String username;
  String displayName;
  String email;
  String twitter_url;
  EliteAuthor(this.username, this.displayName, this.email, this.twitter_url);
  factory EliteAuthor.fromJson(Map<String, dynamic> data) =>
      _$EliteAuthorFromJson(data);
  Map<String, dynamic> toJson() => _$EliteAuthorToJson(this);
}
