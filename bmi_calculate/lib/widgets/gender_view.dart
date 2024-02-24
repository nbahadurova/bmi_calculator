import 'package:flutter/material.dart';
import 'package:bmi_calculate/widgets/gender_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderView extends StatefulWidget {
  const GenderView(
      {super.key,});
 

  @override
  State<GenderView> createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  late Color maleIconColor = Colors.white;
  late Color femaleIconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderBox(iconColor: maleIconColor,
          title: 'MALE',
          icon: FontAwesomeIcons.mars,
          onTapGender: () {
            setState(() {
              maleIconColor = Colors.pink;
              femaleIconColor = Colors.white;
            });
          },
        ),
        const SizedBox(
          width: 12,
        ),
        GenderBox(iconColor: femaleIconColor,
          title: 'FEMALE',
          icon: FontAwesomeIcons.venus,
          onTapGender: () {
            setState(() {
              femaleIconColor = Colors.pink;
              maleIconColor = Colors.white;
            });
          },
        )
      ],
    );
  }
}
