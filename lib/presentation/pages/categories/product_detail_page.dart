import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/sized_box_extension.dart';
import '../../../cubits/cart/cart_cubit.dart';
import '../../../data/model/product_model.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductModel product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ebony,
      appBar: CustomAppBar(
        title: widget.product.title,
        showCartIcon: true,
       
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColors.primary, width: 0.6),
                color: Colors.transparent,
              ),
              child: Text(
                widget.product.brand ?? '',
                style: const TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                widget.product.image,
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            24.h,

            Text(
              widget.product.title,
              style: const TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),

            8.h,

            Text(
              widget.product.description,
              style: const TextStyle(
                color: AppColors.text2,
                fontSize: 14,
                height: 1.5,
              ),
            ),

            16.h,
            const Divider(color: Colors.white24, thickness: 1),
            8.h,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$${widget.product.price.toStringAsFixed(2)}",
                      style: const TextStyle(
                        color: AppColors.lemon,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    6.h,
                    const Text(
                      "User Reviews",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(AppAssets.like),
                    6.h,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColors.lemon,
                          size: 16,
                        ),
                        4.w,
                        Text(
                          widget.product.rating.toString(),
                          style: const TextStyle(
                            color: AppColors.text2,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            140.h,

           CustomButton(
  text: "Add to Cart",
  onPressed: () {
    context.read<CartCubit>().addToCart(widget.product);
    // ScaffoldMessenger.of(context).showSnackBar(
      // SnackBar(
      //   content: Text('${widget.product.title} added to cart'),
      //   backgroundColor: Colors.green,
      // ),
    // );
  },
),


          ],
        ),
      ),
    );
  }
}
