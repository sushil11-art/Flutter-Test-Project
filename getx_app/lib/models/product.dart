import 'package:get/get.dart';

class Product {
  int id;
  String name;
  double price;
  RxBool
      inWishList; // Make inWishList observable by using the RxBool type and adding ".obs" (".obs" will be added in the Products class).
  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.inWishList});
}
