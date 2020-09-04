import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class InputWeightPage extends StatefulWidget {
  final Function() onNextClick;

  InputWeightPage({@required this.onNextClick});

  @override
  _InputWeightPageState createState() => _InputWeightPageState();
}

class _InputWeightPageState extends State<InputWeightPage> {
  double _selectedWeight = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/weight-scale.png'),
          SizedBox(height: 32.0),
          Align(
            alignment: Alignment.center,
            child: Text.rich(
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
                  TextSpan(
                    text: ' kg',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
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
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: widget.onNextClick,
              ),
            ),
          )
        ],
      ),
    );
  }
}
