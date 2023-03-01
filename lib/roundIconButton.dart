import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function action;

  RoundIconButton({@required this.icon, @required this.action});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: action,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
