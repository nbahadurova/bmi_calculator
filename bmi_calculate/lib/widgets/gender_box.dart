import 'package:flutter/material.dart';
import 'package:bmi_calculate/widgets/title_text.dart';
import 'package:bmi_calculate/widgets/container_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class GenderBox extends StatelessWidget {
  const GenderBox({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTapGender,
    required this.iconColor,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final void Function() onTapGender;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTapGender,
        child: ContainerBox(
          containerHeight: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                color: iconColor,
                size: 100,
              ),
              SizedBox(
                height: 10,
              ),
              TitleText(text: title),
            ],
          ),
        ),
      ),
    );
  }
}
