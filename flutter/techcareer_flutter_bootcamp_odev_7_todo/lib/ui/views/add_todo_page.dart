import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_with_cubit_and_sqlite/constant/colors.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/components/custom_button.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/components/custom_text_field.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/cubit/add_todo_cubit.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        title: Text(
          'Add Todo',
          style: TextStyle(
            color: AppColor.textColor3,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.textColor3,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: titleController,
              hintText: 'Todo Title',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: subtitleController,
              hintText: 'Todo Subtitle',
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Add',
              onTap: () {
                context
                    .read<AddTodoPageCubit>()
                    .save(titleController.text, subtitleController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
