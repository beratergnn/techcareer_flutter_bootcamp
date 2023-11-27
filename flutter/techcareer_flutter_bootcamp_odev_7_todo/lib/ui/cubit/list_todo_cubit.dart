import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_with_cubit_and_sqlite/data/models/todo_model.dart';
import 'package:todo_app_with_cubit_and_sqlite/data/repository/todo_repository.dart';

class ListTodoPageCubit extends Cubit<List<TodoModel>> {
  ListTodoPageCubit() : super(<TodoModel>[]);

  var tRepo = TodosDaoRepository();
  Future<void> getTodos() async {
    var list = await tRepo.getTodos();
    emit(list);
  }

  Future<void> deleteTodo(int todoId) async {
    await tRepo.deleteTodo(todoId);
    // sildikten sonra tekrar arayüzü güncellemek için
    // yazmak isek ileride veritabanına bağlayınca
    // silme işlemini yapar ama ekranda anlık göremeyiz
    await getTodos();
  }

  Future<void> searchingTodos(String value) async {
    var list = await tRepo.searchingTodos(value);
    emit(list);
  }
}
