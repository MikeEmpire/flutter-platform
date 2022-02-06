import 'package:elite_mobile_app/models/nba/player_draft_info.dart';
import 'package:elite_mobile_app/models/nba/player_team_info.dart';
import 'package:elite_mobile_app/models/nba/team_site.dart';

class PlayerInfo {
  String temporaryDisplayName;
  String? firstName;
  String? lastName;
  String? personId;
  String? teamId;
  String? jersey;
  bool? isActive;
  String? pos;
  String? heightFeet;
  String? heightInches;
  String? heightMeters;
  String? weightPounds;
  String? weightKilograms;
  String? dateOfBirthUTC;
  TeamSite? teamSitesOnly;
  List<PlayerTeamInfo>? teams;
  PlayerDraftInfo? draft;
  String? nbaDebutYear;
  String? yearsPro;
  String? collegeName;
  String? lastAffiliation;
  String? country;

  PlayerInfo({
    required this.temporaryDisplayName,
    this.firstName,
    this.lastName,
    this.personId,
    this.teamId,
    this.jersey,
    this.isActive,
    this.pos,
    this.heightFeet,
    this.heightInches,
    this.heightMeters,
    this.weightPounds,
    this.weightKilograms,
    this.dateOfBirthUTC,
    this.teamSitesOnly,
    this.teams,
    this.draft,
    this.nbaDebutYear,
    this.yearsPro,
    this.collegeName,
    this.lastAffiliation,
    this.country,
  });
  factory PlayerInfo.fromJson(Map<String, dynamic> json) {
    final teamSitesOnly = json['teamSitesOnly'] as TeamSite?;
    return PlayerInfo(
      temporaryDisplayName: json['temporaryDisplayName'].toString(),
      firstName: json['firstName'].toString(),
      lastName: json['lastName'].toString(),
      personId: json['personId'].toString(),
      teamId: json['teamId'].toString(),
      jersey: json['jersey'].toString(),
      isActive: json['isActive'],
      pos: json['pos'].toString(),
      heightFeet: json['heightFeet'].toString(),
      heightInches: json['heightInches'].toString(),
      heightMeters: json['heightMeters'].toString(),
      weightPounds: json['weightPounds'].toString(),
      weightKilograms: json['weightKilograms'].toString(),
      dateOfBirthUTC: json['dateOfBirthUTC'].toString(),
      teamSitesOnly: teamSitesOnly,
      teams: json['teams'],
      draft: json['draft'],
      nbaDebutYear: json['nbaDebutYear'],
      yearsPro: json['yearsPro'],
      collegeName: json['collegeName'],
      lastAffiliation: json['lastAffiliation'],
      country: json['country'],
    );
  }
}
