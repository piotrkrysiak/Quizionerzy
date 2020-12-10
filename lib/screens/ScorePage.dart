import 'package:flutter/material.dart';
import 'package:app2/screens/QuestionPage.dart';
import 'package:app2/screens/gridView/gridViewMain.dart';

class ScorePage extends StatefulWidget {
  final String value;

  ScorePage({Key key, this.value}) : super(key: key);

  @override
  _ScorePageState createState() => new _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
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
            children: gridViewSmall(sizeX, sizeY),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: new Text(
                "Zatrzymałeś się na: ${widget.value} pytaniu",
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: new Text(
                  chooser(widget.value),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    //fontFamily: 'Roboto'
                  ),
                )),
                Container(
                  width: sizeX / 2,
                  height: sizeX / 2,
                  child: Image.network(
                      "https://www.pngitem.com/pimgs/m/174-1748919_cash-png-animated-cartoon-stacks-of-money-png.png"),
                ),
                Container(
                  width: sizeX - 40,
                  child: RaisedButton(
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Color(0xFF092593),
                    child: Text("Zacznij od nowa",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) => new QuestionPage(),
                      );
                      Navigator.of(context).pushReplacement(route);
                    },
                  ),
                ),
                
              ],
            ),
          )
        ])));
  }
}

String chooser(String value) {
  int buff = int.parse(value);
  if (buff > 1 && buff < 6) {
    return "Wygrałeś grarantowane 1 000 zł";
  } 
  if (buff > 6 ) {
    return "Wygrałeś grarantowane 40 000 zł";
  } 
  else
    return "Nic nie wygrałeś ";
}
