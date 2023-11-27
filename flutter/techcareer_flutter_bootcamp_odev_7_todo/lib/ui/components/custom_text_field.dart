import 'package:flutter/material.dart';
import 'package:todo_app_with_cubit_and_sqlite/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.onChanged,
  });
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.textColor2,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(
          fontSize: 18.0,
          decoration: TextDecoration.none,
        ),
        cursorColor: AppColor.backGroundColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.0),
          hintText: hintText,
          border: InputBorder.none,
        ),
        textInputAction: TextInputAction.newline, // Alt satıra inmek için
        maxLines: null,
      ),
    );
  }
}
