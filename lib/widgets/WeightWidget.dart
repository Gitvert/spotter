import 'package:flutter/material.dart';

Widget _getIconWidget(IconData icon) {
  return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: (
          Icon(icon, color: Colors.white)
      )
  );
}

Widget _getAdjustWidget(String text, int number) {
  return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getIconWidget(Icons.remove_circle_outline),
          Container(
            child: (
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                            text,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            )
                        )
                      ],
                    ),
                    Row(
                        children: [
                          Text(
                              number.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40
                              )
                          )
                        ]
                    ),
                    Divider(
                        height: 45,
                        color: Colors.red
                    )
                  ],
                )
            ),
          ),
          _getIconWidget(Icons.add_circle_outline)
        ],
      )
  );
}

Widget getWeightWidget() {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        _getAdjustWidget("Weight(kg)", 225),
        _getAdjustWidget("Reps", 10),
      ]
    )
  );
}