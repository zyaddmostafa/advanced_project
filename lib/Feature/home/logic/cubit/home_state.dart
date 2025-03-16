import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationloading() = Specializationloading;

  const factory HomeState.specializationSuccess(
      List<SpecializationsData?>? specializationList) = SpecializationSuccess;

  const factory HomeState.specializationError(ErrorHandler errorHandler) =
      SpecializationError;
// Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;

  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;
}
