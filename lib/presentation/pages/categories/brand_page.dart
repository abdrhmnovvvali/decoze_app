import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/sized_box_extension.dart';
import '../../../data/model/product_model.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/filter_button.dart';
import 'widgets/product_card.dart';
import 'product_detail_page.dart';

class BrandPage extends StatefulWidget {
  final String categoryName;
  final List<ProductModel> categoryProducts;

  const BrandPage({
    super.key,
    required this.categoryName,
    required this.categoryProducts,
  });

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  String? selectedBrand;

  @override
  void initState() {
    super.initState();
    // Əgər branda görə məhsullar varsa, birinci brand avtomatik seçilsin
    final brands = {for (var p in widget.categoryProducts) p.brand}.toList();
    if (brands.isNotEmpty) selectedBrand = brands.first;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 25 * 2 - 16) / 2;

    // Mövcud brandlər
    final brands = {for (var p in widget.categoryProducts) p.brand}.toList();

    // Seçilmiş brand üzrə filterlənmiş məhsullar
    final filteredProducts = widget.categoryProducts
        .where((p) => p.brand == selectedBrand)
        .toList();

    return Scaffold(
      backgroundColor: AppColors.ebony,
      appBar: CustomAppBar(title: widget.categoryName),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.h,

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(brands.length, (index) {
                  final brand = brands[index];
                  final isSelected = selectedBrand == brand;

                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: FilterButton(
                      label: brand!,
                      isSelected: selectedBrand == brand,
                      onTap: () {
                        setState(() => selectedBrand = brand);
                      },
                    ),
                  );
                }),
              ),
            ),

            36.h,
            Expanded(
              child: filteredProducts.isNotEmpty
                  ? SingleChildScrollView(
                      child: Wrap(
                        spacing: 6,
                        runSpacing: 24,
                        children: List.generate(filteredProducts.length, (i) {
                          final product = filteredProducts[i];
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
                        }),
                      ),
                    )
                  : const Center(
                      child: Text(
                        'Bu branda aid məhsul yoxdur',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
