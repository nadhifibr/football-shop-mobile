// To parse this JSON data:
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) =>
    List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String id;
  String name;
  int price;
  String description;
  String thumbnail;
  Category category;
  bool isFeatured;
  String brand;
  int stock;
  String rating;
  int? userId;

  ProductEntry({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.category,
    required this.isFeatured,
    required this.brand,
    required this.stock,
    required this.rating,
    required this.userId,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        category: categoryValues.map[json["category"]] ?? Category.BALL,
        isFeatured: json["is_featured"],
        brand: json["brand"],
        stock: json["stock"],
        rating: json["rating"].toString(),
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "thumbnail": thumbnail,
        "category": categoryValues.reverse[category],
        "is_featured": isFeatured,
        "brand": brand,
        "stock": stock,
        "rating": rating,
        "user_id": userId,
      };
}

// Enum lengkap sesuai CATEGORY_CHOICES Django
enum Category {
  JERSEY,
  SHOES,
  BALL,
  ACCESSORIES,
  TRAINING,
}

// Mapping sesuai JSON Django (lowercase)
final categoryValues = EnumValues({
  "jersey": Category.JERSEY,
  "shoes": Category.SHOES,
  "ball": Category.BALL,
  "accessories": Category.ACCESSORIES,
  "training": Category.TRAINING,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
