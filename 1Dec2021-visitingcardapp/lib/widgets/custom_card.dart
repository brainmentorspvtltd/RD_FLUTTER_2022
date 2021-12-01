import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.iconData, required this.text})
      : super(key: key);

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 300,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(iconData),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
