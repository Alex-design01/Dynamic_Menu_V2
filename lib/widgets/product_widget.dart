import 'package:dynamic_menu_v2/objects/product.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? description = product.description ?? "";
    return ListTile(
      title: Text(product.name),
      subtitle: Text(description),
      onTap: () => showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 200,
            child: Center(
              child: SizedBox(
                  height: 80, child: BottomSheetDescription(product: product)),
            ),
          );
        },
      ),
    );
  }
}

class BottomSheetDescription extends StatelessWidget {
  final Product product;
  const BottomSheetDescription({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(product.name),
          Container(
            height: 80,
            child: Row(
              children: [
                Icon(Icons.add_circle_outline),
                Container(
                  height: 30,
                  width: 30,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Icon(Icons.remove_circle_outline_sharp),
              ],
            ),
          )
        ],
      ),
    );
  }
}
