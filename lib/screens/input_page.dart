import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/reusable_card.dart';
import 'components/icon_content.dart';
import 'components/bottom_button.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onPress: () => setState(() => selectedGender = Gender.male),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onPress: () => setState(() => selectedGender = Gender.female),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: kActiveCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: kActiveCardColor)),
                Expanded(child: ReusableCard(colour: kActiveCardColor)),
              ],
            ),
          ),
          BottomButton(buttonTitle: 'CALCULATE', onTap: () {}),
        ],
      ),
    );
  }
}
