import 'dart:ffi';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? ontap;
  final String content;
  final Color? backgroudColor;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;
  final double? letterSpacing;
  final double? fontSize;
  final EdgeInsetsGeometry? margin;

  const MyButton({
    super.key,
    this.ontap,
    required this.content,
    this.backgroudColor,
    this.textColor,
    this.borderRadius,
    this.letterSpacing,
    this.fontSize,
    this.margin
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: margin,
        decoration: BoxDecoration(
          color: backgroudColor,
          borderRadius: borderRadius
        ),
        child: Center(
          child: Text(
              content,
              style: TextStyle(
                letterSpacing: letterSpacing,
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: fontSize
              ),
          ),
        ),
      ),
    );
  }
  
}