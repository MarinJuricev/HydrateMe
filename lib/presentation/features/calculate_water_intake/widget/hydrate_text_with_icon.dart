import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HydrateTextWithIcon extends StatelessWidget {
  final String text;
  final String assetIconPath;

  const HydrateTextWithIcon({
    Key key,
    @required this.text,
    @required this.assetIconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            assetIconPath,
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 8.0),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
