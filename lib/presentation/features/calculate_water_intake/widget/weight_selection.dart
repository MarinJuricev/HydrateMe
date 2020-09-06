import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../../core/common/constants/constants.dart';
import '../../../common/model/weight_type.dart';

class WeightSelection extends StatefulWidget {
  final Function(WeightType value) onWeightTypeSwitchCallback;
  final Function(int value) onWeightChangeCallback;

  WeightSelection({
    Key key,
    @required this.onWeightTypeSwitchCallback,
    @required this.onWeightChangeCallback,
  }) : super(key: key);

  @override
  _WeightSelectionState createState() => _WeightSelectionState();
}

class _WeightSelectionState extends State<WeightSelection> {
  final List<bool> _isSelected = [true, false];
  final _currentWeight = INITIAL_WEIGHT;
  final _maximumWeight = 200;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 1,
          child: Theme(
            data: ThemeData(
              accentColor: Colors.white,
              textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
            ),
            child: NumberPicker.integer(
              initialValue:
                  _isSelected[0] ? _currentWeight : _currentWeight * 2,
              minValue: 0,
              maxValue: _isSelected[0] ? _maximumWeight : _maximumWeight * 2,
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
              onChanged: (newValue) => widget.onWeightChangeCallback(newValue),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: ToggleButtons(
              selectedColor: Colors.blue,
              splashColor: Colors.white,
              borderColor: Colors.white,
              fillColor: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              selectedBorderColor: Colors.white,
              borderWidth: 2.0,
              children: <Widget>[
                Text('KG'),
                Text('LBS'),
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
                      widget.onWeightTypeSwitchCallback(WeightType.kg);
                    } else {
                      widget.onWeightTypeSwitchCallback(WeightType.lbs);
                    }
                  }
                });
              },
              isSelected: _isSelected,
            ),
          ),
        ),
      ],
    );
  }
}
