import 'package:flutter/material.dart';

import '../widget/activity_selection.dart';
import '../widget/gender_toggle.dart';
import '../widget/hydrate_text_with_icon.dart';
import '../widget/weight_selection.dart';

class CalculateWaterIntakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 16.0,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: const Text(
                'ABOUT ME',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                children: [
                  HydrateTextWithIcon(
                    assetIconPath: 'assets/images/gender.svg',
                    text: 'Gender',
                  ),
                  const SizedBox(height: 8.0),
                  GenderToggle(),
                  const SizedBox(height: 8.0),
                  HydrateTextWithIcon(
                    assetIconPath: 'assets/images/weight.svg',
                    text: 'Weight',
                  ),
                  const SizedBox(height: 8.0),
                  WeightSelection(),
                  const SizedBox(height: 8.0),
                  HydrateTextWithIcon(
                    assetIconPath: 'assets/images/activity.svg',
                    text: 'Activity in minutes',
                  ),
                  ActivitySelection(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: RaisedButton(
                child: const Text('Generate Plan'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                onPressed: () {},
                color: Colors.lightBlue,
                textColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
