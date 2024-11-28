import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentStatusIndex = 0.obs;
  void selectStatusIndex(int n) {
    currentStatusIndex.value = n;
  }

  var schedule = [
    "Schedule 1",
    "Schedule 2",
    "Schedule 3",
    "Schedule 4",
    "Schedule 5"
  ].obs;
  var selectedSchedule = "".obs;
}
