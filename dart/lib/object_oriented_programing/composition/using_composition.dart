import 'package:techcareer_flutter_bootcamp/object_oriented_programing/composition/catogory_model.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/composition/director_model.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/composition/movie_model.dart';

void main() {
  var c1 = Category(categoryId: 1, categoryName: 'Dram');
  var c2 = Category(categoryId: 2, categoryName: 'Komedi');

  var d1 = Director(directorId: 1, directorName: 'Nuri Bilge Ceylan');
  var d2 = Director(directorId: 2, directorName: 'Cristopher Nolan');

  var m1 = Movie(
    movieId: 1,
    movieName: 'Joker',
    movieYear: 2019,
    category: c1,
    directory: d1,
  );

  print('Film Id        : ${m1.movieId}');
  print('Film Adı       : ${m1.movieName}');
  print('Film Yılı      : ${m1.movieYear}');
  print('Film Kategori  : ${m1.category.categoryName}');
  print('Film Yönetmen  : ${m1.directory.directorName}');
}
