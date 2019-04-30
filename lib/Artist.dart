import 'package:flutter/material.dart';

class Artist extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Artist({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

//    Artist(this.name, this.color, this.iconLocation);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 90.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          highlightColor: color,
          splashColor: color,
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
