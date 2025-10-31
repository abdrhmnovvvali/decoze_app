import 'package:decoze_app/presentation/bottomsheets/app_bottom_sheets.dart';
import 'package:decoze_app/presentation/pages/complete_profile/widgets/views/complete_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../controllers/complete_profile_controller.dart';
import '../../../../widgets/custom_input.dart' show CustomInput;

class Inputs extends StatelessWidget {
  const Inputs({super.key});

  @override
  Widget build(BuildContext context) {
    final completeController = CompleteProfileController.instance;
    return Column(
      spacing: 24,
      children: [
        CustomInput(
          controller: completeController.firstNameController,
          focusNode: completeController.firstNameFocus,
          hintText: "First Name",
        ),
        CustomInput(
          controller: completeController.lastNameController,
          focusNode: completeController.lastNameFocus,
          hintText: "Last Name",
        ),
        CustomInput(
          controller: completeController.emailController,
          focusNode: completeController.emailFocus,
          hintText: "Email",
          keyboardType: TextInputType.emailAddress,
        ),
        CustomInput(
          controller: completeController.dateOfBirthController,
          focusNode: completeController.dateOfBirthFocus,
          hintText: "Date of Birth",
          readOnly: true,
          suffixSvg: AppAssets.calendar,
        ),
        CustomInput(
          controller: completeController.phoneNumberController,
          focusNode: completeController.phoneNumberFocus,
          hintText: "Phone Number",
          keyboardType: TextInputType.phone,
        ),
        CustomInput(
          controller: completeController.genderController,
          focusNode: completeController.genderFocus,
          hintText: 'Gender',
          readOnly: true,
          onTap: () => AppBottomSheet.showBottomSheet(
            context: context,
            child: CompleteBottomSheet(),
          ),
        ),
      ],
    );
  }
}
