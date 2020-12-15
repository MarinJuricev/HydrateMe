import 'dart:ui';

import 'package:flutter/material.dart';

class TimeSelection extends StatefulWidget {
  final String title;
  final TimeOfDay timeOfDay;
  final Function(TimeOfDay value) onTimeSelectedCallback;
  final Color optionalTextColor;
  final Color optionalBorderColor;

  const TimeSelection({
    Key key,
    @required this.title,
    @required this.timeOfDay,
    @required this.onTimeSelectedCallback,
    this.optionalBorderColor,
    this.optionalTextColor,
  }) : super(key: key);

  @override
  _TimeSelectionState createState() => _TimeSelectionState();
}

class _TimeSelectionState extends State<TimeSelection> {
  TimeOfDay timeToRender;

  @override
  void initState() {
    super.initState();
    timeToRender = widget.timeOfDay;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlineButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(color: Colors.red)),
        borderSide: BorderSide(
          color: widget.optionalBorderColor ?? Colors.white,
          width: 1.5,
        ),
        onPressed: _pickTime,
        child: Text(
          '${widget.title}\n Current: ${timeToRender.format(context)}',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: widget.optionalTextColor ?? Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  void _pickTime() async {
    final TimeOfDay newWakeUpTime = await showTimePicker(
      context: context,
      initialTime: widget.timeOfDay,
    );
    if (newWakeUpTime != null) {
      widget.onTimeSelectedCallback(newWakeUpTime);
      setState(() {
        timeToRender = newWakeUpTime;
      });
    }
  }
}
