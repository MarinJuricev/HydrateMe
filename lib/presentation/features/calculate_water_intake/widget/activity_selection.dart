import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:flutter/material.dart';

class ActivitySelection extends StatefulWidget {
  final Function(ActivityLevel value) onActivityChangeCallback;

  const ActivitySelection({
    Key key,
    @required this.onActivityChangeCallback,
  }) : super(key: key);

  @override
  _ActivitySelectionState createState() => _ActivitySelectionState();
}

class _ActivitySelectionState extends State<ActivitySelection> {
  final List<bool> _isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedColor: Colors.blue,
      splashColor: Colors.white,
      borderColor: Colors.white,
      fillColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      selectedBorderColor: Colors.white,
      borderWidth: 2.0,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 50,
            child: Text(
              'LOW',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 50,
            child: Text(
              'ACTIVE',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 50,
            child: Text(
              'VERY ACTIVE',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < _isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              _isSelected[buttonIndex] = true;
            } else {
              _isSelected[buttonIndex] = false;
            }

            if (index == 0) {
              widget.onActivityChangeCallback(ActivityLevel.low);
            } else if (index == 1) {
              widget.onActivityChangeCallback(ActivityLevel.active);
            } else {
              widget.onActivityChangeCallback(ActivityLevel.veryActive);
            }
          }
        });
      },
      isSelected: _isSelected,
    );
  }
}
