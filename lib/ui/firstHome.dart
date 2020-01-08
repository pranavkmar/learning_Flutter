import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'uiWidgets.dart' as UIWid;

class HomeFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          generateLuckyNumber(),
                          textDirection: TextDirection.ltr,
                          style: TextStyle(color: Colors.white, fontSize: 36.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Open UI Widget'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UIWid.UiWidgets()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

String generateLuckyNumber() {
  var random = Random();
  int luckyNumber = random.nextInt(10);
  return "Your Lucky Number is $luckyNumber";
}
