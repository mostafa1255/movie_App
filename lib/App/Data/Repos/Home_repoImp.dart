import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/App/Data/models/movies_model/action.dart';
import 'package:movie_app/App/Data/models/movies_model/foryou.dart';
import 'package:movie_app/App/Data/models/movies_model/movies_model.dart';
import 'package:movie_app/App/core/Tools/app_links.dart';
import '../../core/Tools/api_Services.dart';
import '../../core/Tools/app_error_handler.dart';
import '../../core/Tools/failure_model.dart';

class HomeRepoImp {
  final ApiServeces apiServeces;
  HomeRepoImp(this.apiServeces);

  Future<Either<Faliure, List<Foryou>>> fetchForYoumovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
     
      List<Foryou> movies = [];

      for (var items in data["foryou"]) {
        movies.add(Foryou.fromJson(items));
      }

      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  Future<Either<Faliure, List<Action>>> fetchActionmovie() async {
    try {
      var data = await apiServeces.get(endpoint: Movieget.get);
      List<Action> movies = [];

      for (var items in data["action"]) {
        movies.add(Action.fromJson(items));
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
