part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

//

final class HomeSucsessForyou extends HomeState {
  final List<Foryou> movies;

  HomeSucsessForyou({required this.movies});
}

final class HomeFaliureForyou extends HomeState {
  final String errMessage;

  HomeFaliureForyou({required this.errMessage});
}

//
final class HomeSucsessAction extends HomeState {
  final List<Action> movies;

  HomeSucsessAction({required this.movies});
}

final class HomeFaliureAction extends HomeState {
  final String errMessage;

  HomeFaliureAction({required this.errMessage});
}
