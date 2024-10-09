import 'package:calculate_bmi/constants.dart';
import 'package:flutter/material.dart';

import '../components/common_container.dart';

class ResultPage extends StatelessWidget {
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
            padding: EdgeInsets.all(20),
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                          "RESULT",
                          style: kresultTxtStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                          "18.3",
                        style: kbmiTxtStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                          "data data data data data data data data data data data data data data data data data data data data data ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
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
