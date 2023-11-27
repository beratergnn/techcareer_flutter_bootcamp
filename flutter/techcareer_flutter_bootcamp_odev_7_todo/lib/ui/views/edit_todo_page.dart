import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_with_cubit_and_sqlite/constant/colors.dart';
import 'package:todo_app_with_cubit_and_sqlite/data/models/todo_model.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/components/custom_button.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/components/custom_text_field.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/cubit/edit_todo_cubit.dart';

class EditTodoPage extends StatefulWidget {
  final TodoModel todo;

  const EditTodoPage({super.key, required this.todo});

  @override
  State<EditTodoPage> createState() => _EditTodoPageState();
}

class _EditTodoPageState extends State<EditTodoPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchTodo();
  }

  void fetchTodo() {
    var v_todo = widget.todo;
    titleController.text = v_todo.todoTitle;
    subtitleController.text = v_todo.todoSubtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        title: Text(
          'Update Todo',
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
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextField(
              controller: titleController,
              hintText: 'Contact Name',
            ),
            SizedBox(height: 10),
            CustomTextField(
              controller: subtitleController,
              hintText: 'Contact Number',
            ),
            SizedBox(height: 30),
            CustomButton(
              text: 'Update',
              onTap: () {
                context.read<EditTodoPageCubit>().update(widget.todo.todoId,
                    titleController.text, subtitleController.text);
              },
            ),
          ],
        ),
      )),
    );
  }
}
