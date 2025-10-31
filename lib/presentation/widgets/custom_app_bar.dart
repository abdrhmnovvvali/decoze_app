import 'package:decoze_app/core/extensions/widget_state_property_all_extensions.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_paddings.dart';
import '../../core/constants/app_text_styles.dart';
import '../../core/helpers/go.dart';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.onPressed,
    this.showLeading = true,
    this.showAppBar = true,
    this.actions,
    this.leadingIcon,
  });

  final String? title;
  final void Function()? onPressed;
  final bool showLeading;
  final bool showAppBar;
  final List<Widget>? actions;
  final Widget? leadingIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.ebony,
      foregroundColor: AppColors.ebony,
      surfaceTintColor: AppColors.transparent, //bax
      automaticallyImplyLeading: false,
      leadingWidth: 68,
      titleSpacing: showLeading ? 0 : 24,
      actions: actions,
      leading: showLeading
          ? InkWell(
              splashColor: AppColors.transparent,
              overlayColor: AppColors.transparent.toWspAll,
              splashFactory: NoSplash.splashFactory,
              onTap: () {
                onPressed?.call();
                Go.back(context);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: AppPaddings.r16,
                  child:
                      leadingIcon ??
                      const Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                        size: 28,
                      ),
                ),
              ),
            )
          : null,

      title: title != null ? Text(title!, style: AppTextStyles.bold700) : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(showAppBar ? kToolbarHeight : 0);
}