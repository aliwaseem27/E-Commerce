import 'package:e_commerce/models/category_model.dart';

class Product {
  int? id;
  String? title;
  int? price;
  String? description;
  Category? category;
  List<String>? images;

  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.images});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    images = (json["images"] as List).isEmpty
        ? [
            "https://nayemdevs.com/wp-content/uploads/2020/03/default-product-image.png"
          ]
        : json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['images'] = images;
    return data;
  }
}
