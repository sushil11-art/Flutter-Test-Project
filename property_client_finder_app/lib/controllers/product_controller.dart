import 'package:get/state_manager.dart';
import 'package:property_client_finder_app/models/product.dart';
import 'package:property_client_finder_app/services/remote_services.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      var products = await RemoteServices.fetchProducts();
      // ignore: avoid_print
      print(products);
      productList.value = products;
    } finally {}
  }
}
