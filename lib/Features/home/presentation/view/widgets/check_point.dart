import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:task/Core/utils/styles.dart';

// ignore: must_be_immutable
class check_point extends StatelessWidget {
  check_point({super.key, required this.check});

  String check;
  Widget build(
    BuildContext context,
  ) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff00CF79)),
          child: Center(
            child: Icon(
              FontAwesomeIcons.check,
              color: Colors.white,
              size: 10,
            ),
          ),
        ),
        SizedBox(width: 4),
        Text(
          "$check",
          style: styles
              .getCairoTextStyle12()
              .copyWith(fontSize: 11, color: Color(0xff000000)),
        )
      ],
    );
  }
}
