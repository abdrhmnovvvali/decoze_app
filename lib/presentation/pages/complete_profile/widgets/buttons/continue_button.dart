// import 'package:decoze_app/presentation/controllers/complete_profile_controller.dart';
// import 'package:flutter/material.dart';

// import '../../../../../core/helpers/go.dart';
// import '../../../../../core/helpers/pager.dart';
// import '../../../../widgets/custom_button.dart';

// class ContinueButton extends StatelessWidget {
//   const ContinueButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final completeController = CompleteProfileController.instance;
//     return SafeArea(
//       child: ValueListenableBuilder(
//         valueListenable: completeController.isFilled,
//         builder: (_, isFilled, _) {
//           return CustomButton(
//             text: 'Continue',
//             enabled: isFilled,
//             onPressed: () => Go.removeAll(context, Pager.completedProfile),
//           );
//         },
//       ),
//     );
//   }
// }
