class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final double rating;
  final String image;
  final String category;
  final String? brand;
  final int? quantity;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.image,
    required this.category,
    this.brand,
    this.quantity,
  });

  ProductModel copyWith({
    int? id,
    String? title,
    String? description,
    double? price,
    double? rating,
    String? image,
    String? category,
    String? brand,
    int? quantity,
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      image: image ?? this.image,
      category: category ?? this.category,
      brand: brand ?? this.brand,
      quantity: quantity ?? this.quantity,
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      image: json['thumbnail'] ?? '',
      category: json['category'] ?? '',
      brand: json['brand'] ?? json['brandName'] ?? json['company'] ?? 'Unknown',
      quantity: 1,
    );
  }
}
