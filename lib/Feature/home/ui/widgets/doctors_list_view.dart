import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                      width: 110.w,
                      height: 120.h,
                      'https://th.bing.com/th/id/OIP.G7QuipBQVVrZjOUKdKxKzgHaGe?w=249&h=217&c=7&r=0&o=5&pid=1.7'),
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
                        'Degree | 111111',
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
          );
        },
      ),
    );
  }
}
