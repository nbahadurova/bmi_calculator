import 'package:flutter/material.dart';
import 'package:bmi_calculate/pages/result_page.dart';
import 'package:bmi_calculate/widgets/height_box.dart';
import 'package:bmi_calculate/widgets/gender_view.dart';
import 'package:bmi_calculate/widgets/weight_age_view.dart';
import 'package:bmi_calculate/widgets/calculate_button.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  double heightValue = 150;
  int weightCounter = 0;
  int ageCounter = 0;
  int weightValue = 0;
  int ageValue = 0;
  double bmi = 0;
  String heading = '';
  void incrementWeight() {
    setState(() {
      weightCounter++;
    });
  }

  void decrementWeight() {
    setState(() {
      if (weightCounter > 0) {
        weightCounter--;
      }
    });
  }
  void incrementAge() {
    setState(() {
      ageCounter++;
    });
  }

  void decrementAge() {
    setState(() {
      if (ageCounter > 0) {
        ageCounter--;
      }
    });
  }

  void calculate() {
    bmi = weightValue / ((heightValue / 100) * (heightValue / 100));
  }

  void condition() {
    setState(() {
      if (bmi < 18.5) {
        heading = 'Underweight';
      } else if (bmi > 18.5 && bmi < 24.9) {
        heading = 'Healthy weight';
      } else if (bmi > 25.0 && bmi < 29.9) {
        heading = 'Overweight';
      } else {
        heading = 'Obese';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090e21),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const GenderView(),
            const SizedBox(
              height: 20,
            ),
            HeightBox(
              numText: heightValue.toStringAsFixed(0),
              value: heightValue,
              onChanged: (v) {
                heightValue = v;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20,
            ),
            WeightAgeView(
              numberAge: ageValue,
              numberWeight: weightValue,
              onDecrement1: () {
                setState(() {
                  decrementWeight();
                  weightValue = weightCounter;
                });
              },
              onIncrement1: () {
                setState(() {
                  incrementWeight();
                  weightValue = weightCounter;
                });
              },
              onDecrement2: () {
                setState(() {
                  decrementAge();
                  ageValue = ageCounter;
                });
              },
              onIncrement2: () {
                setState(() {
                  incrementAge();
                  ageValue = ageCounter;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: 'CALCULATE',
        onCalculate: () {
          calculate();
          condition();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(
                    resultValue: bmi.toStringAsFixed(1),
                    resultText: heading,
                    resultTypeText: heading),
              ));
        },
      ),
    );
  }
}
