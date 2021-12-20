import 'package:get/get.dart';
import 'dart:math';

import 'package:getx_app/models/product.dart';

class Products extends GetxController {
  final RxList<Product> _items = List.generate(
      100,
      (index) => Product(
          id: index,
          name: 'Product $index',
          price: Random().nextDouble() * 100,
          inWishList: false.obs)).obs;

  List<Product> get items {
    return [..._items];
  }

  List<Product> get wishListItems {
    return _items.where((item) => item.inWishList.value == true).toList();
  }

  void addItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = true;
  }

  void removeItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = false;
  }
}
