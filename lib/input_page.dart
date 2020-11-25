import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_contents.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const incativeCardColor = Color(0xFF181A2E);
const BottomContainerColor = Color(0xFFE62E54);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = incativeCardColor;
  Color femaleCardColor = incativeCardColor;
  void updateGander(int gander) {
    if (gander == 1) {
      //male
      if (maleCardColor == incativeCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = incativeCardColor;
      }
    } else {
      if (femaleCardColor == incativeCardColor) {
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor = incativeCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateGander(1);
                      });
                    },
                    child: Reuseable_card(
                      colour: maleCardColor,
                      cardChild: icon_contant(
                        icon: FontAwesomeIcons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateGander(0);
                      });
                    },
                    child: Reuseable_card(
                      colour: femaleCardColor,
                      cardChild: icon_contant(
                        icon: FontAwesomeIcons.female,
                        label: "FEMALE",
                      ),
                    ),
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
