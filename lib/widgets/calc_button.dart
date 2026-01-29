import 'package:bim_calc/app_color.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    required this.onpress,
    required this.text,
  });

  final Function() onpress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity,55),
        backgroundColor: AppColor.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onpress,
      child: Text(
        "$text",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
