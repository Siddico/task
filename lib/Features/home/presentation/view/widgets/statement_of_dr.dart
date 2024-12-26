import 'package:flutter/material.dart';
import 'package:task/Features/home/presentation/view/widgets/statement.dart';

class StatementOfDr extends StatelessWidget {
  const StatementOfDr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff006BA9)),
              child: Icon(
                Icons.archive,
                color: Colors.white,
              ),
            ),
            Statement(text: 'كشف'),
            Statement(text: "إعادة"),
            Statement(text: "إستشارة")
          ],
        ),
      ),
    );
  }
}
