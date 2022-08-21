import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

import '../component/resusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key , required this.bmiResult, required this.resultText, required this.textInterpretation})
      : super(key: key);

  String bmiResult;
  String resultText;
  String textInterpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                alignment: Alignment.bottomLeft,
                  child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              )),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                     textInterpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
                onPress: () {},
              ),
            ),
            Expanded(
              child: BottomButton(
                buttonChild: const Center(
                  child: Text(
                    "Re-Calculate",
                    style: kBottomButtonStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
