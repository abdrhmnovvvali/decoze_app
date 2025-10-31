import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key, this.text = 'or'});

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.millionGrey,
            ),
          ),
        ],
      );
 
  }
}