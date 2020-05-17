import 'package:flutter/material.dart';
import 'constants.dart';

class BottomCard extends StatelessWidget {
  final String bottomText;
  final Function onTap;
  BottomCard({@required this.bottomText, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              bottomText,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 3),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
