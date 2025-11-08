
import '../../../../core/constants/app_assets.dart';
import '../../../../data/model/nav_item_model.dart';

class ProductNavItemData {
  static const List<NavItemModel> bottomNavItems = [
    NavItemModel(label: 'Home', icon: AppAssets.home),
    NavItemModel(label: 'Category', icon: AppAssets.category),
    NavItemModel(label: 'Card', icon: AppAssets.shopping),
    NavItemModel(label: 'Profile', icon: AppAssets.profile),
  ];
}
