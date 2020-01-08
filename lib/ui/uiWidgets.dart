import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text('UI Scanner'),
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Flight",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
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
                        child: Text("Go to Home"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              FlightImageAsset(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
