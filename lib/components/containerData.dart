import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class ContainerData extends StatelessWidget {
  final Widget child;
  final String topString;
  final String bottomDataOne;
  final String bottomDataSecond;
  ContainerData(
      {@required this.topString,
      @required this.bottomDataOne,
      this.bottomDataSecond,
      @required this.child});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          topString,
          style: kLableTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              bottomDataOne,
              style: kBigTextStyle,
            ),
            Text(
              bottomDataSecond,
              style: kLableTextStyle,
            )
          ],
        ),
        child,
      ],
    );
  }
}
