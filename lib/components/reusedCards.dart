import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import '../screens/result_Page.dart';

class ReusedCard extends StatelessWidget {
  final Color colour;
  final Widget child;
  final Function onPressed;
  ReusedCard({@required this.colour, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(kCardMargin),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
      ),
    );
  }
}
