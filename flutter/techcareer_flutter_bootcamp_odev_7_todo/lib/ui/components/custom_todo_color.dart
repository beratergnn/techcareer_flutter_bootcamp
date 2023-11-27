import 'package:flutter/material.dart';

class CustomTodoColor extends StatelessWidget {
  CustomTodoColor(
      {super.key, required this.color, this.onTap, required this.isSelected});
  final Color color;
  final Function()? onTap;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          border: isSelected
              ? Border.all(
                  color: Colors.blueAccent, // Sınır rengi
                  width: 3.0, // Sınır genişliği
                )
              : null,
        ),
      ),
    );
  }
}
