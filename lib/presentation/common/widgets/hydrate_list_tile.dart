import 'package:flutter/material.dart';

class HydrateListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onClick;

  const HydrateListTile({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        onTap: onClick,
        title: Text(
          title,
          style: const TextStyle(color: Colors.blue),
        ),
        subtitle: Text(
          subtitle,
        ),
      ),
    );
  }
}
