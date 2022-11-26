import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;
  const LeftShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          "شاخص مثبت",
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}
