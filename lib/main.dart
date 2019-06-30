import 'package:flutter/material.dart';

import 'Widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Widgets.getImage(),
            Widgets.getTitleSection(),
            Widgets.getButtonSection(context),
            Widgets.getTextSection(),
            Widgets.getBottomButtons(),
          ],
        ),
      ),
    );
  }
}