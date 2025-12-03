import '../../data/model/product_model.dart';
import '../dio/api_services.dart';

class ProductRepository {
  final ApiService api;

  ProductRepository(this.api);

  Future<List<ProductModel>> getProducts() async {
    final response = await api.getProducts();
    final List products = response.data['products'];
    return products.map((e) => ProductModel.fromJson(e)).toList();
  }
}
