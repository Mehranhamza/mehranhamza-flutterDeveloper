import 'package:get/get.dart';
import 'package:practice/bindings/home_binding.dart';
import 'package:practice/bindings/splash_binding.dart';
import 'package:practice/screens/home_screen.dart';
import 'package:practice/screens/splash_screen.dart';

class AppRoutes {
  static const splash_screen = "/splashscreen";
  static const home_screen = "/homescreen";
  static final routes = [
    GetPage(
        binding: SplashBinding(),
        name: splash_screen,
        page: () => SplashScreen()),
    GetPage(
        transition: Transition.leftToRight,
        binding: HomeBinding(),
        name: home_screen,
        page: () => HomeScreen())
  ];
}
