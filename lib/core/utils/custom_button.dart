import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.style,
    this.borderRadius,
    required this.bacGroundColor,
    required this.textColor,
  });
  final String text;
  final TextStyle style;
  final BorderRadius? borderRadius;
  final Color bacGroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: bacGroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(fontWeight: FontWeight.bold, color: textColor),
          )),
    );
  }
}
