import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerDrawer extends GetxController with StateMixin<bool> {
  Rx<GlobalKey<ScaffoldState>> scaffoldkey =
      Rx<GlobalKey<ScaffoldState>>(GlobalKey<ScaffoldState>());

  @override
  void onInit() {
    super.onInit();
    change(false, status: RxStatus.success());
  }

  void toggleDrawer() {
    if(scaffoldkey.value.currentState!=null){
      scaffoldkey.value.currentState!.openDrawer();
      change(!state!, status: RxStatus.success());
    }
  }
}
