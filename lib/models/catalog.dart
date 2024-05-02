// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  const Item(
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  );

  Item copyWith({
    num? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      (map["id"] ?? 0) as num,
      (map["name"] ?? '') as String,
      (map["desc"] ?? '') as String,
      (map["price"] ?? 0) as num,
      (map["color"] ?? '') as String,
      (map["image"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
