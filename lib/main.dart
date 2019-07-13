import 'package:flutter/material.dart';
import 'package:spotter/widgets/MainAppBarWidget.dart';

import 'widgets/WeightWidget.dart';

void main() => runApp(MaterialApp(
    title: 'spotter',
    home: HomePage()
));

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: mainAppBar(),
      body: Center (
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WeightWidget()));
          },
          color: Colors.white,
          child: Text('LOG SET')
        )
      )
    );
  }
}

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'spotter',
      home: WeightWidget()
    );
  }
}*/