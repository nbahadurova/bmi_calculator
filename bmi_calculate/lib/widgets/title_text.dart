import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(color: Colors.grey, fontSize: 20),
    );
  }
}
