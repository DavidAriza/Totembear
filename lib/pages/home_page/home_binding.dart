import 'package:get/instance_manager.dart';
import 'package:totembear/pages/home_page/home_page_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
