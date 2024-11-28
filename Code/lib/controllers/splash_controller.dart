import 'package:get/get.dart';
import 'package:practice/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.home_screen);
    });
  }
}
