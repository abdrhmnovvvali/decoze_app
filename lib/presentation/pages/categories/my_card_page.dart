import 'widgets/product_nav_item_data.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_button_nav_bar.dart';

import '../../../core/constants/app_paddings.dart';
import '../../../cubits/cart/cart_cubit.dart';
import '../../../cubits/cart/cart_state.dart';
import '../../widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/extensions/sized_box_extension.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ebony,
      appBar: CustomAppBar(title: 'My Card'),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartSuccessful && state.cartItems.isNotEmpty) {
            return Padding(
              padding: AppPaddings.h24,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: state.cartItems.length,
                      separatorBuilder: (_, __) =>
                          const Divider(color: Colors.white24),
                      itemBuilder: (context, index) {
                        final item = state.cartItems[index];
                        return ListTile(
                          leading: Image.network(
                            item.image ?? '',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            item.title ?? '',
                            style: const TextStyle(color: AppColors.primary),
                          ),
                          subtitle: Text(
                            '\$${item.price?.toStringAsFixed(2)} x ${item.quantity}',
                            style: const TextStyle(
                              color: AppColors.vanillaDrop,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.redAccent,
                            ),
                            onPressed: () =>
                                context.read<CartCubit>().removeFromCart(item),
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(color: Colors.white24),
                  12.h,
                  Row(
                    children: [
                      Text('Total', style: AppTextStyles.bold700),
                      Spacer(),
                      Text(
                        " \$${state.total.toStringAsFixed(2)}",
                        style: AppTextStyles.bold700.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  12.h,
                  CustomButton(text: 'Check Out'),
                  24.h,
                ],
              ),
            );
          } else {
            return const Center(
              child: Text(
                'Səbət boşdur',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
        },
      ),

      bottomNavigationBar: CustomBottomNavBar(
        items: ProductNavItemData.bottomNavItems,
      ),
    );
  }
}
