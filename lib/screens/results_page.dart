import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

class Screen1 extends StatelessWidget {
  // Map<String, int> datas = ['NORMAL', 10];

  final String diagnose = 'NORMAL';
  final double result = 0;
  final String description =
      "Good luck luck luck luck luck luck luck luck luck";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(diagnose, style: kResultTextStyle),
                      Text(result.toString(), style: kBMITextStyle),
                      Text(description,
                          style: kResultDescriptionTextStyle,
                          textAlign: TextAlign.center),
                    ],
                  )),
            ),
            BottomButton(
                title: 'RE-CALCULATE',
                onPress: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
