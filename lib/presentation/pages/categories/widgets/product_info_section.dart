import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/extensions/sized_box_extension.dart';
import '../../../../data/model/product_model.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductModel product;

  const ProductInfoSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 10,
            color: AppColors.text2,
          ),
        ),
        4.h,
        if (product.category.isEmpty && product.category.isEmpty)
          Text(
            product.category,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.lemon,
            ),
          ),
        4.h,
        Text(
          "\$ ${product.price.toStringAsFixed(2)}",
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        4.h,
        Row(
          children: [
            SvgPicture.asset(AppAssets.star, height: 14, width: 14),
            4.w,
            Text(
              product.rating.toString(),
              style: const TextStyle(
                color: AppColors.text2,
                fontSize: 10,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(AppAssets.plus, height: 14, width: 14),
          ],
        ),
      ],
    );
  }
}
