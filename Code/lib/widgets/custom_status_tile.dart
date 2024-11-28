import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStatusTile extends StatefulWidget {
  final String? status_text;
  final bool? isSelected;
  final VoidCallback? fun;
  const CustomStatusTile(
      {super.key, this.status_text, this.isSelected, this.fun});

  @override
  State<CustomStatusTile> createState() => _CustomStatusTileState();
}

class _CustomStatusTileState extends State<CustomStatusTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor:
                  widget.isSelected! ? Colors.blue.shade900 : Colors.white),
          onPressed: widget.fun ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.status_text ?? "Not started",
                style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: widget.isSelected! ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all()),
                child: Center(
                  child: Text("2"),
                ),
              )
            ],
          )),
    );
  }
}
