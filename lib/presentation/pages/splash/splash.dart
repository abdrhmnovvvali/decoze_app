
// import 'package:decoze_app/core/constants/app_assets.dart';
// import 'package:decoze_app/core/helpers/go.dart';
// import 'package:decoze_app/core/helpers/pager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     super.initState();
//     _waitSplash();
//   }

//   void _waitSplash() async {
//     await Future.delayed(const Duration(seconds: 3));
//     if (!mounted) return;
//     Go.replace(context, Pager.welcome);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SvgPicture.asset(AppAssets.appLogo, width: 430, height: 138),
//       ),
//     );
//   }
// }
