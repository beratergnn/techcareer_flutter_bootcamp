import 'package:flutter/material.dart';
import 'package:todo_app_with_cubit_and_sqlite/constant/colors.dart';

class NotFoundTodo extends StatelessWidget {
  const NotFoundTodo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/notebook.png'),
          SizedBox(height: 20),
          const Text(
            'Your to-do list is empty. Do you want to add a new one?',
            style: TextStyle(
              color: AppColor.textColor3,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
