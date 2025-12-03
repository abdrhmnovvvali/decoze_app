import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/extensions/sized_box_extension.dart';
import '../../../../data/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.ebony,
          border: Border.all(
            color: AppColors.artistCharcoal,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(5),
                  ),
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                    height: 144,
                    width: double.infinity,
                    errorBuilder: (_, _, _) =>
                        const Icon(Icons.image_not_supported),
                  ),
                ),

          
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color:AppColors.white, 
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.artistCharcoal,
                        width: 2,
                      ),
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
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
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
                  if (product.category != null && product.category!.isNotEmpty)
                    Text(
                      product.category!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.lemon,
                      ),
                    ),
                  4.h,
                  Text(
                    "\$  ${product.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  4.h,
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.star,
                        height: 14,
                        width: 14,
                      ),
                      4.w,
                      Text(
                        product.rating.toString(),
                        style: const TextStyle(
                          color: AppColors.text2,
                          fontSize: 10,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AppAssets.plus,
                        height: 14,
                        width: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}