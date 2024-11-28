import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEmployeesCheckTile extends StatefulWidget {
  final String? type_clock;
  final String? num_employees;
  const CustomEmployeesCheckTile(
      {super.key, this.type_clock, this.num_employees});

  @override
  State<CustomEmployeesCheckTile> createState() =>
      _CustomEmployeesCheckTileState();
}

class _CustomEmployeesCheckTileState extends State<CustomEmployeesCheckTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.alarm_add,
          color: Colors.blue.shade900,
          size: 30,
        ),
        SizedBox(
          width: 5.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.type_clock ?? "Early Clock In",
              style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.num_employees ?? "2 Employees",
              style: GoogleFonts.poppins(
                fontSize: 10.sp,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    ));
  }
}
