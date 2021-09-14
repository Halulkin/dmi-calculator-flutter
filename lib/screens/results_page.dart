import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResults,
      required this.bmiText,
      required this.interpretation});

  late final String bmiResults;
  late final String bmiText;
  late final String interpretation;

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
                      Text(bmiText, style: kResultTextStyle),
                      Text(bmiResults.toString(), style: kBMITextStyle),
                      Text(interpretation,
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
