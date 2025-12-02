import '../../../core/constants/app_paddings.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/extensions/sized_box_extension.dart';
import '../../../core/helpers/go.dart';
import '../../../core/helpers/pager.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_profile_photo.dart';
import 'package:flutter/material.dart';

import '../../controllers/complete_profile_controller.dart';

class CompletedProfilePage extends StatelessWidget {
  const CompletedProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final completeController = CompleteProfileController.instance;
    return Scaffold(
      body: Padding(
        padding: AppPaddings.h24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  137.h,
                  ValueListenableBuilder(
                    valueListenable: completeController.profileImageController,
                    builder: (_, fileImage, _) {
                      return CustomProfilePhoto(radius: 75);
                    },
                  ),
                  20.h,
                  Text(
                    'Hi ${completeController.firstNameController?.text} !',
                    style: AppTextStyles.bold700,
                  ),
                  15.h,
                  Text('Congratulations!', style: AppTextStyles.h2Bold),
                  10.h,
                  Text(
                    'Your Account is ready to use',
                    style: AppTextStyles.h2Bold,
                  ),
                ],
              ),
            ),
            SafeArea(
              child: CustomButton(
                text: 'Continue',
                enabled: true,
                onPressed: () => Go.to(context, Pager.fillProfile),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
