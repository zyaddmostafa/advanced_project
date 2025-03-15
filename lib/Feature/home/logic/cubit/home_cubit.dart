import 'package:flutter_advanced/Feature/home/data/repos/home_repo.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSepcialization() async {
    emit(const HomeState.specializationloading());
    final response = await _homeRepo.getSepcialization();
    response.when(
      success: (specializationResponseModel) =>
          emit(HomeState.specializationSuccess(specializationResponseModel)),
      failure: (errorHandler) => emit(
        HomeState.specializationError(errorHandler),
      ),
    );
  }
}
