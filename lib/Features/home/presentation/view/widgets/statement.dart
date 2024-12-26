import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';

// ignore: must_be_immutable
class Statement extends StatelessWidget {
  Statement({super.key, required this.text});

  String? text;
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xffED6E01)),
      child: Center(
        child: Text('$text', style: styles.getCairoTextStyle12()),
      ),
    );
  }
}
