import 'package:flutter/material.dart';

import 'FavoriteWidget.dart';

class Widgets {

  static Widget getImage() {
    return Image.asset(
      'images/lake.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover
    );
  }

  static Widget getTitleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Everts programmerings-bootcamp',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Älgarås, Sverige',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FavoriteWidget(),
        ],
      ),
    );
  }

  static Widget getButtonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  static Widget getTextSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Everts programmerings-bootcamp är fan det bästa bootcampet du kan åka på. Alla älskar det. 100% nöjda kunder och om du inte är nöjd så har du fel.',
        style :TextStyle(
          color: Colors.green[500]
        )
      )
    );
  }

  static Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                  label,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: color
                  )
              )
          )
        ]
    );
  }
}