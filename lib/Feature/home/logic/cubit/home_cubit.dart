import 'dart:developer';

import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/Feature/home/data/repos/home_repo.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_state.dart';
import 'package:flutter_advanced/core/helper/extentions.dart';
import 'package:flutter_advanced/core/networking/api_error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  List<SpecializationsData?>? specializationsList = [];
  void getSepcialization() async {
    emit(const HomeState.specializationloading());
    final response = await _homeRepo.getSepcialization();
    response.when(
      success: (specializationResponseModel) {
        specializationsList =
            specializationResponseModel.specializationsDataList ?? [];
        // getting the doctors list for the first specialization by default.
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(HomeState.specializationSuccess(
            specializationResponseModel.specializationsDataList));
      },
      failure: (errorHandler) => emit(
        HomeState.specializationError(errorHandler),
      ),
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    log('doctorsList: $doctorsList');

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
