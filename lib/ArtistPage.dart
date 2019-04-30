import 'package:flutter/material.dart';
import 'package:flutter_listview/Artist.dart';

class ArtistPage extends StatelessWidget {
  static const _colorNames = [
    Colors.blue,
    Colors.lightBlueAccent,
    Colors.cyan,
    Colors.indigo,
    Colors.deepPurple,
    Colors.purple,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.pinkAccent
  ];

  static const _artistName = [
    "Lady Gaga",
    "Troye Sivan",
    "Ruelle",
    "Aurora",
    "Sufjan Steven",
    "Madonna",
    "Flurie",
    "Sia",
    "Lana Del Ray"
  ];

  @override
  Widget build(BuildContext context) {
    final artists = <Artist>[];

    for (var i = 0; i < _artistName.length; i++) {
      artists.add(Artist(
        name: _artistName[i],
        color: _colorNames[i],
        iconLocation: Icons.cake,
      ));
    }

    final listView = Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: _buildCategoryWidget(artists),
    );
    final appBar = AppBar(
      elevation: 2,
      title: Text("Artist"),
      backgroundColor: Colors.lightBlueAccent,
    );
    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  _buildCategoryWidget(List<Artist> artists) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => artists[index],
      itemCount: artists.length,
    );
  }
}
