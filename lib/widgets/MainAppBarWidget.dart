import 'package:flutter/material.dart';

Widget mainAppBar() {
  return AppBar(
    title: Row(
        children: [
          Text('spotter'),
          Icon(Icons.fitness_center),
        ]
    ),
    backgroundColor: Colors.deepOrange,
  );
}