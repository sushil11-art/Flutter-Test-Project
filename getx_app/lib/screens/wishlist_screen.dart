import 'package:get/get.dart';
import 'package:getx_app/controllers/item_controller.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  final Products productController = Get.put(Products());

  WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WishList'),
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: productController.wishListItems.length,
            itemBuilder: (context, index) {
              final item = productController.wishListItems[index];
              return Card(
                key: ValueKey(item.id),
                margin: const EdgeInsets.all(5),
                color: Colors.blue[200],
                child: ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  // This button use to remove )the item from wish list
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      item.inWishList.value = false;
                      productController.removeItem(item.id);
                    },
                  ),
                ),
              );
            },
          ),
        ));
  }
}
