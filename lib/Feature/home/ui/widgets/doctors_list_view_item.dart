import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({
    super.key,
    required this.doctorsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            width: 110.w,
            height: 120.h,
            imageUrl:
                'https://th.bing.com/th/id/OIP.G7QuipBQVVrZjOUKdKxKzgHaGe?w=249&h=217&c=7&r=0&o=5&pid=1.7',
            progressIndicatorBuilder: (context, url, progress) =>
                CircularProgressIndicator(value: progress.progress),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: TextStyles.font12GrayMedium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
