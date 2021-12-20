import 'package:get/get.dart';
import 'package:getx_app/controllers/item_controller.dart';
import 'package:flutter/material.dart';
import 'package:getx_app/screens/wishlist_screen.dart';

class ProductOverviewPage extends StatelessWidget {
 
  final Products productController = Get.put(Products());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shops'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),

          InkWell(
            child: Container(
              width: 300,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              // Use Obx(()=> to update Text() whenever _wishList.items.length is changed
              child: Obx(() => Text(
                    'Wish List: ${productController.wishListItems.length}',
                    style: const TextStyle(fontSize: 28, color: Colors.white),
                  )),
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => WishListScreen())),
          ),

          const SizedBox(
            height: 20,
          ),

          Expanded(
              // Display all products in home screen
              child: ListView.builder(
                  itemCount: productController.items.length,
                  // List item widget
                  itemBuilder: (context, index) {
                    final product = productController.items[index];
                    return Card(
                      key: ValueKey(product.id),
                      margin: EdgeInsets.all(5),
                      color: Colors.amberAccent,
                      child: ListTile(
                        title: Text(product.name),
                        subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                        trailing: Obx(() => IconButton(
                              onPressed: () {
                                if (product.inWishList.value == false) {
                                  productController.addItem(product.id);
                                } else {
                                  productController.removeItem(product.id);
                                }
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: product.inWishList.value == false
                                    ? Colors.white
                                    : Colors.red,
                              ),
                            )),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
