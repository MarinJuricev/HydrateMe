import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../../core/common/constants/constants.dart';
import '../../../../domain/model/weight_type.dart';

class WeightSelection extends StatefulWidget {
  final Function(WeightType value) onWeightTypeSwitchCallback;
  final Function(int value) onWeightChangeCallback;

  const WeightSelection({
    Key key,
    @required this.onWeightTypeSwitchCallback,
    @required this.onWeightChangeCallback,
  }) : super(key: key);

  @override
  _WeightSelectionState createState() => _WeightSelectionState();
}

class _WeightSelectionState extends State<WeightSelection> {
  final List<bool> _isKgSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: WeightNumberPicker(
            currentWeight: initialWeight,
            isWeightTypeKg: _isKgSelected[0],
            onWeightChangeCallback: (newWeight) =>
                widget.onWeightChangeCallback(newWeight),
          ),
        ),
        Expanded(
          child: Align(
            child: ToggleButtons(
              selectedColor: Colors.blue,
              splashColor: Colors.white,
              borderColor: Colors.white,
              fillColor: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              selectedBorderColor: Colors.white,
              borderWidth: 2.0,
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0;
                      buttonIndex < _isKgSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      _isKgSelected[buttonIndex] = true;
                    } else {
                      _isKgSelected[buttonIndex] = false;
                    }

                    if (index == 0) {
                      widget.onWeightTypeSwitchCallback(WeightType.kg);
                    } else {
                      widget.onWeightTypeSwitchCallback(WeightType.lbs);
                    }
                  }
                });
              },
              isSelected: _isKgSelected,
              children: const [
                Text('KG'),
                Text('LBS'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WeightNumberPicker extends StatelessWidget {
  const WeightNumberPicker({
    Key key,
    this.weightPickerColor,
    @required this.currentWeight,
    @required this.isWeightTypeKg,
    @required this.onWeightChangeCallback,
  }) : super(key: key);

  final bool isWeightTypeKg;
  final Function(int value) onWeightChangeCallback;
  final int currentWeight;

  final Color weightPickerColor;
  final int _maximumWeight = 200;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        accentColor: Colors.white,
        textTheme: TextTheme(
            bodyText2: TextStyle(color: weightPickerColor ?? Colors.white)),
      ),
      child: NumberPicker.integer(
        initialValue: isWeightTypeKg ? currentWeight : currentWeight * 2,
        minValue: 0,
        maxValue: isWeightTypeKg ? _maximumWeight : _maximumWeight * 2,
        infiniteLoop: true,
        highlightSelectedValue: false,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                width: 1.5, color: weightPickerColor ?? Colors.white),
            bottom: BorderSide(
              width: 1.5,
              color: weightPickerColor ?? Colors.white,
            ),
          ),
        ),
        onChanged: (num newValue) => onWeightChangeCallback(newValue as int),
      ),
    );
  }
}
