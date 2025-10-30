import 'package:animate_do/animate_do.dart';
import 'package:decoze/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_radius.dart';
import '../../../utils/extensions/color_filter_extensions.dart';
import '../../../utils/extensions/sized_box_extensions.dart';

class RememberMeOption extends StatefulWidget {
  const RememberMeOption({super.key});

  @override
  State<RememberMeOption> createState() => _RememberMeOptionState();
}

class _RememberMeOptionState extends State<RememberMeOption> {
  bool _isChecked = false;

  void _toggleCheck() {
    _isChecked = !_isChecked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCheck,
      child: ColoredBox(
        color: AppColors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: _isChecked ? AppColors.primary : AppColors.transparent,
                  borderRadius: AppRadiuses.a4,
                  border: _isChecked
                      ? null
                      : Border.all(width: 1, color: AppColors.steam),
                ),
                child: _isChecked
                    ? FadeIn(
                        child: Center(
                          child: SvgPicture.asset(
                            AppAssets.check,
                            colorFilter: AppColors.ebony.toColorFilter,
                          ),
                        ),
                      )
                    : null,
              ),
            ),
            12.w,
            const Text('Remember me', style: AppTextStyles.medium500),
          ],
        ),
      ),
    );
  }
}
