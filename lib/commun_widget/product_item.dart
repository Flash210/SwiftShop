import 'package:flutter/material.dart';

import '../features/model/product.dart';

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        product.image,
        width: 80, // Set the desired image width
        height: 80, // Set the desired image height
        fit: BoxFit.cover,
      ),
      title: Text(product.title),
      subtitle: Text(
          '\$${product.price.toStringAsFixed(2)}'), // Display price with 2 decimal places
      // Add more product details here
    );
  }
}
