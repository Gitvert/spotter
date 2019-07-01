import 'package:flutter/material.dart';

import 'widgets/WeightWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'spotter',
      home: Scaffold(
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
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return  _getMainListChildren(context, 0);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 24.0,
              color: Colors.black26,
            );
          },
        )
      ),
    );
  }

  Widget _getMainListChildren(BuildContext context, int index) {
    return Column(
      children: [
        getWeightWidget(),
      ]
    );
  }
}