import 'package:decoze_app/core/extensions/sized_box_extension.dart';
import 'package:decoze_app/presentation/controllers/complete_profile_controller.dart';
import 'package:flutter/material.dart';

class CompleteBottomSheet extends StatelessWidget {
  const CompleteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final completeController = CompleteProfileController.instance;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        10.h,
        ListTile(
          title: const Text("Male"),
          onTap: () {
            completeController.genderController!.text = "Male";
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Female"),
          onTap: () {
            completeController.genderController!.text = "Female";
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Other"),
          onTap: () {
            completeController.genderController!.text = "Other";
            Navigator.pop(context);
          },
        ),
        10.h,
      ],
    );
  }
}
