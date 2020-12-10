import 'package:app2/screens/QuestionPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,     
      title: 'Milionerzy',
      theme: ThemeData(
          primaryColor: Colors.deepPurple, textSelectionColor: Colors.white),
      home: QuestionPage(),
    );
  }
}
