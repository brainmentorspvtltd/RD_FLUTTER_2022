import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BIMApp());
}

class BIMApp extends StatelessWidget {
  const BIMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BIM App",
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
// WidgetsFlutterBinding.ensureInitialized();
// await SystemChrome.setPreferredOrientations([
// DeviceOrientation.portraitUp,
// DeviceOrientation.portraitDown,
// ]);
//ListView.builder()
//GridView.builder()
//ScrollController()
//AnimationController()
//PageViewController(),
//bottomNavigationBar()
//FutureBuilder()
//StreamBuilder()
//ChangeNotifier()
//ValueListener()
//Provider()
//Bloc(),
//dialog(),
//bottomSheet()
//PopUpButton()
//Form
//TextField()
//TextFormField()
//CheckBox(),
//RadioButton(),
//Switch()
//DropDownButton(),

//GlobalKey(),
//Navigation
//
//
//MusicApp()
//
