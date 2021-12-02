import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.yourBmi,
    required this.result,
    required this.interpretation,
  }) : super(key: key);
  final String yourBmi;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Result"),
      // ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ReusableCard(
                  color: kActiveCardColour,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        yourBmi,
                        style: kTextFontStyle,
                      ),
                      Text(
                        result,
                        style: kBigFontStyle,
                      ),
                      Text(
                        interpretation,
                        style: kTextFontStyle,

                      ),
                    ],
                  ),
                ),
              ),
            ),
            CalculateButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: "Re-Calculate")
          ],
        ),
      ),
    );
  }
}
