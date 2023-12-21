import 'package:flutter/material.dart';
import 'package:rova_23/repositories/verifyOtp_repository.dart';

class VerifyOtpController {
  final ValueNotifier<bool> isLoadingState = ValueNotifier<bool>(false);

  //get cropInfoModel12 => null;
  VerifyOtpRepository _verifyOtpRepository = VerifyOtpRepository();
  Future<dynamic> verifyOtp(String Otp) async {
    try {
      await _verifyOtpRepository.verifyOtp(Otp);
      isLoadingState.value = false;
      return "";
    } catch (err) {
      return err;
    }
  }
}
