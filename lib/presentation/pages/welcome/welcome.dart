
// import 'package:decoze_app/core/constants/app_assets.dart';
// import 'package:decoze_app/core/constants/app_text_styles.dart';
// import 'package:decoze_app/core/extensions/sized_box_extension.dart';
// import 'package:decoze_app/core/helpers/go.dart';
// import 'package:decoze_app/core/helpers/pager.dart';
// import 'package:decoze_app/presentation/widgets/custom_button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class WelcomePage extends StatefulWidget {
//   const WelcomePage({super.key});

//   @override
//   State<WelcomePage> createState() => _WelcomePageState();
// }

// class _WelcomePageState extends State<WelcomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               274.h,
//               SvgPicture.asset(AppAssets.welcomeLogo, width: 229, height: 142),
//               30.h,
//               Padding(
//                 padding: const EdgeInsets.all(90),
//                 child: Text(
//                   ' Style your spaces & shop for all your decor needs',
//                   textAlign: TextAlign.center,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: AppTextStyles.semiBold500,
//                 ),
//               ),
//               100.h,
//               SizedBox(
//                 width: 380,
//                 height: 56,
//                 child: CustomButton(
//                   buttonTitle: "Get Started",
              
//                   onPressed: () {
//                     Go.to(context, Pager.onboard);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
