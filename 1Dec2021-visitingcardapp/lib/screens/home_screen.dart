import 'package:flutter/material.dart';
import 'package:visitingcard/widgets/custom_card.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 60,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
              SizedBox(height: 10),
              Text(
                "Brain Mentors",
                style: kHeadingStyle,
              ),
              Text(
                "Flutter Development",
                style: kSubheadingStyle,
              ),
              SizedBox(height: 15),
              CustomCard(iconData: Icons.phone, text: "332433434"),
              SizedBox(height: 15),
              CustomCard(iconData: Icons.email, text: "email@gmail.com"),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildCard({
  //   required IconData iconData,
  //   required String text,
  // }) {
  //   return Container(
  //     height: 30,
  //     width: 300,
  //     color: Colors.white,
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: [
  //           Icon(iconData),
  //           const SizedBox(width: 10),
  //           Text(
  //             text,
  //             style: TextStyle(fontSize: 17),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
