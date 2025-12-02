// import 'package:decoze_app/data/model/product_model.dart';
// import 'package:dio/dio.dart';

// class ProductService {
//   static Future<ProductModel> searchProducts({String? query}) async {
//     const url = 'https://dummyjson.com/products/search';
   
//     final Map<String, dynamic>? queryParameters = {'q': query};
//     final response = await Dio().get(url, queryParameters: queryParameters);
//     return ProductModel.fromJson(response.data);
//   }
// }
