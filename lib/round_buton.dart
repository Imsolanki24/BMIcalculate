import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  RoundButton(
      {required this.icon, required this.color, required this.onPressed});

  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: color,
      shape: CircleBorder(),
      onPressed: onPressed,
    );
  }
}