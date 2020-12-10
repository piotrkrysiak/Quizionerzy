import 'package:app2/backend/question.dart';
import 'package:flutter/material.dart';
import 'package:app2/screens/PrizePage.dart';

Question q0 = new Question(
    "_question0", "_answerA0", "_answerB0", "_answerC0", "_answerD0", 2);
Question q1 = new Question(
    "_question1", "_answerA1", "_answerB1", "_answerC1", "_answerD1", 2);
Question q2 = new Question(
    "_question2", "_answerA2", "_answerB2", "_answerC2", "_answerD2", 2);
Question q3 = new Question(
    "_question3", "_answerA3", "_answerB3", "_answerC3", "_answerD3", 2);
Question q4 = new Question(
    "_question4", "_answerA4", "_answerB4", "_answerC4", "_answerD4", 2);
Question q5 = new Question(
    "_question5", "_answerA5", "_answerB5", "_answerC5", "_answerD5", 2);
Question q6 = new Question(
    "_question6", "_answerA6", "_answerB6", "_answerC6", "_answerD6", 2);
Question q7 = new Question(
    "_question7", "_answerA7", "_answerB7", "_answerC7", "_answerD7", 2);
Question q8 = new Question(
    "_question8", "_answerA8", "_answerB8", "_answerC8", "_answerD8", 2);
Question q9 = new Question(
    "_question9", "_answerA9", "_answerB9", "_answerC9", "_answerD9", 2);
Question q10 = new Question(
    "_question10", "_answerA10", "_answerB10", "_answerC10", "_answerD10", 2);
Question q11 = new Question(
    "_question11", "_answerA11", "_answerB11", "_answerC11", "_answerD11", 2);
Question qerr = new Question("error", "error", "erorr", "erorr", "erorr", 2);

Question pyt(int index) {
  switch (index) {
    case 0:
      return q0;
      break;
    case 1:
      return q1;
      break;
    case 2:
      return q2;
      break;
    case 3:
      return q3;
      break;
    case 4:
      return q4;
      break;
    case 5:
      return q5;
      break;
    case 6:
      return q6;
      break;
    case 7:
      return q7;
      break;
    case 8:
      return q8;
      break;
    case 9:
      return q9;
      break;
    case 10:
      return q10;
      break;
    case 11:
      return q11;
      break;
    default:
      return qerr;
      break;
  }
}

List<Widget> gridView(
    double sizeX, double sizeY, int pytanie, BuildContext context) {
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

  Positioned side = Positioned(
    top: 20,
    left: 20,
    child: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          var route = new MaterialPageRoute(
            builder: (BuildContext context) =>
                new PrizePage(value: (pytanie + 1).toString()),
          );
          Navigator.of(context).pushReplacement(route);
        }),
  );

  layout.add(side);

  Positioned call = Positioned(
    top: 120,
    left: sizeX / 2 - 80,
    child: IconButton(
        icon: Icon(Icons.people, color: Colors.white), onPressed: () {}),
  );
  layout.add(call);

  Positioned people = Positioned(
    top: 120,
    left: sizeX / 2 - 40,
    child: IconButton(
        icon: Icon(Icons.done_all, color: Colors.white), onPressed: () {}),
  );
  layout.add(people);
  Positioned change = Positioned(
    top: 120,
    left: sizeX / 2,
    child: IconButton(
        icon: Icon(Icons.call, color: Colors.white), onPressed: () {}),
  );
  layout.add(change);
  Positioned half = Positioned(
    top: 120,
    left: sizeX / 2 + 40,
    child: IconButton(
        icon: Icon(Icons.find_replace, color: Colors.white),
        onPressed: () {
        }),
  );
  layout.add(half);

  return layout;
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
