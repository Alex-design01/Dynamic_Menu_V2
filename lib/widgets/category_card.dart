import 'package:dynamic_menu_v2/objects/product.dart';
import 'package:dynamic_menu_v2/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  List<Product> products = [];
  CategoryCard(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minHeight: 100,
          minWidth: double.infinity,
          maxHeight: double.infinity),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        elevation: 2.0,
        child: Column(
          children: [
            ListTile(
              title: Text(
                products.first.category,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductWidget(products[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
