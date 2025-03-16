import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListViewItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationsData;
  final int selectedIndex;
  const SpecialityListViewItem({
    super.key,
    required this.itemIndex,
    required this.specializationsData,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          selectedIndex == itemIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManager.darkBlue,
                      width: 1,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorManager.lightBlue,
                    child: Image.asset(
                      Assets.imagesDoctorSpeciality,
                      width: 42.w,
                      height: 42.h,
                    ),
                  ),
                )
              : CircleAvatar(
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
