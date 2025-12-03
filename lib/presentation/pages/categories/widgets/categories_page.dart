import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_texts.dart';
import '../../../../core/extensions/sized_box_extension.dart';
import '../../../../cubits/product_cubit.dart';
import '../../../../cubits/product_state.dart';
import '../../../../data/model/product_model.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_button_nav_bar.dart';
import 'brand_page.dart';
import 'filter_button.dart';
import 'product_card.dart';
import 'product_detail_page.dart';
import 'product_nav_item_data.dart';
import 'shimmer.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  String selectedCategory = "All";

  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 25 * 2 - 16) / 2;

    return Scaffold(
      backgroundColor: AppColors.ebony,
      appBar: CustomAppBar(title: AppTexts.categories),
      body: SingleChildScrollView(
        padding: AppPaddings.h25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            36.h,
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                if (state is ProductLoaded) {
                  final categories = [
                    "All",
                    ...{for (var p in state.products) p.category},
                  ];

                  return Wrap(
                    spacing: 10,
                    runSpacing: 16,
                    children: List.generate(categories.length, (index) {
                      final cat = categories[index];
                      final isSelected = selectedCategory == cat;
                      return FilterButton(
                        label: cat,
                        isSelected: isSelected,
                        onTap: () {
                          setState(() => selectedCategory = cat);

                          if (cat != "All") {
                            final categoryProducts = state.products
                                .where((p) => p.category == cat)
                                .toList();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => BrandPage(
                                  categoryName: cat,
                                  categoryProducts: categoryProducts,
                                ),
                              ),
                            );
                          }
                        },
                      );
                    }),
                  );
                } else if (state is ProductError) {
                  return Text(
                    "Xəta baş verdi: ${state.message}",
                    style: const TextStyle(color: Colors.red),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            43.h,
            const Divider(color: Colors.white24, thickness: 1),
            48.h,
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return ProductShimmer();
                } else if (state is ProductLoaded) {
                  List<Product> products = state.products;
                  if (selectedCategory != "All") {
                    products = products
                        .where((p) => p.category == selectedCategory)
                        .toList();
                  }

                  return Wrap(
                    spacing: 6,
                    runSpacing: 24,
                    children: products.map((product) {
                      return SizedBox(
                        width: cardWidth,
                        height: 270,
                        child: ProductCard(
                          product: product,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    ProductDetailPage(product: product),
                              ),
                            );
                          },
                        ),
                      );
                    }).toList(),
                  );
                } else if (state is ProductError) {
                  return Center(
                    child: Text(
                      'Xəta: ${state.message}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            40.h,
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        items: ProductNavItemData.bottomNavItems,
      ),
    );
  }
}
