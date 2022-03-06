import 'package:elite_mobile_app/models/nba/game_info.dart';
import 'package:elite_mobile_app/services/game_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NBASchedulePage extends StatefulWidget {
  const NBASchedulePage({Key? key}) : super(key: key);
  @override
  _NBASchedulePageState createState() => _NBASchedulePageState();
}

class _NBASchedulePageState extends State<NBASchedulePage> {
  final GameService gameService = GameService();
  String _getPlayerImg(String teamId) =>
      'https://cdn.nba.com/logos/nba/' + teamId + '/primary/D/logo.svg';

  @override
  Widget build(BuildContext context) {
    final Future<List<GameInfo>> _gameScheduleFuture = gameService.getGames();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Games Today"),
          FutureBuilder(
              future: _gameScheduleFuture,
              builder: (BuildContext context,
                  AsyncSnapshot<List<GameInfo>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting ||
                    !snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                List<GameInfo> _gameSchedule = snapshot.data as List<GameInfo>;
                return SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: _gameSchedule.length,
                        itemBuilder: (BuildContext context, int index) {
                          String homeTeamId =
                              _gameSchedule[index].hTeam?.teamId as String;
                          String awayTeamId =
                              _gameSchedule[index].vTeam?.teamId as String;
                          String _homeTeamImg = _getPlayerImg(homeTeamId);
                          String _vTeamImg = _getPlayerImg(awayTeamId);
                          return Row(children: [
                            Expanded(
                                flex: 2,
                                child: Column(children: [
                                  SvgPicture.network(_homeTeamImg,
                                      fit: BoxFit.cover, height: 60, width: 60)
                                ])),
                            Expanded(
                                flex: 2,
                                child: Column(children: [
                                  SvgPicture.network(_vTeamImg,
                                      fit: BoxFit.cover, height: 60, width: 60)
                                ]))
                          ]);
                        }));
              })
        ]);
  }
}
