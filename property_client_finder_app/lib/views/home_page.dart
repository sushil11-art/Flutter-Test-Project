// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:get/state_manager.dart';
// import 'package:property_client_finder_app/controllers/product_controller.dart';
// import 'package:property_client_finder_app/views/product_tile.dart';

// class HomePage extends StatelessWidget {
//   // final ProductController productController = Get.put(ProductController());
//   final ProductController productController = Get.put(ProductController());
//   // const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Row(
//                 children: [
//                   const Expanded(
//                     child: Text(
//                       'ShopX',
//                       style: TextStyle(
//                           fontFamily: 'avenir',
//                           fontSize: 32,
//                           fontWeight: FontWeight.w900),
//                     ),
//                   ),
//                   IconButton(
//                       icon: const Icon(Icons.view_list_rounded),
//                       onPressed: () {}),
//                   IconButton(
//                       icon: const Icon(Icons.grid_view), onPressed: () {}),
//                 ],
//               ),
//             ),
//             Expanded(child: Obx(() {
//               return StaggeredGridView.countBuilder(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 16,
//                   crossAxisSpacing: 16,
//                   itemCount: productController.productList.length,
//                   itemBuilder: (context, index) {
//                     return ProductTile(productController.productList[index]);
//                   },
//                   staggeredTileBuilder: (index) => const StaggeredTile.fit(1));
//             }))
//           ],
//         ));
//   }
// }
