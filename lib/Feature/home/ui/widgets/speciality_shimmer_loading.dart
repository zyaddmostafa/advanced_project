import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
            children: [
              Shimmer.fromColors(
                baseColor: ColorManager.lightGray,
                highlightColor: Colors.white,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorManager.lightBlue,
                  child: Image.asset(
                    Assets.imagesDoctorSpeciality,
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
              ),
              verticalSpace(8),
              Shimmer.fromColors(
                baseColor: ColorManager.lightGray,
                highlightColor: Colors.white,
                child: Text(
                  '',
                  style: TextStyles.font12DarkBlueRegular,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
