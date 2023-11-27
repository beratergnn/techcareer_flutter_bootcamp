import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_with_cubit_and_sqlite/constant/colors.dart';
import 'package:todo_app_with_cubit_and_sqlite/data/models/todo_model.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/components/custom_not_found_todo.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/components/custom_text_field.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/components/custom_todo_item.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/cubit/list_todo_cubit.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/views/add_todo_page.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/views/edit_todo_page.dart';

class ListTodoPage extends StatefulWidget {
  ListTodoPage({super.key});

  @override
  State<ListTodoPage> createState() => _ListTodoPageState();
}

class _ListTodoPageState extends State<ListTodoPage> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ListTodoPageCubit>().getTodos();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backGroundColor,
          title: Text(
            'Notes',
            style: TextStyle(
              color: AppColor.textColor3,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              CustomTextField(
                hintText: 'Search..',
                onChanged: (searhingText) {
                  context
                      .read<ListTodoPageCubit>()
                      .searchingTodos(searhingText);
                },
              ),
              SizedBox(height: 30),
              BlocBuilder<ListTodoPageCubit, List<TodoModel>>(
                  builder: (context, snapshot) {
                if (snapshot.isNotEmpty) {
                  return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.length,
                          itemBuilder: ((context, index) {
                            var todo = snapshot[index];

                            return TodoItem(
                              size: size,
                              title: todo.todoTitle,
                              subtitle: todo.todoSubtitle,
                              onEditTap: () {
                                Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditTodoPage(todo: todo)))
                                    .then((value) {
                                  context.read<ListTodoPageCubit>().getTodos();
                                });
                              },
                              onDeleteTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'Do you want to delete ${todo.todoTitle}? '),
                                        action: SnackBarAction(
                                            label: 'Yes',
                                            onPressed: () {
                                              context
                                                  .read<ListTodoPageCubit>()
                                                  .deleteTodo(todo.todoId);
                                            })));
                              },
                            );
                          })));
                } else {
                  return NotFoundTodo();
                }
              })
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddTodoPage()))
                  .then((value) {
                context.read<ListTodoPageCubit>().getTodos();
              });
            },
            child: Icon(
              Icons.add,
              color: AppColor.backGroundColor,
            ),
            backgroundColor: AppColor.textColor3.withOpacity(.9)));
  }
}
