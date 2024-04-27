import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String result, bmi, statement;
  ResultsPage(
      {required this.result, required this.bmi, required this.statement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: kAppBarColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                  Text(
                    result,
                    style: kNormalTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kNumberTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      statement,
                      style: KStatementTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: BottomButton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
