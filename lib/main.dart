import 'package:flutter/material.dart';
import 'package:flutter_app/ui/firstHome.dart';

void main() => runApp(new MyFunction());

class MyFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Book Scanner',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Book Scanner'),
          ),
          body: HomeFirstScreen(),
        ));
  }
}
