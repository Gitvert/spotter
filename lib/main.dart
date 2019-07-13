import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Row(
            children: [
              Text('spotter'),
              Icon(Icons.fitness_center),
            ]
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center (
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WeightWidget()));
          },
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