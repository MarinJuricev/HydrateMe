import 'package:flutter/material.dart';

class HydrateTextField extends StatelessWidget {
  final labelText;
  final hintText;
  final Function(String) getCurrentTextCallback;

  const HydrateTextField({
    Key key,
    @required this.labelText,
    this.hintText = '',
    this.getCurrentTextCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (newWaterIntake) {},
      style: TextStyle(color: Colors.white),
      onChanged: (newValue) => getCurrentTextCallback(newValue),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(0, 100, 235, 0.8),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
