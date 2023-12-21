import 'package:flutter/material.dart';
import 'package:rova_23/repositories/login_repository.dart';

class LoginController {
  LoginRepository _loginRepository = LoginRepository();
  final ValueNotifier<bool> isLoadingState = ValueNotifier<bool>(false);

  //get cropInfoModel12 => null;

  Future<dynamic> loginByNumber(String PhoneNumber) async {
    try {
      await _loginRepository.loginByNumber(PhoneNumber);
      isLoadingState.value = false;
      return "";
    } catch (err) {
      return err;
    }
  }
}
