import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_radiuses.dart';
import '../../data/model/nav_item_model.dart';

class CustomBottomNavBar extends StatefulWidget {
  final List<NavItemModel> items;
  final ValueChanged<int>? onTap;

  const CustomBottomNavBar({super.key, required this.items, this.onTap});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    widget.onTap?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppRadiuses.tLR12,
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.artistCharcoal,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.luckyGrey,

        items: List.generate(widget.items.length, (index) {
          final item = widget.items[index];
          final isSelected = _selectedIndex == index;

          return BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                item.icon,
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  isSelected ? AppColors.primary : AppColors.luckyGrey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: item.label,
          );
        }),
      ),
    );
  }
}
