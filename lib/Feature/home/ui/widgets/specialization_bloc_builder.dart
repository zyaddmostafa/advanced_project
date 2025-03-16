import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_state.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctors_skeltonizer_loading.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/speciality_list_view.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/speciality_shimmer_loading.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({
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
          specializationSuccess: (specializationsDataList) {
            var specializationList = specializationsDataList;
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
    return Skeletonizer(
      enabled: false,
      child: SpecialityListView(
        specializationsDataList: specializationList ?? [],
      ),
    );
  }

  Widget setupLoading() => Expanded(
        child: Column(
          children: [
            const SpecialityShimmerLoading(),
            verticalSpace(8),
            const DoctorsSkeltonizerLoading(),
          ],
        ),
      );

  Widget setupError() => const SizedBox.shrink();
}
