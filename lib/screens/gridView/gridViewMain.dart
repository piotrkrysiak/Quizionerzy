import 'package:app2/screens/gridView/gridViewQuestion.dart';
import 'package:flutter/material.dart';


List<Widget> gridViewSmall(double sizeX, double sizeY) {
  List<Widget> layout = new List<Widget>();

  ClipPath bar = ClipPath(
    clipper: MyClipper(),
    child: Container(
      height: 200,
      width: sizeX,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF00030e),
              Color(0xFF000033),
              Color(0xFF030e3a),
              Color(0xFF051658),
              Color(0xFF071d75),
              Color(0xFF092593),
              Color(0xFF092593),
            ]),
      ),
    ),
  );

  layout.add(bar);
  Positioned title = Positioned(
    top: 20,
    left: 100,
    child: Text(
      "Quizionerzy",
      style: TextStyle(color: Colors.white, fontSize: 40),
    ),
  );

  layout.add(title);
  return layout;
}