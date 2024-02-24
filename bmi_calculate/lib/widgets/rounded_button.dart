import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.icon, this.onTap})
      : super(key: key);
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      shape: CircleBorder(),
      backgroundColor: const Color(0xff4c4f5e),
      foregroundColor: Colors.white,
      onPressed: onTap,
      child: FaIcon(icon),
    );
  }
}
