import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_contents.dart';
import 'reuseable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  // Color maleCardColor = incativeCardColor;
  // Color femaleCardColor = incativeCardColor;
  // void updateGander(Gender selectedgander) {
  //   if (selectedgander == Gender.male) {
  //     //male
  //     if (maleCardColor == incativeCardColor) {
  //       maleCardColor = activeCardColor;
  //     } else {
  //       maleCardColor = incativeCardColor;
  //     }
  //   } else {
  //     if (femaleCardColor == incativeCardColor) {
  //       femaleCardColor = activeCardColor;
  //     } else {
  //       femaleCardColor = incativeCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Reuseable_card(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: icon_contant(
                      icon: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reuseable_card(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: icon_contant(
                      icon: FontAwesomeIcons.female,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reuseable_card(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '180',
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reuseable_card(
                      colour: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: Reuseable_card(
                      colour: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: kBottomContainerHeight,
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ));
  }
}
