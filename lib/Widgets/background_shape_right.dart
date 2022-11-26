import 'package:bmi_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double width;
  const RightShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "شاخص منفی",
          style: TextStyle(color: Colors.red),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            color: rightshape,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
            ),
          ),
        ),
      ],
    );
  }
}
