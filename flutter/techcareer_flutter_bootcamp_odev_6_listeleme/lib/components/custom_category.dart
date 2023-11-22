import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';

class CustomCategory extends StatelessWidget {
  final String title;
  final Color bgColor;

  const CustomCategory({super.key, required this.title, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 76,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
