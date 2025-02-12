import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.imagesDocdocLogo),
        SizedBox(
          width: 8.w,
        ),
        Text(
          'Docdoc',
          style: TextStyles.font24Black700Weight,
        ),
      ],
    );
  }
}
