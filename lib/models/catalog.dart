// ignore_for_file: public_member_api_docs, sort_constructors_first

class Item {
  final int id;
  final String name;
  final String desc;
  final double price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "product1",
      desc: "Description of Product 1",
      price: 20,
      color: "blue",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQox20ZDLF0jzrZbLo63anu84DTH-r_oGojKLxezeRu3w&s",
    ),
    Item(
      id: 2,
      name: "product2",
      desc: "Description of Product 2",
      price: 999,
      color: "red",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNEHHI2-lIYsAIvgH0dBGRFNd_dG1OZf-syA&s",
    ),
    Item(
      id: 3,
      name: "product3",
      desc: "Description of Product 3",
      price: 999,
      color: "green",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDL-wSFAJAeL5s3gRuSkko4qxsXQk_S-ozWQ&s",
    ),
    Item(
      id: 5,
      name: "product4",
      desc: "Description of Product 4",
      price: 1023,
      color: "pink",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXJsFtjFfWFldbhVVE753SrvFQ6DX1Dw6Hw&s",
    ),
    Item(
      id: 4,
      name: "product4",
      desc: "Description of Product 4",
      price: 1023,
      color: "pink",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXJsFtjFfWFldbhVVE753SrvFQ6DX1Dw6Hw&s",
    ),
    Item(
      id: 4,
      name: "product4",
      desc: "Description of Product 4",
      price: 1023,
      color: "pink",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXJsFtjFfWFldbhVVE753SrvFQ6DX1Dw6Hw&s",
    ),
    Item(
      id: 4,
      name: "product4",
      desc: "Description of Product 4",
      price: 1023,
      color: "pink",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXJsFtjFfWFldbhVVE753SrvFQ6DX1Dw6Hw&s",
    ),
    Item(
      id: 4,
      name: "product4",
      desc: "Description of Product 4",
      price: 1023,
      color: "pink",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXJsFtjFfWFldbhVVE753SrvFQ6DX1Dw6Hw&s",
    ),
    Item(
      id: 4,
      name: "product4",
      desc: "Description of Product 4",
      price: 1023,
      color: "pink",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXJsFtjFfWFldbhVVE753SrvFQ6DX1Dw6Hw&s",
    ),
    Item(
      id: 4,
      name: "product4",
      desc: "Description of Product 4",
      price: 1023,
      color: "pink",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXJsFtjFfWFldbhVVE753SrvFQ6DX1Dw6Hw&s",
    ),

    // Add more items here as needed
  ];
}
