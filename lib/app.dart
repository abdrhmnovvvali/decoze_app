import 'package:decoze_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'core/constants/app_colors.dart';
import 'package:decoze_app/presentation/pages/splash/splash.dart'; 


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DecozeApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.ebony,
        fontFamily: AppConstants.appFontFamily,
      ),
      home: SplashPage(),
    );
  }
}

