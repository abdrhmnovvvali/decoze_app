import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/repository/product_repository.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository repository;
  ProductCubit(this.repository) : super(ProductInitial());

  Future<void> fetchProducts() async {
    try {
      emit(ProductLoading());
      final products = await repository.getProducts();
      emit(ProductLoaded(products));
      if (products.isEmpty) {
        emit(ProductNotFound());
      }
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
