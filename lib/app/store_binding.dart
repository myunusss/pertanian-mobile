import 'package:get/get.dart';
import 'package:pertanian/presentation/login/login_store_controller.dart';

class StoreBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => LoginStoreController());
  }
}
