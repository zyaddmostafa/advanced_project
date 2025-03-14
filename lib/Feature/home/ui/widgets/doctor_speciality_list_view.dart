import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: ColorManager.lightBlue,
                child: Image.asset(
                  Assets.imagesDoctorSpeciality,
                  width: 40.w,
                  height: 40.h,
                ),
              ),
              verticalSpace(8),
              Text(
                'General',
                style: TextStyles.font12DarkBlueRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
