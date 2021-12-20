// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:property_client_finder_app/controllers/cart_controller.dart';
// import 'package:property_client_finder_app/controllers/shopping_controller.dart';

// class ShoppingPage extends StatelessWidget {
//   final shoppingController = Get.put(ShoppingController());
//   final cartController = Get.put(CartController());
//   // const ShoppingPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.teal,
//         floatingActionButton: FloatingActionButton.extended(
//             onPressed: () {},
//             backgroundColor: Colors.amber,
//             label: GetX<CartController>(builder: (cartController) {
//               return Text(
//                 cartController.count.toString(),
//                 style: const TextStyle(color: Colors.black, fontSize: 24),
//               );
//             }),
//             icon: const Icon(
//               Icons.shopping_cart_rounded,
//               color: Colors.black,
//             )),
//         body: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 child: GetX<ShoppingController>(builder: (controller) {
//                   return ListView.builder(
//                       itemCount: controller.products.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           margin: const EdgeInsets.all(12),
//                           child: Padding(
//                               padding: const EdgeInsets.all(16),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             controller
//                                                 .products[index].productName,
//                                             style:
//                                                 const TextStyle(fontSize: 24),
//                                           ),
//                                           Text(controller.products[index]
//                                               .productDescription),
//                                         ],
//                                       ),
//                                       Text(
//                                           '\$${controller.products[index].price}',
//                                           style: const TextStyle(fontSize: 24)),
//                                     ],
//                                   ),
//                                   // ignore: deprecated_member_use
//                                   RaisedButton(
//                                     onPressed: () {
//                                       cartController.addToCart(
//                                           controller.products[index]);
//                                     },
//                                     color: Colors.blue,
//                                     textColor: Colors.white,
//                                     child: const Text('Add to Cart'),
//                                   ),
//                                   Obx(() => IconButton(
//                                         icon: controller.products[index]
//                                                 .isFavorite.value
//                                             ? const Icon(
//                                                 Icons.check_box_rounded)
//                                             : const Icon(
//                                                 Icons.check_box_outline_blank),
//                                         onPressed: () {
//                                           controller.products[index].isFavorite
//                                               .toggle();
//                                         },
//                                       ))
//                                 ],
//                               )),
//                         );
//                       });
//                 }),
//               ),
//               GetX<CartController>(builder: (controller) {
//                 return Text(
//                   "Total Amount : ${controller.totalPrice}",
//                   style: const TextStyle(fontSize: 32, color: Colors.white),
//                 );
//               }),
//               const SizedBox(
//                 height: 100,
//               )
//             ],
//           ),
//         ));
//   }
// }
