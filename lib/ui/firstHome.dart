import 'dart:math';
import 'uiWidgets.dart' as UIWid;
import 'package:flutter/material.dart';

class HomeFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lightBlueAccent,
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                generateLuckyNumber(),
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
            ),
            RaisedButton(
              child: Text('Open UI Widget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UIWid.uiWidgets()),
                );
              },
            ),
          ],
        ));
  }
}

String generateLuckyNumber() {
  var random = Random();
  int luckyNumber = random.nextInt(10);
  return " Your Lucky Number is $luckyNumber";
}
