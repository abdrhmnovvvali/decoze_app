import 'package:decoze_app/core/extensions/color_filter_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../widgets/custom_app_bar.dart';

class CompleteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CompleteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingIcon: SvgPicture.asset(
        AppAssets.arrowBack,
        fit: BoxFit.cover,
        colorFilter: AppColors.white.toColorFilter,
      ),
      showAppBar: true,
      title: 'Complete Your profile',
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
