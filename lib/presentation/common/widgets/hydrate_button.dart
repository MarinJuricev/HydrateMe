import 'package:flutter/material.dart';

class HydrateButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressedCallback;

  const HydrateButton({
    Key key,
    @required this.title,
    @required this.onPressedCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      child: OutlineButton(
        onPressed: onPressedCallback,
        highlightedBorderColor: Colors.white,
        borderSide: const BorderSide(
          color: Color.fromRGBO(0, 100, 235, 0.8),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
