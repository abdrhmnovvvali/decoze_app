import 'package:decoze_app/data/model/product_card_model.dart';
import 'package:decoze_app/data/model/product_model.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartSuccessful extends CartState {
  final List<ProductModel> cartItems;
  final double total;

  CartSuccessful({required this.cartItems})
      : total = cartItems.fold(
          0,
          (sum, item) => sum + (item.price ?? 0) * (item.quantity ?? 1),
        );
}
