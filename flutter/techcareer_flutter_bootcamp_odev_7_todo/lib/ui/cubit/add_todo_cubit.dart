import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_with_cubit_and_sqlite/data/repository/todo_repository.dart';

class AddTodoPageCubit extends Cubit<void> {
  AddTodoPageCubit() : super(0);

  var tRepo = TodosDaoRepository();

  Future<void> save(String todoTitle, String todoSubtitle) async {
    await tRepo.save(todoTitle, todoSubtitle);
  }
}
