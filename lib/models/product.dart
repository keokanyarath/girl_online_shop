import 'package:flutter/material.dart';

class Product {

  final String? id, title, description;
  final List<String>? image;
  final int? price;
  final Color? bgColor;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.bgColor = const Color(0xFFEFEFF2),
  });

  List<Product> fromFirebase(List<dynamic> data){
    print("fromFirebase ${data[0]['id']}");
    print("data[i]['price'] ${data[0]['image']}");
    List<Product> tmp = [];
    for (int i = 0; i < data.length; i++){
      
      tmp.add(
        Product(
          id: data[i]['id'],
          image: List<String>.from(data[i]['image']),
          title: data[i]['title'],
          price: data[i]['price'],
          description: data[i]['description']
        )
      );
    }
    return tmp;
  }
}

List<Product> demo_product = [
  Product(
    id: "01",
    image: ["assets/images/product_0.png"],
    title: "Long Sleeve Shirts",
    price: 165,
    description: "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
    bgColor: const Color(0xFFFEFBF9),
    
  ),
  Product(
    id: "02",
    image: ["assets/images/product_1.png"],
    title: "Casual Henley Shirts",
    description: "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
    price: 99,
  ),
  Product(
    id: "03",
    image: ["assets/images/product_2.png"],
    title: "Curved Hem Shirts",
    price: 180,
    description: "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    id: "04",
    image: ["assets/images/product_3.png"],
    title: "Casual Nolin",
    description: "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
