import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DoctorsSkeltonizerLoading extends StatelessWidget {
  const DoctorsSkeltonizerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Skeletonizer(
          containersColor: ColorManager.lightGray,
          ignorePointers: EditableText.debugDeterministicCursor,
          enabled: true,
          child: Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                CachedNetworkImage(
                  width: 110.w,
                  height: 120.h,
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.G7QuipBQVVrZjOUKdKxKzgHaGe?w=249&h=217&c=7&r=0&o=5&pid=1.7',
                  progressIndicatorBuilder: (context, url, progress) =>
                      CircularProgressIndicator(
                    value: progress.progress,
                    color: ColorManager.lightGray,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        'Degree | 010255545',
                        style: TextStyles.font12GrayMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        'Email@gmail.com',
                        style: TextStyles.font12GrayMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
