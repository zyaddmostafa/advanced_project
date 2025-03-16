import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_state.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorBlocBuilder extends StatelessWidget {
  const DoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return setupSuccsess(doctorsList);
          },
          doctorsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccsess(doctorsList) {
    return DoctorsListView(
      doctorsList: doctorsList,
    );
  }

  Widget setupError() => const SizedBox.shrink();
}
