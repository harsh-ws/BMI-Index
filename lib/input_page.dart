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
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xFF1D1E33),
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
                    color: Color(0xFF1D1E33),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xFF1D1E33),
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
  const ReusableCard({required this.color});
  final Color color;
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
