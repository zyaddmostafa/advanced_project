import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final int index;
  final SpecializationsData? specializationsData;
  const DoctorSpecialityListViewItem({
    super.key,
    required this.index,
    required this.specializationsData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            specializationsData?.name ?? '',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
