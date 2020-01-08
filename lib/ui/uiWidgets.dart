import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class uiWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      child: Column(
        children: <Widget>[
          Text("Flight", textDirection: TextDirection.ltr),
          RaisedButton(
            child: Text("Go to Home"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
