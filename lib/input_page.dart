import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constant.dart';
import 'round_buton.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';



enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      cardchild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                      color: selectedGender == Gender.Male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ResusableCard(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.Female;
                          });
                        },
                        cardchild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'Female',
                        ),
                        color: selectedGender == Gender.Female
                            ? kactiveCardColor
                            : kinactiveCardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ResusableCard(
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: klabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.pink,
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220.0,
                        min: 120.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
                color: kactiveCardColor,
                onTap: () {},
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: klabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                color: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                color: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      color: kactiveCardColor,
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: ResusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: klabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                color: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                color: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      color: kactiveCardColor,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: (){
                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                  bmiResult: calc.CalculateResult(),
                  ResultText: calc.getResult(),
                  interpretation: calc.getInterpretation(),
                )));
              },
              bottontitle: 'Calculate',
            )
          ],
        ));
  }
}



