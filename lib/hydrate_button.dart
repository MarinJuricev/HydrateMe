import 'package:flutter/material.dart';

class HydrateButton extends StatelessWidget {
  final String title;

  const HydrateButton({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Text(title),
    );
  }
}
