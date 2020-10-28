import 'package:flutter/material.dart';

class HydrateListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const HydrateListTile({
    Key key,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.purple,
      child: InkWell(
        onTap: () => {},
        child: Container(
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(color: Colors.blue),
            ),
            tileColor: Colors.white,
            subtitle: Text(
              subtitle,
            ),
          ),
        ),
      ),
    );
  }
}
