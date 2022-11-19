import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                children: const <Widget>[
                  Expanded(child: ReusableCard()),
                  Expanded(child: ReusableCard()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(child: ReusableCard()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(child: ReusableCard()),
                  Expanded(child: ReusableCard()),
                ],
              ),
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
