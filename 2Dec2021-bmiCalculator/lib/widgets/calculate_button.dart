import 'package:flutter/material.dart';

import '../constants.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: kBottomContainerHeight,
        color: kBottomContainerColour,
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          "$text",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
