import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class ActivitySelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        accentColor: Colors.white,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      child: NumberPicker.integer(
        initialValue: 0,
        minValue: 0,
        maxValue: 1440,
        infiniteLoop: true,
        highlightSelectedValue: false,
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(width: 1.5, color: Colors.white),
          bottom: BorderSide(
            width: 1.5,
            color: Colors.white,
          ),
        )),
        onChanged: (newValue) {},
      ),
    );
  }
}
