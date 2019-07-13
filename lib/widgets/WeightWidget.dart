import 'package:flutter/material.dart';

class WeightWidget extends StatelessWidget {
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
        body: ListView.separated(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return  _getMainListChildren(context, index + 1);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 24.0,
              color: Colors.black26,
            );
          },
        )
    );
  }
}

Widget _getMainListChildren(BuildContext context, int index) {
  return Column(
      children: [
        getWeightWidget(index),
      ]
  );
}

Widget _getSetInfoWidget(int set, int reps) {
  return Container(
    padding: const EdgeInsets.only(left: 125, right: 125, top: 5, bottom: 5),
    color: Colors.blueGrey[500],
    child: Column(
      children: [
        Text(
          "Set " + set.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16
          )
        ),
        Text(
          reps.toString() + " reps",
          style: TextStyle(
            color: Colors.white
          )
        )
      ]
    )
  );
}

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
      padding: const EdgeInsets.only(top: 5, bottom: 15),
      child: Column(
        children: [
          Row(
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
          ),
          Row(
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
          color: Colors.green[400],
          textColor: Colors.white,
          child: Text(
              "COMPLETE SET"
          )
      )
    )
  );
}

Widget getWeightWidget(int set) {
  return Container(
    padding: const EdgeInsets.only(top: 20, bottom: 20),
    child: Column(
      children: [
        _getSetInfoWidget(set, 5),
        _getAdjustWidget("Weight (kg)", 250),
        _getAdjustWidget("Reps", 5),
        _getCompleteSetWidget(),
      ]
    )
  );
}