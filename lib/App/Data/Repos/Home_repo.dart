import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/App/Data/models/movies_model/movies_model.dart';
import 'package:movie_app/App/core/Tools/app_links.dart';
import '../../core/Tools/api_Services.dart';
import '../../core/Tools/app_error_handler.dart';
import '../../core/Tools/failure_model.dart';

class HomeRepo {
  final ApiServeces apiServeces;
  HomeRepo(this.apiServeces);

  Future<Either<Faliure, List<MoviesModel>>> fetchForYoumovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
      List<MoviesModel> movies = [];

      for (var items in data["foryou"]) {
        movies.add(MoviesModel.fromJson(items));
      }
      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  Future<Either<Faliure, List<MoviesModel>>> fetchActionmovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
      List<MoviesModel> movies = [];

      for (var items in data["action"]) {
        movies.add(MoviesModel.fromJson(items));
      }
      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  Future<Either<Faliure, List<MoviesModel>>> fetchDramamovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
      List<MoviesModel> movies = [];

      for (var items in data["drama"]) {
        movies.add(MoviesModel.fromJson(items));
      }
      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  Future<Either<Faliure, List<MoviesModel>>> fetchComedymovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
      List<MoviesModel> movies = [];

      for (var items in data["comedy"]) {
        movies.add(MoviesModel.fromJson(items));
      }
      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  Future<Either<Faliure, List<MoviesModel>>> fetchAdventuremovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
      List<MoviesModel> movies = [];

      for (var items in data["adventure"]) {
        movies.add(MoviesModel.fromJson(items));
      }
      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  Future<Either<Faliure, List<MoviesModel>>> fetchAnimationmovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
      List<MoviesModel> movies = [];

      for (var items in data["animation"]) {
        movies.add(MoviesModel.fromJson(items));
      }
      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }
}
