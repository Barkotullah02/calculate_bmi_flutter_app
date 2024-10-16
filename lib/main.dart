import 'package:flutter/material.dart';
import 'package:calculate_bmi/screens/input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(100, 22, 2, 55),
      ),
      initialRoute: '/',
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
