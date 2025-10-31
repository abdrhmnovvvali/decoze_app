import 'package:decoze_app/core/extensions/sized_box_extension.dart';

import '../../core/constants/app_assets.dart';
import 'social_icon_button.dart';
import 'package:flutter/material.dart';

import 'or_divider.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(text: 'or Continue with'),
        16.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 24,
          children: [
            SocialIconButton(iconSvg: AppAssets.facebook, onPressed: () {}),
            SocialIconButton(iconSvg: AppAssets.google, onPressed: () {}),
            SocialIconButton(iconSvg: AppAssets.apple, onPressed: () {}),
          ],
        ),
      ],
    );
  }
}