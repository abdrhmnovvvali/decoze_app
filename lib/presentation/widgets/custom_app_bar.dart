import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_paddings.dart';
import '../../core/constants/app_text_styles.dart';
import '../../core/extensions/sized_box_extension.dart';
import '../../core/extensions/widget_state_all_extension.dart';
import '../../core/helpers/go.dart';
import '../../cubits/cart/cart_cubit.dart';
import '../../cubits/cart/cart_state.dart';
import '../pages/categories/my_card_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.onPressed,
    this.showLeading = true,
    this.showAppBar = true,
    this.actions,
    this.leadingIcon,
    this.showCartIcon = false,
  });

  final String? title;
  final void Function()? onPressed;
  final bool showLeading;
  final bool showAppBar;
  final List<Widget>? actions;
  final Widget? leadingIcon;
  final bool showCartIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.ebony,
      foregroundColor: AppColors.white,
      surfaceTintColor: AppColors.transparent,
      automaticallyImplyLeading: false,
      leadingWidth: 68,
      titleSpacing: showLeading ? 0 : 24,
      centerTitle: true,
      actions: [
        // Səbət iconu göstərmək üçün şərt əlavə edirik
        if (showCartIcon)
          BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              int cartCount = 0;
              if (state is CartSuccessful) {
                cartCount = state.cartItems.length;
              }

              return Stack(
                clipBehavior: Clip.none,
                children: [
                  IconButton(
                    onPressed: () {
                      Go.to(context, const MyCartPage());
                    },
                    icon: SvgPicture.asset(
                      AppAssets.shopping,
                      colorFilter: ColorFilter.mode(
                        AppColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  if (cartCount > 0)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: AppPaddings.a10,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          cartCount.toString(),
                          style: const TextStyle(
                            color: AppColors.ebony,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ...?actions,
        24.w,
      ],
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
      title: title != null ? Text(title!, style: AppTextStyles.h2Bold) : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(showAppBar ? kToolbarHeight : 0);
}
