import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/app_assets.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.imagesDocdocLogLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                begin: AlignmentDirectional.bottomCenter,
                end: AlignmentDirectional.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset(Assets.imagesOnBoardringDoctor),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
