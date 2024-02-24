import 'package:flutter/material.dart';
import 'package:bmi_calculate/widgets/weight_age_box.dart';

class WeightAgeView extends StatelessWidget {
   WeightAgeView({super.key,required this.onDecrement1,required this.onIncrement1,
      required this.onDecrement2,
      required this.onIncrement2, required this.numberWeight, required this.numberAge});
  final void Function()? onIncrement1;
  final void Function()? onDecrement1;
  final void Function()? onIncrement2;
  final void Function()? onDecrement2;
  final int numberWeight;
  final int numberAge;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WeightAgeBox(
          title: 'WEIGHT',
          number: numberWeight.toString(),
          onIncrement: onIncrement1,
          onDecrement: onDecrement1,
        ),
        const SizedBox(width: 16,),
        WeightAgeBox(
          title: 'AGE',
          number: numberAge.toString(),
          onIncrement: onIncrement2,
          onDecrement: onDecrement2,
        ),
      ],
    );
  }
}
