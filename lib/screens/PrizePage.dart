import 'package:flutter/material.dart';
import 'package:app2/screens/QuestionPage.dart';
import 'package:app2/screens/gridView/gridViewMain.dart';

class PrizePage extends StatefulWidget {
  final String value;

  PrizePage({Key key, this.value}) : super(key: key);

  @override
  _PrizePageState createState() => new _PrizePageState();
}

class _PrizePageState extends State<PrizePage> {
  @override
  Widget build(BuildContext context) {
    int index = int.parse(widget.value)-1;
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
                ("Zatrzymałeś się na:"+ (index).toString() +"pytaniu"),
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
  String text = "Udało Ci się wygrać: ";
  switch (buff) {
    case 0:
      return "Niestety nic nie wygrałeś";
      break;
    case 1:
      return text + "500 zł";
      break;
    case 2:
      return text + "1 000 zł";
      break;
    case 3:
      return text + "2 000 zł";
      break;
    case 4:
      return text + "5 000 zł";
      break;
    case 5:
      return text + "10 000 zł";
      break;
    case 6:
      return text + "20 000 zł";
      break;
    case 7:
      return text + "40 000 zł";
      break;
    case 8:
      return text + "75 000 zł";
      break;
    case 9:
      return text + "125 000 zł";
      break;
    case 10:
      return text + "250 000 zł";
      break;
    case 11:
      return text + "500 000 zł";
      break;
    case 12:
      return text + "1 000 000 zł";
      break;
    default:
      return text + "0 000 000 zł";
      break;
  }
}