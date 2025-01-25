import 'package:flutter/material.dart';

class FacebookPhoto extends StatelessWidget {
  final String imagePath;
  const FacebookPhoto({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath) ;
  }
}
