import 'package:flutter/material.dart';
import 'package:bmi_calculate/widgets/result.dart';
import 'package:bmi_calculate/pages/calculate_page.dart';
import 'package:bmi_calculate/widgets/calculate_button.dart';


class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.resultValue, required this.resultText, required this.resultTypeText});
  final String resultValue;
  final String resultText;
  final String resultTypeText;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late String _resultValue;
  late String _resultText;
  late String _resultTypeText;
  @override
  void initState() {
    super.initState();
    _resultValue = widget.resultValue;
    _resultText = widget.resultText;
    _resultTypeText = widget.resultTypeText;
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
            const Text(
              'Your Result',
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Result(result: _resultValue,resultInfo: _resultText,resultType: _resultTypeText),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: 'RECALCULATE',
        onCalculate: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CalculatePage(),
              ));
        },
      ),
    );
  }
}


