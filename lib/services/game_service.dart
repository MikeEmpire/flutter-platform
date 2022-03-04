import 'dart:convert';

import 'package:elite_mobile_app/models/nba/game_info.dart';
import 'package:http/http.dart' as http;

class GameService {
  final String _baseUrl = "https://nba-api.afam.app/api/games";
  Future<List<GameInfo>> getGames() async {
    final res = await http.get(Uri.parse(_baseUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> unSerializedData = jsonDecode(res.body);
      final body = unSerializedData['data'];
      List<dynamic> rawGames = body['games'];
      List<GameInfo> games =
          rawGames.map((dynamic game) => GameInfo.fromJson(game)).toList();
      return games;
    } else {
      throw "Unable to retrieve games";
    }
  }
}
