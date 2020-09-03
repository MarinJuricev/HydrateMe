import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class InputWeightPage extends StatefulWidget {
  @override
  _InputWeightPageState createState() =>
      _InputWeightPageState();
}

class _InputWeightPageState extends State<InputWeightPage> {
  double _selectedWeight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/weight-scale.png'),
            SizedBox(height: 32.0),
            Text.rich(
              TextSpan(
                text: 'Your Weight: ', // default text style
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: _selectedWeight.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.0),
            FlutterSlider(
              values: [_selectedWeight],
              max: 400,
              min: 0,
              onDragging: (handlerIndex, selectedWeight, _) {
                _selectedWeight = selectedWeight;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
