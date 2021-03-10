import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final usernameTextController = TextEditingController();
  RxBool enableDialogButton = false.obs;

  @override
  void dispose() {
    usernameTextController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  void updateDialogButton(bool value) {
    enableDialogButton(value);
  }
}
