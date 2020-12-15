import 'package:flutter/material.dart';

class HydrateLoadingIndicator extends StatelessWidget {
  final Function onStartCallback;

  const HydrateLoadingIndicator({
    Key key,
    this.onStartCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    onStartCallback();

    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
