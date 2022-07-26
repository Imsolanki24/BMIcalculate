import 'package:flutter/material.dart';


class ResusableCard extends StatelessWidget {
  const ResusableCard({required this.color , required this.cardchild , required this.onTap});

  final Color color;
  final Widget cardchild;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
