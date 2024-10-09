import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculate_bmi/components/Reusable_icons.dart';
import 'package:calculate_bmi/components/common_container.dart';
import 'package:calculate_bmi/constants.dart';

enum Gender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  int height = 180;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 38, 2, 92),
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: CommonContainer(
                    color: selectedGender == Gender.male
                        ? kcardColor
                        : kinactiveCardColor,
                    child: const ReusableIcons(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: CommonContainer(
                  color: selectedGender == Gender.female
                      ? kcardColor
                      : kinactiveCardColor,
                  child: const ReusableIcons(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ),
          ]),
        ),
        CommonContainer(
          color: kcardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "HEIGHT",
                style: klabelTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    height.toString(),
                    style: knumberStyle,
                  ),
                  const Text(
                    "cm",
                    style: klabelTextStyle,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTickMarkColor: Colors.white,
                  thumbColor: const Color(0xFFEB1555),
                  overlayColor: const Color(0x29EB1555),
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 15,
                  ),
                  overlayShape: const RoundSliderOverlayShape(
                    overlayRadius: 30,
                  ),
                ),
                child: Slider(
                  inactiveColor: const Color(0xFF8D8E98),
                  value: height.toDouble(),
                  max: 220.0,
                  min: 120.0,
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(children: [
            CommonContainer(
              color: kcardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "WEIGHT",
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        weight.toString(),
                        style: knumberStyle,
                      ),
                      const Text(
                        "kg",
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        backgroundColor: const Color(0xFF4C4F5E),
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                        child: const Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      FloatingActionButton(
                        backgroundColor: const Color(0xFF4C4F5E),
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },
                        child: const Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CommonContainer(
              color: kcardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "AGE",
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        age.toString(),
                        style: knumberStyle,
                      ),
                      const Text(
                        "years",
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        backgroundColor: const Color(0xFF4C4F5E),
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                        child: const Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      FloatingActionButton(
                        backgroundColor: const Color(0xFF4C4F5E),
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                        child: const Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/result');
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 20.0),
            color: kbtmBarColor,
            margin: const EdgeInsets.only(top: 15),
            width: double.infinity,
            height: kbtmContainerHeight,
            child: const Center(
              child: Text(
                "CALCULATE",
                style: klargeBtntxtStyle,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
