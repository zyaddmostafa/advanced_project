import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                image: AssetImage(Assets.imagesContainerPattern),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: TextStyles.font13BlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 16,
            child: Image.asset(
              Assets.imagesContainerDoctor,
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
