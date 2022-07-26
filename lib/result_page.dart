import 'package:calculatorbmi/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';


class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.ResultText, required this.interpretation});

  final String bmiResult;
  final String ResultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('YOUR RESULT',
              style: kResultPageTitleTextStyle,),
          ),
          ),
          Expanded(flex: 5,
          child: ResusableCard(
            color: kactiveCardColor,
            onTap: (){},
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(ResultText,
                style: kResultPageTextStyle),
                Text(bmiResult,
                style: kBMIresultText,),
                Text(interpretation,
                textAlign: TextAlign.center,
                style: kBodyRsultText,)
              ],
            ),
          ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, bottontitle: 'RE-Calculate')
        ],
      ),
    );
  }
}
