import 'package:flutter/material.dart';

class HydrateTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
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
      style: const TextStyle(color: Colors.white),
      onChanged: (newValue) => getCurrentTextCallback(newValue),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromRGBO(0, 100, 235, 0.8),
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
