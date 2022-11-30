import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}
//0xFF1D1E33

enum GenderType { male, female }

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInActiveColor;
  Color femaleCardColor = kInActiveColor;
  int height = 180;

  void setColor(GenderType selection) {
    if (selection == GenderType.male) {
      // 1 means male
      if (maleCardColor == kInActiveColor) {
        maleCardColor = kActiveColor;
        femaleCardColor = kInActiveColor;
      } else {
        maleCardColor = kInActiveColor;
      }
    } else if (selection == GenderType.female) {
      if (femaleCardColor == kInActiveColor) {
        femaleCardColor = kActiveColor;
        maleCardColor = kInActiveColor;
      } else {
        femaleCardColor = kInActiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            setColor(GenderType.male);
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: maleCardColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 70,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('MALE'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          setColor(GenderType.female);
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: femaleCardColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 70,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('FEMALE'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: femaleCardColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              const Text(
                                'cm',
                                style: kLabelTextStyle,
                              )
                            ],
                          ),
                          Slider(
                            value: height.toDouble(),
                            onChanged: (newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                            inactiveColor: Colors.white,
                            activeColor: Colors.green,
                            min: 80,
                            max: 220,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: 80,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  //const ReusableCard({Key? key}) : super(key: key);
  const ReusableCard({required this.color, this.cardChild});
  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

/*
ReusableCard(
                      color: Colors.white,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )

 */
