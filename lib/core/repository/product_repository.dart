import 'package:decoze_app/core/dio/api_services.dart';
import 'package:decoze_app/data/model/product_model.dart';

class ProductRepository {
  final ApiService api;

  ProductRepository(this.api);

  Future<List<Product>> getProducts() async {
    final response = await api.getProducts();
    final List products = response.data['products'];
    return products.map((e) => Product.fromJson(e)).toList();
  }
}
