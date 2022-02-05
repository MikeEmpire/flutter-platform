import 'package:flutter/material.dart';

class SearchNBAPlayer extends StatefulWidget {
  @override
  _SearchNBAPlayer createState() => _SearchNBAPlayer();
}

class _SearchNBAPlayer extends State<SearchNBAPlayer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text('Search Nba Player'),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter a NBA player',
        ),
      ),
    ]);
  }
}
