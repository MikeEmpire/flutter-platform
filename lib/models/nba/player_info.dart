import 'dart:convert';

import 'package:elite_mobile_app/models/nba/player_draft_info.dart';
import 'package:elite_mobile_app/models/nba/player_team_info.dart';
import 'package:elite_mobile_app/models/nba/team_site.dart';

class PlayerInfo {
  final String temporaryDisplayName;
  final String? firstName;
  final String? lastName;
  final String? personId;
  final String? teamId;
  final String? jersey;
  final bool? isActive;
  final String? pos;
  final String? heightFeet;
  final String? heightInches;
  final String? heightMeters;
  final String? weightPounds;
  final String? weightKilograms;
  final String? dateOfBirthUTC;
  final TeamSite? teamSitesOnly;
  final List<PlayerTeamInfo>? teams;
  final PlayerDraftInfo? draft;
  final String? nbaDebutYear;
  final String? yearsPro;
  final String? collegeName;
  final String? lastAffiliation;
  final String? country;

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
}
