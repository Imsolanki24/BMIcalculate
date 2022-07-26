import 'dart:math';

import 'package:flutter/cupertino.dart';


class CalculatorBrain{
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String CalculateResult(){

    _bmi = weight/pow(height/100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi! >= 25){
      return 'OverWeight';
    }else if(_bmi! >18.5){
      return 'Normal';
    }else{
      return 'underWeight';
    }
  }

  String getInterpretation(){
    if(_bmi! >= 25){
      return 'you are higher than normal weight, try to excercise';
    }else if(_bmi! >18.5){
      return 'your BMI is normal Good Job!';
    }else{
      return 'you are lower than normal weight , try to eat more';
    }
  }

}

