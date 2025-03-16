import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font11GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorManager.moreLighterGray,
          child: SvgPicture.asset(
            Assets.imagesNotification,
          ),
        ),
      ],
    );
  }
}
