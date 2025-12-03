import 'package:flutter/material.dart';

import 'core/constants/app_colors.dart';
import 'core/constants/app_constants.dart';
import 'core/helpers/pager.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DecozeApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primary,
        fontFamily: AppConstants.appFontFamily,
      ),
      home: Pager.categories,
    );
  }
}

