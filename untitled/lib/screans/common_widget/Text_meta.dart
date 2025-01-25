import 'package:flutter/material.dart';

class TextMeta extends StatelessWidget {
  const TextMeta({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Meta',
      style: TextStyle(
          color: Color(0xff1877F2),
          fontSize: 24,
          fontWeight: FontWeight.w400),
    );
  }
}
