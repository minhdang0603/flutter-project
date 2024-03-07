import 'package:flutter/material.dart';

Widget normalText(String text, Color color) => Container(
  decoration: BoxDecoration(
    color: color,
  ),
  child: Column(
    children: [
      Text(text),
    ],
  ),
);