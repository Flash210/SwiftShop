import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../constants/images_strings.dart';
import '../model/product.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    // Simulate fetching products from an API or database
    products.assignAll([
      Product('Product 1', 19.99, img_sold),
      Product('Product 2', 29.99, img_sold),
      // Add more products as needed
    ]);
    super.onInit();
  }
}
