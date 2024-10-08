import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculate_bmi/Reusable_icons.dart';
import 'package:calculate_bmi/common_container.dart';


const btmContainerHeight = 80.0;
const btmBarColor = Color(0xFFEB1555);
const cardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(Gender selectedGender){
    if(selectedGender == Gender.male){
      maleCardColor = cardColor;
      femaleCardColor = inactiveCardColor;
    }
    if(selectedGender == Gender.female){
      femaleCardColor = cardColor;
      maleCardColor = inactiveCardColor;
    }
  }
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
      body: Column(
          children: [
            Expanded(
              child: Row(
                  children: [
                    Expanded(
                      child: Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              updateColor(Gender.male);
                            });
                          },
                          child: CommonContainer(
                            color: maleCardColor,
                            child: ReusableIcons(
                                icon: FontAwesomeIcons.mars,
                                label: "MALE",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            updateColor(Gender.female);
                          });
                        },
                        child: CommonContainer(
                          color: femaleCardColor,
                          child: ReusableIcons(
                              icon: FontAwesomeIcons.venus,
                              label: 'FEMALE',
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            CommonContainer(
              color: cardColor,
              child: Text("card3"),
            ),
            Expanded(
              child: Row(
                  children: [
                    CommonContainer(
                      color: cardColor,
                      child: Text("card4"),
                    ),
                    CommonContainer(
                      color: cardColor,
                      child: Text("card5"),
                    ),
                  ]
              ),
            ),
            Container(
              color: btmBarColor,
              margin: const EdgeInsets.only(top: 15),
              width: double.infinity,
              height: btmContainerHeight,
            ),
          ]
      ),
    );
  }
}



