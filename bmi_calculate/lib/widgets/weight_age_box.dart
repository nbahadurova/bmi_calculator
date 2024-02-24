import 'package:flutter/material.dart';
import 'package:bmi_calculate/widgets/title_text.dart';
import 'package:bmi_calculate/widgets/number_text.dart';
import 'package:bmi_calculate/widgets/container_box.dart';
import 'package:bmi_calculate/widgets/rounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeBox extends StatelessWidget {
  WeightAgeBox({
    Key? key,
    required this.title,
    required this.number,
    required this.onDecrement,
    required this.onIncrement,
  }) : super(key: key);
  final String title;
  final String number;
  final void Function()? onIncrement;
  final void Function()? onDecrement;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ContainerBox(
          containerHeight: 175,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleText(text: title),
              NumberText(numberText: number),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RoundedButton(
                      icon: FontAwesomeIcons.minus, onTap: onDecrement),
                  const SizedBox(
                    width: 12,
                  ),
                  RoundedButton(
                      icon: FontAwesomeIcons.plus, onTap: onIncrement),
                ],
              )
            ],
          )),
    );
  }
}
