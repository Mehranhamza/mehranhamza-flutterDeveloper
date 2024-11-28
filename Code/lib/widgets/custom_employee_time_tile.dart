import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEmployeeTimeTile extends StatelessWidget {
  final String? txt1;
  final Color? txt1Color;
  final Color? txt1BGColor;
  final String? txt2;
  final String? txt3;
  const CustomEmployeeTimeTile(
      {super.key,
      this.txt1,
      this.txt2,
      this.txt3,
      this.txt1Color,
      this.txt1BGColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 20.h,
                width: 35.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: txt1BGColor ?? Colors.green.shade200,
                ),
                child: Center(
                  child: Text(
                    txt1 ?? "Early",
                    style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: txt1Color ?? Colors.green.shade900),
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                txt2 ?? "Start",
                style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                txt3 ?? "06:00AM",
                style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
              )
            ],
          )
        ],
      ),
    );
  }
}
