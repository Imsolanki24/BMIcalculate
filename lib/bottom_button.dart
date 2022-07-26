import 'package:flutter/material.dart';
import 'constant.dart';


class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.bottontitle});



  final VoidCallback onTap;
  final String bottontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child:
        Text(bottontitle,
          style: kbottomeTextStyle,),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kbottombottonColor,
        width: double.infinity,
        height: kbottombottonHeight,
      ),
    );
  }
}



