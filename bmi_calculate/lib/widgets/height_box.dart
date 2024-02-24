import 'package:flutter/material.dart';
import 'package:bmi_calculate/widgets/title_text.dart';
import 'package:bmi_calculate/widgets/number_text.dart';
import 'package:bmi_calculate/widgets/container_box.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class HeightBox extends StatelessWidget {
  const HeightBox({
    Key? key,
    required this.onChanged,
    required this.value, required this.numText,
  }) : super(key: key);
  final void Function(double) onChanged;
  final double value;
  final String numText;

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      containerHeight: 170,
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TitleText(text: 'HEIGHT'),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            NumberText(numberText: numText),
            const TitleText(text: 'cm'),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 3,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
          ),
          child: Slider(
            value: value,
            min: 150,
            max: 200,
            thumbColor: Color(0xffeb1555),
            activeColor: Color(0xfffeffff),
            inactiveColor: Color(0xff8f8f9b),
            onChanged: onChanged,
          ),
        ),
      ],
    ));
  }
}
