import 'package:flutter/material.dart';

import '../../../../domain/model/weight_type.dart';

class KgLbsSelection extends StatefulWidget {
  final List<bool> isKgSelected;
  final Function(WeightType value) onWeightTypeSwitchCallback;

  const KgLbsSelection({
    Key key,
    @required this.isKgSelected,
    @required this.onWeightTypeSwitchCallback,
  }) : super(key: key);

  @override
  _KgLbsSelectionState createState() => _KgLbsSelectionState();
}

class _KgLbsSelectionState extends State<KgLbsSelection> {
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
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
              buttonIndex < widget.isKgSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              widget.isKgSelected[buttonIndex] = true;
            } else {
              widget.isKgSelected[buttonIndex] = false;
            }

            if (index == 0) {
              widget.onWeightTypeSwitchCallback(WeightType.kg);
            } else {
              widget.onWeightTypeSwitchCallback(WeightType.lbs);
            }
          }
        });
      },
      isSelected: widget.isKgSelected,
      children: const [
        Text('KG'),
        Text('LBS'),
      ],
    );
  }
}
