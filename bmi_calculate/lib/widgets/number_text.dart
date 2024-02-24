import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class NumberText extends StatelessWidget {
  const NumberText({
    Key? key,
    required this.numberText,
  }) : super(key: key);
  final String numberText;
  @override
  Widget build(BuildContext context) {
    return Text(
      numberText,
      style: const TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.w500),
    );
  }
}
