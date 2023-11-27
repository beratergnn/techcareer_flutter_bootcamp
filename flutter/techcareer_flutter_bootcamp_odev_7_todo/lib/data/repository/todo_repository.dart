import 'package:todo_app_with_cubit_and_sqlite/data/models/todo_model.dart';
import 'package:todo_app_with_cubit_and_sqlite/sqlite/database_helper.dart';

class TodosDaoRepository {
  Future<List<TodoModel>> getTodos() async {
    // Veritabanına bağlanmak için.
    var db = await DatabaseHelper.databaseConnection();

    // Veritabanında contacts tablosundaki sütunları map olarak çekmek için.
    List<Map<String, dynamic>> maps = await db.rawQuery('SELECT * FROM todos');

    // Gelen mapleri listeye çevirip ekrana haber vermek için.
    // Neden listeye çeviriyoruz çünkü ekranda böyle görüntülüyoruz. Listeden okuma yapıyoruz.
    return List.generate(maps.length, (index) {
      var row = maps[index];
      return TodoModel(
        todoId: row['todo_id'],
        todoTitle: row['todo_title'],
        todoSubtitle: row['todo_subtitle'],
      );
    });
  }

  Future<void> save(String todoTitle, String todoSubtitle) async {
    var db = await DatabaseHelper.databaseConnection();

    var newTodo = Map<String, dynamic>();
    newTodo['todo_title'] = todoTitle;
    newTodo['todo_subtitle'] = todoSubtitle;
    await db.insert('todos', newTodo);

    print('Todo: $todoTitle - $todoSubtitle');
  }

  Future<void> update(int todoId, String todoTitle, String todoSubtitle) async {
    var db = await DatabaseHelper.databaseConnection();

    var updatedTodo = Map<String, dynamic>();
    updatedTodo['todo_title'] = todoTitle;
    updatedTodo['todo_subtitle'] = todoSubtitle;
    // Güncelleme yaparken id ye göre yapacağımız için db.update kullanıp where ve whereArgs paramterelerinide yolluyoruz
    // whereArgs güncellenecek kişinin id sini alıp where içine yerleştiriyor ve database e gönderiyor
    await db.update('todos', updatedTodo,
        where: 'todo_id = ?', whereArgs: [todoId]);

    print('Update Todo: $todoId $todoTitle - $todoSubtitle');
  }

  Future<void> deleteTodo(int todoId) async {
    var db = await DatabaseHelper.databaseConnection();
    await db.delete('todos', where: 'todo_id = ?', whereArgs: [todoId]);

    print('Deleted Todo Id :$todoId');
  }

  Future<List<TodoModel>> searchingTodos(String searchingText) async {
    // Veritabanına bağlanmak için.
    var db = await DatabaseHelper.databaseConnection();

    // Veritabanında contacts tablosundaki sütunları map olarak çekmek için.
    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM todos WHERE todo_title LIKE '%$searchingText%'");

    // Gelen mapleri listeye çevirip ekrana haber vermek için.
    // Neden listeye çeviriyoruz çünkü ekranda böyle görüntülüyoruz. Listeden okuma yapıyoruz.
    return List.generate(maps.length, (index) {
      var row = maps[index];
      return TodoModel(
        todoId: row['todo_id'],
        todoTitle: row['todo_title'],
        todoSubtitle: row['todo_subtitle'],
      );
    });
  }
}
