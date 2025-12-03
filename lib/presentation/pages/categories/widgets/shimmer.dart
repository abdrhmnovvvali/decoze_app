import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_radiuses.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/app_colors.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.luckyGrey,
      highlightColor: AppColors.luckyGrey,
      child: GridView.builder(
        padding: AppPaddings.a10,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 12,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (_, __) => Container(
          decoration: BoxDecoration(
            color: AppColors.luckyGrey,
            borderRadius: AppRadiuses.a8,
          ),
        ),
      ),
    );
  }
}
