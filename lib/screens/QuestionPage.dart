import 'package:app2/backend/question.dart';
import 'package:app2/screens/ScorePage.dart';
import 'package:flutter/material.dart';
import 'package:app2/screens/gridView/gridViewQuestion.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPage createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionPage> {
  int pytanie = 0;
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

  bool _checker(int index, Question question) {
    if (index == question.corectAnswer) {
      setState(() {
        pytanie++;
      });
      return false;
    } 
    else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return new Scaffold(
        body: Center(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: gridView(sizeX, sizeY, pytanie, context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Text(
              pyt(pytanie).question,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                //fontFamily: 'Roboto'
              ),
            )),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: sizeX - 20,
                child: RaisedButton(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color(0xFF092593),
                  child: Text(pyt(pytanie).answerA,
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    if (_checker(0, pyt(pytanie)) == true) {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new ScorePage(value: (pytanie + 1).toString()),
                      );
                      Navigator.of(context).pushReplacement(route);
                    }
                  },
                ),
              ),
              Container(
                width: sizeX - 20,
                child: RaisedButton(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color(0xFF092593),
                  child: Text(pyt(pytanie).answerB,
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                      if (_checker(1, pyt(pytanie)) == true) {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new ScorePage(value: (pytanie + 1).toString()),
                      );
                      Navigator.of(context).pushReplacement(route);
                      }
                  },
                ),
              ),
              Container(
                width: sizeX - 20,
                child: RaisedButton(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color(0xFF092593),
                  child: Text(pyt(pytanie).answerC,
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                      if (_checker(2, pyt(pytanie)) == true) {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new ScorePage(value: (pytanie + 1).toString()),
                      );
                      Navigator.of(context).pushReplacement(route);
                      }
                  },
                ),
              ),
              Container(
                width: sizeX - 20,
                margin: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color(0xFF092593),
                  child: Text(pyt(pytanie).answerD,
                      style: TextStyle(
                        color: Colors.white, //fontFamily: 'ShadowsIntoLight'
                      )),
                  onPressed: () {
                      if (_checker(3, pyt(pytanie)) == true) {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new ScorePage(value: (pytanie + 1).toString()),
                      );
                      Navigator.of(context).pushReplacement(route);
                      }                    
                  },
                ),
              ),
            ],
          ),
        )
      ],
    )));
  }
}

