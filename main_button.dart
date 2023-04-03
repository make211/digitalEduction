import 'package:digital_education/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key,
      required this.text,
      required this.width,
      required this.height,
      required this.onTap,
      required this.backGround,
      required this.textColor,
      required this.fontSize});
  final String text;
  final double width;
  final double height;
  final VoidCallback onTap;
  final Color backGround;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: context.height * 0.02),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backGround,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
