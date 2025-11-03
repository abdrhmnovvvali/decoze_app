// import 'package:decoze_app/core/constants/app_paddings.dart';
// import 'package:decoze_app/core/constants/app_text_styles.dart';
// import 'package:decoze_app/core/extensions/sized_box_extension.dart';
// import 'package:decoze_app/core/helpers/go.dart';
// import 'package:decoze_app/core/helpers/pager.dart';
// import 'package:decoze_app/presentation/widgets/custom_button.dart';
// import 'package:decoze_app/presentation/widgets/custom_profile_photo.dart';
// import 'package:flutter/material.dart';

// import '../../controllers/complete_profile_controller.dart';

// class CompletedProfilePage extends StatelessWidget {
//   const CompletedProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final completeController = CompleteProfileController.instance;
//     return Scaffold(
//       body: Padding(
//         padding: AppPaddings.h24,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   137.h,
//                   ValueListenableBuilder(
//                     valueListenable: completeController.profileImageController,
//                     builder: (_, fileImage, _) {
//                       return CustomProfilePhoto(radius: 75);
//                     },
//                   ),
//                   20.h,
//                   Text(
//                     'Hi ${completeController.firstNameController?.text} !',
//                     style: AppTextStyles.h6Semibold,
//                   ),
//                   15.h,
//                   Text('Congratulations!', style: AppTextStyles.h1Bold),
//                   10.h,
//                   Text(
//                     'Your Account is ready to use',
//                     style: AppTextStyles.h6Semibold,
//                   ),
//                 ],
//               ),
//             ),
//             SafeArea(
//               child: CustomButton(
//                 text: 'Continue',
//                 enabled: true,
//                 onPressed: () => Go.to(context, Pager.fillProfile),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
