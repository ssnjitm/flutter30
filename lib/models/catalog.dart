import 'package:flutter/material.dart';

class CatalogModel{
  static final items = [
  Item(
    id: 1,
    name: "product1",
    desc: "Description of Product 1",
    price: 20,
    color: "blue",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQox20ZDLF0jzrZbLo63anu84DTH-r_oGojKLxezeRu3w&s",
  ),
];

}
class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}


