import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../commun_widget/btn.dart';
import '../../../commun_widget/product_item.dart';
import '../../controllers/product_controller.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for products...',
              ),
              onChanged: (value) {
                // Implement search filter here
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryButton('All', 'All', () {
                // Handle category selection (e.g., show all products)
              }),
              CategoryButton('Clothes', 'Clothes', () {
                // Handle category selection (e.g., show clothes products)
              }),
              CategoryButton('Phones', 'Phones', () {
                // Handle category selection (e.g., show phones products)
              }),
              CategoryButton('Laptops', 'Laptops', () {
                // Handle category selection (e.g., show laptops products)
              }),
            ],
          ),
          // Display products based on the selected category
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: productController.products.length,
                itemBuilder: (context, index) {
                  final product = productController.products[index];
                  return ProductItem(product);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
