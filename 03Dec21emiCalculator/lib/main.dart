import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const EMIApp());
}

class EMIApp extends StatelessWidget {
  const EMIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EMI APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double principalAmount = 0;
  double rateOfInterest = 0;
  late double tenure;
  String emi = "";

  @override
  void initState() {
    tenure = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: const Text("EMI Calculator"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onSubmitted: (value) {
                principalAmount = double.parse(value);
              },
              //maxLines: 5,
              onChanged: (value) {
                print(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // errorText: principalAmount <= 0 ? "required" : "",
                isDense: true,
                prefixIcon: FaIcon(FontAwesomeIcons.camera),
                labelText: "Principal Amount",
                hintText: "Amount",
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                rateOfInterest = double.parse(value);
              },
              decoration: InputDecoration(
                prefixIcon: FaIcon(FontAwesomeIcons.camera),
                labelText: "Rate of Interest",
                hintText: "rate of interest",
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                tenure = double.parse(value);
              },
              decoration: InputDecoration(
                prefixIcon: FaIcon(FontAwesomeIcons.camera),
                labelText: "Tenure",
                hintText: "duration in years",
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                calculateEMI();
              },
              child: Text("Calculate"),
            ),
            SizedBox(height: 30),
            Text(
              emi,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  calculateEMI() {
    double _installment = 0;
    final _principle = principalAmount;
    final _rateOfInterest = rateOfInterest / 12 / 100;
    final _tenure = tenure * 12;
    _installment = (_principle *
        _rateOfInterest *
        math.pow((1 + _rateOfInterest), _tenure) /
        (math.pow((1 + _rateOfInterest), _tenure) - 1));

    setState(() => emi = _installment.toStringAsFixed(2));
  }
}
