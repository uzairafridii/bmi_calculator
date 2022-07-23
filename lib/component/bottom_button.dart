import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.buttonChild, required this.onTap})
      : super(key: key);
  final Widget buttonChild;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: 60.0,
        decoration: const BoxDecoration(
            color: kBottomContainerColour,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(2.0),
              bottomRight: Radius.circular(2.0),
            )),
        child: buttonChild,
      ),
    );
  }
}
