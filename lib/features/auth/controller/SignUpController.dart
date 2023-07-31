import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myekigai/Authentication_repo/authentication.dart';

class SignUpController extends GetxController{
  static SignUpController get instance=> Get.find();
  final phoneNumber = TextEditingController();

  void phoneAuthentication(String phoneNo){
    Authentication.instance.phoneAuthentication(phoneNo);
  }
}