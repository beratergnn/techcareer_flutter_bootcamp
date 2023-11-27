import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/cubit/add_todo_cubit.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/cubit/edit_todo_cubit.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/cubit/list_todo_cubit.dart';
import 'package:todo_app_with_cubit_and_sqlite/ui/views/list_todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ListTodoPageCubit()),
        BlocProvider(create: (context) => AddTodoPageCubit()),
        BlocProvider(create: (context) => EditTodoPageCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ListTodoPage(),
      ),
    );
  }
}
