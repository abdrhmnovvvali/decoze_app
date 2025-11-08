import 'package:decoze_app/core/extensions/color_filter_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.onTap,
    required this.iconSvg,
    this.width = 28,
    this.height = 28,
    this.iconColor,
  });

  final VoidCallback? onTap;
  final String iconSvg;
  final double width;
  final double height;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        iconSvg,
        width: width,
        height: height,
        colorFilter: iconColor?.toColorFilter,
      ),
    );
  }
}
