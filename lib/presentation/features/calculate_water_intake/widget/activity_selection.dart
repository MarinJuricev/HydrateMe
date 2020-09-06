import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../../core/common/constants/constants.dart';

class ActivitySelection extends StatelessWidget {
  final Function(int value) onActivityChangeCallback;

  const ActivitySelection({
    Key key,
    @required this.onActivityChangeCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        accentColor: Colors.white,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      child: NumberPicker.integer(
        initialValue: INITIAL_DAILY_ACTIVITY,
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
        onChanged: (newActivity) => onActivityChangeCallback(newActivity),
      ),
    );
  }
}
