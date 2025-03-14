import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctor_blue_container.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 18, 20, 28),
          child: Column(
            children: [
              const HomeTopBar(),
              verticalSpace(16),
              const DoctorBlueContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
