import 'package:bmi_index_app/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculation.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.result,
      required this.interpretation});
  final String bmiResult;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: maleCardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Center(
                    child: Text(
                      'YOUR RESULTS',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        result,
                        style: kBodyTextStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiResult,
                        style: kResultsStyle,
                      ),
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InputPage()),
              );
            },
            child: Container(
              color: Colors.green,
              height: 80,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 20),
              child: const Center(
                  child: Text(
                'RE-CALCULATE',
                style: kLargeButtonStyle,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
