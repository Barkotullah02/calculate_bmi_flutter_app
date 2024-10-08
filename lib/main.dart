import 'package:flutter/material.dart';
import 'package:calculate_bmi/input_page.dart';

void main() {
  runApp( BmiCalculator());
}

class BmiCalculator  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(100, 22, 2, 55),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}





