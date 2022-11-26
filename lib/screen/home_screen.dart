import 'package:bmi_app/Widgets/background_shape_left.dart';
import 'package:bmi_app/Widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  double resultBMI = 0;
  String resultText = '';
  double weightGood = 90;
  double weightBad = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "تو چنده bmi",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: weightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "وزن",
                      hintStyle: TextStyle(
                        color: rightshape.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: heightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "قد",
                      hintStyle: TextStyle(
                        color: rightshape.withOpacity(0.5),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(weightController.text);
                final height = double.parse(heightController.text);

                setState(() {
                  resultBMI = weight / (height * height);
                  if (resultBMI > 25) {
                    resultText = 'شما اضافه وزن دارید';
                    weightBad = 270;
                    weightGood = 50;
                  } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                    resultText = 'وزن شما نرمال است';
                    weightBad = 50;
                    weightGood = 270;
                  } else if (resultBMI < 18.5) {
                    resultText = 'شما کمبود وزن دارید';
                    weightBad = 270;
                    weightGood = 50;
                  } else
                    () {
                      resultText = 'شما کمبود وزن دارید';
                    };
                });
              },
              child: Text(
                "محاسبه کن",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '$resultText',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            SizedBox(
              height: 80.0,
            ),
            RightShape(
              width: weightBad,
            ),
            SizedBox(
              height: 20.0,
            ),
            LeftShape(
              width: weightGood,
            )
          ],
        ),
      ),
    );
  }
}
