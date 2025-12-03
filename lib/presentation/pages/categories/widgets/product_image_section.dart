import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class ProductImageSection extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  const ProductImageSection({
    super.key,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 144,
              width: double.infinity,
              errorBuilder: (_, __, ___) => SvgPicture.asset(AppAssets.photo),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child:GestureDetector (
             onTap: () {
            debugPrint('like is clik');
          },
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.artistCharcoal, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.ebony,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.like,
                    height: 14,
                    width: 14,
                    colorFilter: const ColorFilter.mode(
                      AppColors.artistCharcoal,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
