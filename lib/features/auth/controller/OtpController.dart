import 'package:get/get.dart';
import 'package:myekigai/Authentication_repo/authentication.dart';
import 'package:myekigai/features/homescreen/view/home_view.dart';

class OtpController extends GetxController{
  static OtpController get instance =>Get.find();


  void verifyOtp(String otp)async{
  var isVerified= await Authentication.instance.verifyOtp(otp);
  isVerified?Get.offAll(()=>HomeScreen()):Get.back();
  }
}