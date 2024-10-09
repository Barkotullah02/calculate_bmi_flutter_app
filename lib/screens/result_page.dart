import 'package:flutter/material.dart';
import 'package:calculate_bmi/constants.dart';
import '../components/common_container.dart';

String rBmi = "";


class ResultPage extends StatelessWidget {
  ResultPage({super.key, required this.bmi, required this.resultTxt, required this.interpret});
  //
  final String bmi;
  final String resultTxt;
  final String interpret;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            child: const Text(
              "YOUR RESULT",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: CommonContainer(
                color: kcardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                          resultTxt,
                          style: kresultTxtStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                          bmi,
                        style: kbmiTxtStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Text(
                          interpret,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              color: kbtmBarColor,
              margin: const EdgeInsets.only(top: 15),
              width: double.infinity,
              height: kbtmContainerHeight,
              child: const Center(
                child: Text(
                  "RE-CALCULATE",
                  style: klargeBtntxtStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
