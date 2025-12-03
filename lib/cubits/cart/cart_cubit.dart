import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/model/product_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final List<ProductModel> _cartItems = [];

  void addToCart(ProductModel product) {
    final existingIndex = _cartItems.indexWhere((p) => p.id == product.id);

    if (existingIndex != -1) {
      // eyni məhsul varsa, copyWith ilə quantity artırırıq
      final existing = _cartItems[existingIndex];
      _cartItems[existingIndex] = existing.copyWith(
        quantity: (existing.quantity ?? 1) + 1,
      );
    } else {
      _cartItems.add(product.copyWith(quantity: 1));
    }

    emit(CartSuccessful(cartItems: List.from(_cartItems)));
  }

  void removeFromCart(ProductModel product) {
    _cartItems.removeWhere((p) => p.id == product.id);
    emit(CartSuccessful(cartItems: List.from(_cartItems)));
  }

  int get count =>
      _cartItems.fold(0, (sum, item) => sum + (item.quantity ?? 1));

  double get total => _cartItems.fold(
    0,
    (sum, item) => sum + (item.price * (item.quantity ?? 1)),
  );

  List<ProductModel> get cartItems => List.unmodifiable(_cartItems);
}
