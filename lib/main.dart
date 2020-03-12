import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
              onPressed: () {
                setState(() {
                  leftDiceNumber = 6;
                });
              },
            ),
          ),
          SizedBox(
            height: 200.0,
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
              onPressed: () {
                setState(() {
                  rightDiceNumber = 4;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
