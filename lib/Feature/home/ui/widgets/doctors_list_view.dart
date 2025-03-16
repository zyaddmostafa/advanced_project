import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/Feature/home/ui/widgets/doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length ?? 0,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
