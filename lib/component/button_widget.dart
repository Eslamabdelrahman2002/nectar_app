import 'package:flutter/material.dart';
import 'package:nectar_app/component/Color.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback funtion;
  final Color color;
  final double border;
  final Color textColor;

  const DefaultButton(
      {super.key,
      required this.text,
      required this.funtion,
      required this.color,
      required this.border,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        funtion();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          height: 67,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(border as double),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
