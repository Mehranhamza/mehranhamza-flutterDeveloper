import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/controllers/home_controller.dart';
import 'package:practice/widgets/custom_employee_tile.dart';
import 'package:practice/widgets/custom_employees_check_tile.dart';
import 'package:practice/widgets/custom_status_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent, // Remove the divider
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Obx(() {
                            return Container(
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey)),
                              child: DropdownButton<String>(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                dropdownColor: Colors.white,
                                underline: const SizedBox.shrink(),
                                value: controller.selectedSchedule.value.isEmpty
                                    ? null
                                    : controller.selectedSchedule.value,
                                hint: Text(
                                  "Select Schedule",
                                  style:
                                      GoogleFonts.poppins(color: Colors.black),
                                ),
                                icon: const Icon(Icons.arrow_drop_down),
                                isExpanded: true,
                                items: controller.schedule.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: GoogleFonts.poppins(
                                          color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  controller.selectedSchedule.value = newValue!;
                                },
                              ),
                            );
                          }),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            height: 30.h,
                            width: 35.w,
                            child: IconButton(
                              style: IconButton.styleFrom(
                                shape: const CircleBorder(
                                  side: BorderSide(color: Colors.grey),
                                ),
                              ),
                              onPressed: () {},
                              icon: const Center(
                                child: Icon(
                                  Icons.notification_add,
                                  size: 20,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      Text(
                        "Monday, 1 October",
                        style: GoogleFonts.poppins(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade300),
                        borderRadius: BorderRadius.circular(20)),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.symmetric(horizontal: 10),
                      iconColor: Colors.blue.shade900,
                      title: Text(
                        "Filter",
                        style: GoogleFonts.poppins(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                      children: [
                        Obx(() {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomStatusTile(
                                fun: () => controller.selectStatusIndex(0),
                                isSelected:
                                    controller.currentStatusIndex.value == 0,
                              ),
                              CustomStatusTile(
                                status_text: "In Progress",
                                fun: () => controller.selectStatusIndex(1),
                                isSelected:
                                    controller.currentStatusIndex.value == 1,
                              ),
                              CustomStatusTile(
                                status_text: "Completed",
                                fun: () => controller.selectStatusIndex(2),
                                isSelected:
                                    controller.currentStatusIndex.value == 2,
                              ),
                            ],
                          );
                        }),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 40.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const CustomEmployeesCheckTile(
                                type_clock: "Early Clock In",
                                num_employees: "2 Employees",
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              const CustomEmployeesCheckTile(
                                type_clock: "Late Clock In",
                                num_employees: "2 Employees",
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              const CustomEmployeesCheckTile(
                                type_clock: "Late Clock In",
                                num_employees: "2 Employees",
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              const CustomEmployeesCheckTile(
                                type_clock: "Late Clock In",
                                num_employees: "2 Employees",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  CustomEmployeeTile(
                    employeeTimePartATxt1: "Late",
                    employeeTimePartATxt2: "Start",
                    employeeTimePartATxt3: "06:00PM",
                    employeeTimePartBTxt1: "on time",
                    employeeTimePartBTxt2: "End",
                    employeeTimePartBTxt3: "09:00PM",
                    statusTXT: "Completed",
                    statusTXTColor: Colors.blue,
                    StatusContainerBG: Colors.blue[50],
                    StatusIcon: Icon(
                      Icons.done,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomEmployeeTile(
                    txt1: "Fara Rafa",
                    txt2: "Cashier",
                    employeeTimePartATxt1: "Late",
                    employeeTimePartATxt2: "Start",
                    employeeTimePartATxt3: "06:00PM",
                    employeeTimePartBTxt1: "on time",
                    employeeTimePartBTxt2: "End",
                    employeeTimePartBTxt3: "09:00PM",
                    statusTXT: "On Progress",
                    statusTXTColor: Colors.orange,
                    StatusContainerBG: Colors.orange[100],
                    StatusIcon: Icon(
                      Icons.pending,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomEmployeeTile(
                    txt1: "Fara Rafa",
                    txt2: "Cashier",
                    employeeTimePartATxt1: "Late",
                    employeeTimePartATxt2: "Start",
                    employeeTimePartATxt3: "06:00PM",
                    employeeTimePartBTxt1: "on time",
                    employeeTimePartBTxt2: "End",
                    employeeTimePartBTxt3: "09:00PM",
                    statusTXT: "Completed",
                    statusTXTColor: Colors.blue,
                    StatusContainerBG: Colors.blue[50],
                    StatusIcon: Icon(
                      Icons.done,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomEmployeeTile(
                    txt1: "Fara Rafa",
                    txt2: "Cashier",
                    employeeTimePartATxt1: "Late",
                    employeeTimePartATxt2: "Start",
                    employeeTimePartATxt3: "06:00PM",
                    employeeTimePartBTxt1: "on time",
                    employeeTimePartBTxt2: "End",
                    employeeTimePartBTxt3: "09:00PM",
                    statusTXT: "On Progress",
                    statusTXTColor: Colors.orange,
                    StatusContainerBG: Colors.orange[100],
                    StatusIcon: Icon(
                      Icons.pending,
                      color: Colors.orange,
                    ),
                  )
                ],
              ),
            ),
          ),
        ).animate().fade(duration: Duration(seconds: 2)),
      ),
    );
  }
}
