import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class ContainerBox extends StatelessWidget {
  const ContainerBox({
    Key? key,
    required this.child,  this.containerHeight, this.containerWidth,  this.borderColor = Colors.transparent,
  }) : super(key: key);
  final Widget child;
  final double? containerHeight;
  final double? containerWidth;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        // border: Border.all(color: borderColor),
          color: const Color(0xff111328),
          borderRadius: BorderRadius.circular(15)),
          child: child,
    );
  }
}
