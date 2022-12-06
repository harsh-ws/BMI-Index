import 'package:bmi_index_app/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

double res = weight / (height * height) * 10000;

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[],
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
