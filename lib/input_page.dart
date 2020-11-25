import 'package:flutter/cupertino.dart';
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
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Reuseable_card(
                    colour: Color(0xFF1D1F33),
                  ),
                ),
                Expanded(
                  child: Reuseable_card(
                    colour: Color(0xFF1D1F33),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reuseable_card(
                colour: Color(0xFF1D1F33),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reuseable_card(
                      colour: Color(0xFF1D1F33),
                    ),
                  ),
                  Expanded(
                    child: Reuseable_card(
                      colour: Color(0xFF1D1F33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Reuseable_card extends StatelessWidget {
  Reuseable_card({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
