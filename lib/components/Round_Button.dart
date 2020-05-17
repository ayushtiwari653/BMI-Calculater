import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icons;
  final Function onPressed;
  RoundButton({@required this.icons, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
      fillColor: Color(0xFF4C4E5F),
      shape: CircleBorder(),
      child: Icon(icons),
    );
  }
}
