import 'package:bmi_calculator/components/BMI_Brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusedCards.dart';
import '../components/TopContainerData.dart';
import '../components/constants.dart';
import '../components/containerData.dart';
import '../components/Round_Button.dart';
import '../components/BottomButton.dart';
import 'result_Page.dart';

enum EnumGender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  EnumGender selectedGender;
  int height = 180;
  int weight = 70;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusedCard(
                          onPressed: () {
                            setState(() {
                              selectedGender = EnumGender.male;
                            });
                          },
                          colour: selectedGender == EnumGender.male
                              ? kActiveCardColor
                              : kInActiveCardColor,
                          child: TopContainerData(
                            text: "MALE",
                            containerIcon: FontAwesomeIcons.male,
                          ))),
                  Expanded(
                      child: ReusedCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = EnumGender.female;
                      });
                    },
                    colour: selectedGender == EnumGender.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    child: TopContainerData(
                        text: "FEMALE", containerIcon: FontAwesomeIcons.female),
                  ))
                ],
              ),
            ),
            Expanded(
                child: ReusedCard(
              colour: kActiveCardColor,
              child: ContainerData(
                topString: "HEIGHT",
                bottomDataOne: height.toString(),
                bottomDataSecond: "cm",
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15.0,
                    ),
                  ),
                  child: Slider(
                    min: 120,
                    max: 220,
                    value: height.toDouble(),
                    inactiveColor: Color(0xFFFFFFFF),
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                ),
              ),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusedCard(
                          colour: kActiveCardColor,
                          child: ContainerData(
                            topString: "WEIGHT",
                            bottomDataOne: weight.toString(),
                            bottomDataSecond: "",
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundButton(
                                  icons: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                RoundButton(
                                  icons: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ))),
                  Expanded(
                    child: ReusedCard(
                      colour: kActiveCardColor,
                      child: ContainerData(
                        topString: "AGE",
                        bottomDataOne: age.toString(),
                        bottomDataSecond: "",
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundButton(
                              icons: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RoundButton(
                              icons: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomCard(
              bottomText: "CALCULATE",
              onTap: () {
                BmiBrain cal = BmiBrain(height: height, weight: weight);

                print(cal.bmiText());
                print(cal.bmiSuggestion());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: cal.bmiCall().toStringAsFixed(1),
                            bmiResultText: cal.bmiText(),
                            bmiSuggestion: cal.bmiSuggestion(),
                          )),
                );
              },
            ),
          ],
        ));
  }
}

//
