import 'package:flutter/material.dart';
import 'package:task/Features/home/presentation/view/home_view.dart';

void main() {
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Colors.white)),
    );
  }
}
