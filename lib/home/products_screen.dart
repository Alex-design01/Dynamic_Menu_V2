import 'package:dynamic_menu_v2/objects/product.dart';
import 'package:dynamic_menu_v2/widgets/category_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product("Hauptgericht", "Wiener", "mit Pommes und Salat"),
      Product("Desert", "Eisbecher", "1 Kugel Erdbeere und Vanille"),
      Product("Getränk", "Cola", null),
      Product("Hauptgericht", "Burger", "mit Pommes und Salat"),
      Product("Desert", "Mohr im Hemd", "Kuchen mit Schokolade"),
      Product("Getränk", "Cola", null),
    ];

    Map<String, List<Product>> map = {};
    Set<String> categorys = {};
    products.forEach(
      (product) {
        categorys.add(product.category);
      },
    );

    categorys.forEach(
      (category) {
        List<Product> list = [];
        products.forEach(
          (product) {
            category == product.category ? list.add(product) : 0;
          },
        );
        map[category] = list;
      },
    );
    List<List<Product>> displayList = map.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Menu"),
      ),
      body: ListView.builder(
        itemCount: displayList.length,
        itemBuilder: (context, index) {
          return CategoryCard(displayList[index]);
        },
      ),
    );
  }
}
