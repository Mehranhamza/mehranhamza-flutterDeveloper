import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/main.dart';
import 'package:practice/widgets/custom_employee_time_tile.dart';

class CustomEmployeeTile extends StatefulWidget {
  final String? txt1;
  final String? txt2;
  final String? txt3;
  final String? employeeTimePartATxt1;
  final String? employeeTimePartATxt2;
  final String? employeeTimePartATxt3;
  final String? employeeTimePartBTxt1;
  final String? employeeTimePartBTxt2;
  final String? employeeTimePartBTxt3;
  final Icon? StatusIcon;
  final Color? StatusContainerBG;
  final String? statusTXT;
  final Color? statusTXTColor;
  const CustomEmployeeTile(
      {super.key,
      this.txt1,
      this.txt2,
      this.txt3,
      this.employeeTimePartATxt1,
      this.employeeTimePartATxt2,
      this.employeeTimePartATxt3,
      this.employeeTimePartBTxt1,
      this.employeeTimePartBTxt2,
      this.employeeTimePartBTxt3,
      this.StatusIcon,
      this.statusTXT,
      this.statusTXTColor,
      this.StatusContainerBG});

  @override
  State<CustomEmployeeTile> createState() => _CustomEmployeeTileState();
}

class _CustomEmployeeTileState extends State<CustomEmployeeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade100),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    widget.txt1 ?? "Fauni Ambersari",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Icon(
                    Icons.share,
                    size: 20,
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    "Jakerta",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
          Text(
            widget.txt2 ?? "Store Clerk",
            style: GoogleFonts.poppins(
                fontSize: 12.sp, color: Colors.grey.shade900),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            widget.txt3 ?? "Morning Audit",
            style: GoogleFonts.poppins(
                fontSize: 12.sp, color: Colors.grey.shade900),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomEmployeeTimeTile(
                txt1: widget.employeeTimePartATxt1 ?? "Early",
                txt2: widget.employeeTimePartATxt2 ?? "Start",
                txt3: widget.employeeTimePartATxt3 ?? "06:00PM",
                txt1BGColor: Colors.green.shade100,
                txt1Color: Colors.green,
              ),
              CustomEmployeeTimeTile(
                txt1: widget.employeeTimePartBTxt1 ?? "On time",
                txt2: widget.employeeTimePartBTxt2 ?? "End",
                txt3: widget.employeeTimePartBTxt3 ?? "09:00PM",
                txt1BGColor: Colors.blue.shade100,
                txt1Color: Colors.blue,
              ),
              Container(
                height: 60.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: widget.StatusContainerBG ?? Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    widget.StatusIcon ?? Icon(Icons.done),
                    Text(
                      widget.statusTXT ?? "Completed",
                      style: GoogleFonts.poppins(
                          color: widget.statusTXTColor ?? Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
