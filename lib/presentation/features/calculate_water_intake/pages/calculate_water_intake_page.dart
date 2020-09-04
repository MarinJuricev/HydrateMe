import 'package:flutter/material.dart';

import 'input_weight_page.dart';

class CalculateWaterIntakePage extends StatefulWidget {
  @override
  _CalculateWaterIntakePageState createState() =>
      _CalculateWaterIntakePageState();
}

class _CalculateWaterIntakePageState extends State<CalculateWaterIntakePage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        children: [
          InputWeightPage(onNextClick: onNextClick),
          InputWeightPage(onNextClick: onNextClick),
        ],
      ),
    );
  }

  void onNextClick(){
    _controller.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeIn);
  }

  void onPreviousClick(){
    _controller.previousPage(duration: Duration(milliseconds: 250), curve: Curves.easeIn);
  }
}
