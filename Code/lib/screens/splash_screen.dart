import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/controllers/splash_controller.dart';
import 'package:practice/main.dart';
import 'package:practice/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Mehran Hamza",
                style: GoogleFonts.lobster(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp),
              ),
              Text(
                "Flutter Developer",
                style: GoogleFonts.lobster(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30.sp),
              ),
            ],
          ),
        ).animate().fade(duration: Duration(seconds: 1)),
      ),
    );
  }
}
