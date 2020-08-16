import 'package:flutter/material.dart';

class HydrateButton extends StatelessWidget {
  final String title;

  const HydrateButton({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width / 2.5,
      child: OutlineButton(
        onPressed: () {},
        highlightedBorderColor: Colors.white,
        borderSide: const BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
