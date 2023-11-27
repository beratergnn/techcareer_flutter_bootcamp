import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_with_cubit_and_sqlite/data/repository/todo_repository.dart';

class EditTodoPageCubit extends Cubit<void> {
  EditTodoPageCubit() : super(0);

  var tRapo = TodosDaoRepository();
  Future<void> update(int todoId, String todoTitle, String todoSubtitle) async {
    await tRapo.update(todoId, todoTitle, todoSubtitle);
  }
}
