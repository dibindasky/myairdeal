import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TalkToUsController extends GetxController {
  RxInt selectedtab = 1.obs;

  TextEditingController subjectController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  changetab(int newTab) {
    selectedtab.value = newTab;
    update();
  }
}
