import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.weightRange,
      required this.getResult,
      required this.interpret});

  final String weightRange;
  final String getResult;
  final String interpret;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
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
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    weightRange,
                    style: kWeightTextStyle,
                  ),
                  Text(
                    getResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    interpret,
                    textAlign: TextAlign.center,
                    style: kDescriptionText,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kBottomTextStyle,
                ),
              ),
            ),
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(bottom: 10),
            height: kBottomContHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
