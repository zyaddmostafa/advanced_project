import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_state.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Specializationloading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationloading: () => setupLoading(),
          specializationSuccess: (specializationResponseModel) {
            var specializationList =
                specializationResponseModel.specializationsDataList;
            return setupSuccess(specializationList);
          },
          specializationError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(List<SpecializationsData?>? specializationList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationsDataList: specializationList ?? [],
          ),
          verticalSpace(24.h),
          DoctorsListView(
            doctorsList: specializationList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }

  Widget setupLoading() => const Center(child: CircularProgressIndicator());

  Widget setupError() => const SizedBox.shrink();
}
