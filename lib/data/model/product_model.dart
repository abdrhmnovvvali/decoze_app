class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final double rating;
  final String image;
  final String category;
  final String? brand;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.image,
    required this.category,
    this.brand,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      image: json['thumbnail'] ?? '',
      category: json['category'] ?? '',
      brand: json['brand'] ?? json['brandName'] ?? json['company'] ?? 'Unknown',
    );
  }
}
