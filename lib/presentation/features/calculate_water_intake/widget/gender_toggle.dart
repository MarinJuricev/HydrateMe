import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderToggle extends StatefulWidget {
  GenderToggle({Key key}) : super(key: key);

  @override
  _GenderToggleState createState() => _GenderToggleState();
}

class _GenderToggleState extends State<GenderToggle> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedColor: Colors.white,
      splashColor: Colors.white,
      borderColor: Colors.white,
      fillColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      selectedBorderColor: Colors.white,
      borderWidth: 2.0,
      children: <Widget>[
        SvgPicture.asset(
          'assets/images/male.svg',
          height: 24,
          width: 24,
          
        ),
        SvgPicture.asset(
          'assets/images/female.svg',
          height: 24,
          width: 24,
        ),
      ],
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
    );
  }
}
