import 'package:decoze_app/data/model/product_card_model.dart';
import 'package:decoze_app/data/model/product_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

import 'product_image_section.dart';
import 'product_info_section.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onTap;

  const ProductCard({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.ebony,
        border: Border.all(color: AppColors.artistCharcoal, width: 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImageSection(imageUrl: product.image.toString(), onTap: onTap),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ProductInfoSection(product: product),
          ),
        ],
      ),
    );
  }
}
