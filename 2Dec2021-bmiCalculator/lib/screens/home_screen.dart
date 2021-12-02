import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bmi_calculator_brain.dart';
import '../constants.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 180;
  int weight = 62;
  int age = 20;
  Gender selectedGender = Gender.female;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? Colors.green
                      : kInactiveCardColour,
                  child: Column(
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.male,
                        size: 60,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Male",
                        style: kTextFontStyle,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ReusableCard(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? Colors.green
                      : kInactiveCardColour,
                  child: Column(
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.female,
                        size: 60,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Female",
                        style: kTextFontStyle,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ReusableCard(
              color: kInactiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: kTextFontStyle,
                  ),
                  Text.rich(
                    TextSpan(
                      text: "$height",
                      style: kBigFontStyle,
                      children: const [
                        TextSpan(text: "cm", style: kTextFontStyle),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.white70,
                      thumbColor: Colors.red,
                      overlayColor: Colors.green,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                    color: kInactiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kTextFontStyle,
                        ),
                        Text(
                          "$weight",
                          style: kBigFontStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            RoundButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ReusableCard(
                    color: kInactiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: kTextFontStyle,
                        ),
                        Text(
                          "$age",
                          style: kBigFontStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () => setState(() => age--),
                            ),
                            RoundButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () => setState(() => age++),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
          const SizedBox(height: 15),
          CalculateButton(
            onPressed: () {
              final bmiObj = BMICalculatorBain(weight, height);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            result: bmiObj.calculateBMI(),
                            yourBmi: bmiObj.getResult(),
                            interpretation: bmiObj.getInterpretation(),
                          )));
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => ResultScreen()));
            },
            text: "Calculate",
          ),
        ],
      ),
    );
  }
}

///Scroll controller  demo
// body: GridView.builder(
// controller: _scrollController,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// ),
// itemCount: 100,
// itemBuilder: (context, index) {
// return MyProductCard();
// },
// ),
// bottomNavigationBar: AnimatedContainer(
// duration: const Duration(seconds: 1),
// color: Colors.red,
// height: _isVisible ? 100 : 0,
// ),
