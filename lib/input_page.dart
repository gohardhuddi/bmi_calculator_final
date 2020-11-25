import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const BottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const BottomContainerColor = Color(0xFFE62E54);

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
                    colour: activeCardColor,
                    cardChild: icon_contant(),
                  ),
                ),
                Expanded(
                  child: Reuseable_card(
                    colour: activeCardColor,
                    // cardChild: icon_contant(),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reuseable_card(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reuseable_card(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: Reuseable_card(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: BottomContainerHeight,
              color: BottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}

class icon_contant extends StatelessWidget {
  const icon_contant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.male,
          size: 80.0,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          'MALE',
          style: TextStyle(fontSize: 18.0, color: Color(0xFF555665)),
        ),
      ],
    );
  }
}

class Reuseable_card extends StatelessWidget {
  Reuseable_card({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 200.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
