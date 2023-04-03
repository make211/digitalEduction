import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(
      {super.key,
      required this.text,
      required this.width,
      required this.icon,
      required this.height,
      required this.onTap});
  final String text;
  final double width;
  final double height;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: context.height * 0.02),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.textColor,
              ),
              SizedBox(
                width: context.width * 0.02,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
