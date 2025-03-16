import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/speciality_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key, required this.specializationsDataList});
  final List<SpecializationsData?> specializationsDataList;

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

int selectedIndex = 0;

class _SpecialityListViewState extends State<SpecialityListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsDataList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationsDataList[index]?.id,
                );
          },
          child: SpecialityListViewItem(
              itemIndex: index,
              specializationsData: widget.specializationsDataList[index],
              selectedIndex: selectedIndex),
        ),
      ),
    );
  }
}
