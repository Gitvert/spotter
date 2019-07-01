import 'package:flutter/material.dart';

Widget _getIconWidget(IconData icon) {
  return Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: (
          Icon(icon, color: Colors.white)
      )
  );
}

Widget _getAdjustWidget(String text, int number) {
  return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  )
                ),
              ]
            )
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _getIconWidget(Icons.remove_circle_outline),
                Text(
                  number.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40
                  )
                ),
                _getIconWidget(Icons.add_circle_outline)
              ]
            )
          )
        ],
      )
  );
}

Widget _getCompleteSetWidget() {
  return Container(
    child: ButtonTheme(
      minWidth: 250,
      child: FlatButton(
          onPressed: () {},
          color: Colors.green[600],
          textColor: Colors.white,
          child: Text(
              "COMPLETE SET"
          )
      )
    )
  );
}

Widget getWeightWidget() {
  return Container(
    padding: const EdgeInsets.only(top: 20, bottom: 20),
    child: Column(
      children: [
        _getAdjustWidget("Weight(kg)", 225),
        _getAdjustWidget("Reps", 10),
        _getCompleteSetWidget(),
      ]
    )
  );
}