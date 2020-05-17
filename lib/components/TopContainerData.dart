import 'package:flutter/material.dart';
import 'constants.dart';

class TopContainerData extends StatelessWidget {
  final String text;
  final IconData containerIcon;
  TopContainerData({@required this.text, @required this.containerIcon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          containerIcon,
          size: kIconSize,
          color: kContainerColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLableTextStyle,
        )
      ],
    );
  }
}
