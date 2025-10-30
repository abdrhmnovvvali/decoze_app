import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_radius.dart';
import '../../../utils/extensions/widget_state_property_all_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    super.key,
    required this.iconSvg,
    required this.onPressed,
  });

  final String iconSvg;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: AppRadiuses.a10,
      overlayColor: AppColors.vanillaDrop.toWspAll,
      child: SizedBox(
        height: 52,
        width: 72,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.transparent,
            borderRadius: AppRadiuses.a8,
            border: Border.all(color: AppColors.millionGrey,width: 1),
          ),
          child: Center(
            child: SvgPicture.asset(iconSvg, height: 24, width: 24),
          ),
        ),
      ),
    );
  }
}
