import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';
import 'package:myekigai/features/auth/view/login_view.dart';
import 'package:myekigai/features/auth/view/login_view3.dart';
import 'package:myekigai/features/auth/view/login_view4.dart';
import 'package:myekigai/features/onboarding/view/onboarding.dart';

class Authentication extends GetxController {
  static Authentication get instance => Get.find();
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = "".obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => LoginView())
        : Get.offAll(() => Onboarding());
  }

  void phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          if (e.code == "Invalid Phone No.") {
            Get.snackbar("Error", "The provided phone no is not valid");
          } else {
            Get.snackbar("Error", "Something went wrong.Try again");
          }
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId;
        });
  }

  Future<bool> verifyOtp(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: this.verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  Future<void> logout() async => await _auth.signOut();
}
