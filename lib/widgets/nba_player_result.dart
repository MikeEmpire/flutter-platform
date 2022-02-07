// import 'package:elite_mobile_app/models/nba/player_info.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class NBAPlayerForm extends StatefulWidget {
//   const NBAPlayerForm({Key? key, required this.players}) : super(key: key);
//   final List<PlayerInfo> players;
//   @override
//   _NBAPlayerFormState createState() => _NBAPlayerFormState();
// }

// class _NBAPlayerFormState extends State<NBAPlayerForm> {
//   final searchController = TextEditingController();

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: <Widget>[
//       const Text('Search Nba Player'),
//       TextField(
//         controller: searchController,
//         decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             hintText: 'Enter a NBA player',
//             icon: Icon(Icons.person)),
//       ),
//       FutureBuilder(
//           future: httpService.getPlayers(),
//           builder:
//               (BuildContext context, AsyncSnapshot<List<PlayerInfo>> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting ||
//                 !snapshot.hasData) {
//               return const Center(child: CircularProgressIndicator());
//             }
//             List<PlayerInfo> players = snapshot.data as List<PlayerInfo>;
//             // ignore: todo
//             List<PlayerInfo> results = [];
//             if (searchController.text.isEmpty) {
//               results = players;
//             } else {
//               results = players
//                   .where((player) => player.firstName
//                       .toLowerCase()
//                       .contains(searchController.text.toLowerCase()))
//                   .toList();
//             }
//             return Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                       itemCount: results.length > 10 ? 10 : results.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return ListTile(title: Text(results[index].firstName));
//                       }),
//                 )
//               ],
//             ));
//           })
//     ]);
//   }
// }
