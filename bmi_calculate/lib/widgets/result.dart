import 'package:flutter/material.dart';
import 'package:bmi_calculate/widgets/container_box.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.result,
    required this.resultInfo,
    required this.resultType,
  });
  final String result;
  final String resultType;
  final String resultInfo;
  @override
  Widget build(BuildContext context) {
    return ContainerBox(
        containerHeight: 450,
        containerWidth: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              resultType,
              style: const TextStyle(
                  color: Color(0xff24d876),
                  fontSize: 37,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              result,
              style: const TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Your body weight is $resultInfo',
              style: const TextStyle(color: Color(0xffe5e6e8), fontSize: 18),
            )
          ],
        ));
  }
}
