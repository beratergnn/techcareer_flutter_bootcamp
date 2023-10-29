// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/composition/catogory_model.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/composition/director_model.dart';

class Movie {
  int movieId;
  String movieName;
  int movieYear;
  Category category; //composition
  Director directory; //composition
  Movie({
    required this.movieId,
    required this.movieName,
    required this.movieYear,
    required this.category,
    required this.directory,
  });
}
