import 'package:bmi_app/Widgets/background_shape_left.dart';
import 'package:bmi_app/Widgets/background_shape_right.dart';
import 'package:bmi_app/constants/constants.dart';
import 'package:bmi_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'dana'),
        debugShowCheckedModeBanner: false,
        home: homeScreen());
  }
}
