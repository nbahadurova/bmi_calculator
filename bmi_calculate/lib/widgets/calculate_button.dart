import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class CalculateButton extends StatelessWidget {

   const CalculateButton({
    Key? key,
    required this.text,
    required this.onCalculate,
  }) : super(key: key);
  final String text;
  final void Function() onCalculate;
   @override
   Widget build(BuildContext context) {
       return GestureDetector(
        onTap: onCalculate,
         child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.pink,
          height: 75,
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          
          ),
         ),
       );
  }
}
