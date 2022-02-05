import 'dart:convert';

import 'package:elite_mobile_app/models/nba/player_draft_info.dart';
import 'package:elite_mobile_app/models/nba/player_team_info.dart';
import 'package:elite_mobile_app/models/nba/team_site.dart';

class PlayerInfo {
  String? temporaryDisplayName;
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
    this.temporaryDisplayName,
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
  PlayerInfo.fromJson(Map<String, dynamic> json) {
    temporaryDisplayName = json['temporaryDisplayName'];
    lastName = json['lastName'];
    personId = json['personId'];
    teamId = json['teamId'];
    jersey = json['jersey'];
    isActive = json['isActive'];
    pos = json['pos'];
    heightFeet = json['heightFeet'];
    heightInches = json['heightInches'];
    heightMeters = json['heightMeters'];
    weightPounds = json['weightPounds'];
    weightKilograms = json['weightKilograms'];
    dateOfBirthUTC = json['dateOfBirthUTC'];
    teamSitesOnly = json['teamSitesOnly'];
    teams = json['teams'];
    draft = json['draft'];
    nbaDebutYear = json['nbaDebutYear'];
    yearsPro = json['yearsPro'];
    collegeName = json['collegeName'];
    lastAffiliation = json['lastAffiliation'];
    country = json['country'];
  }
}
