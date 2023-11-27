import 'package:flutter/material.dart';
import 'package:todo_app_with_cubit_and_sqlite/constant/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String text;

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.textColor3,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColor.backGroundColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
