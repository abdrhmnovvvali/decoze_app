import 'package:decoze/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
       textAlign: TextAlign.center,
        title,
        style: AppTextStyles.bold700,
       
      ),
    );
  }
}
