import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctor_blue_container.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 18, 20, 28),
          child: Column(
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24.h),
              const DoctorSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView()
            ],
          ),
        ),
      ),
    );
  }
}
