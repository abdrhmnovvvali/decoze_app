import 'package:flutter/material.dart';

import '../../../core/constants/app_paddings.dart';
import '../../../core/extensions/sized_box_extension.dart';
import '../../controllers/complete_profile_controller.dart';
import 'widgets/buttons/continue_button.dart';
import 'widgets/views/complete_app_bar.dart';
import 'widgets/views/inputs.dart';
import 'widgets/views/profile_drag.dart';

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({super.key});

  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  final completeController = CompleteProfileController.instance;

  @override
  void initState() {
    completeController.init();
    super.initState();
  }

  @override
  void dispose() {
    completeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompleteAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.h24,
          child: Column(
            children: [ProfileDrag(), 24.h, Inputs(), 65.h, ContinueButton()],
          ),
        ),
      ),
    );
  }
}
