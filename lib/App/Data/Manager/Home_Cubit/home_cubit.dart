import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/App/Data/models/movies_model/action.dart';
import 'package:movie_app/App/Data/models/movies_model/foryou.dart';
import '../../Repos/Home_repoImp.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepo}) : super(HomeInitial());
  final HomeRepoImp homeRepo;

  Future<void> fetchForYouMovie() async {
    emit(HomeLoading());
    var result = await homeRepo.fetchForYoumovie();
    print(result.toString());
    result.fold((faliure) {
      emit(HomeFaliureForyou(errMessage: faliure.errmessage));
    }, (movies) {
      emit(HomeSucsessForyou(movies: movies));
    });
  }

  Future<void> fetchActionmovie() async {
    emit(HomeLoading());
    var result = await homeRepo.fetchActionmovie();
    result.fold((faliure) {
      emit(HomeFaliureAction(errMessage: faliure.errmessage));
    }, (movies) {
      emit(HomeSucsessAction(movies: movies));
    });
  }
}
