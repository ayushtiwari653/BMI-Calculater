import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusedCards.dart';
import '../components/BottomButton.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiResultText;
  final String bmiSuggestion;
  ResultPage(
      {@required this.bmiResult,
      @required this.bmiResultText,
      @required this.bmiSuggestion});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text("Your result",
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusedCard(
                colour: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiResultText,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiResult,
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiSuggestion,
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomCard(
              bottomText: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
