import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async => this;
  final box = GetStorage();

  // final token = storeData.read('token');

  final RxBool isAuthenticated = false.obs;

  // if(box.read('token')){

  // }

  // void main() {
  //   if (box.read('token')) {
  //     isAuthenticated.value = true;
  //   }
  // }
  void setIsAuthenticated(String? token) {
    if (token != null) {
      isAuthenticated.value = true;
    }
  }
}
