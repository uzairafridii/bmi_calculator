import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component/bottom_button.dart';
import '../component/icon_and_content.dart';
import '../component/resusable_card.dart';
import '../component/rounded_button.dart';
import '../constant.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: kActiveCardColour,
        leading: IconButton(
          icon: Image.asset('images/menu.png' ,color: Colors.white,),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: const IconAndContent(
                        iconData: Icons.male,
                        text: 'Male',
                      ),
                      onPress: () {}),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: const IconAndContent(
                        iconData: Icons.female,
                        text: 'Female',
                      ),
                      onPress: () {}),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          '163',
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                onPress: () {}),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '73',
                            style: kNumberTextStyle,
                          ),
                          const SizedBox(height: 14.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {}),
                              const SizedBox(
                                width: 16.0,
                              ),
                              RoundedButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {}),
                            ],
                          )
                        ],
                      ),
                      onPress: () {}),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '19',
                            style: kNumberTextStyle,
                          ),
                          const SizedBox(height: 14.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {}),
                              const SizedBox(
                                width: 16.0,
                              ),
                              RoundedButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {}),
                            ],
                          )
                        ],
                      ),
                      onPress: () {}),
                )
              ],
            ),
          ),
          BottomButton(
            buttonChild: const Center(
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
