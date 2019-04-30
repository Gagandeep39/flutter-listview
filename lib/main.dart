import 'package:flutter/material.dart';
import 'package:flutter_listview/ArtistPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Artists",
      home: ArtistPage(),
    );
  }
}
