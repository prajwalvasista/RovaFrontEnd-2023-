import 'package:flutter/material.dart';
import 'package:rova_23/models/auth_model.dart';
import 'package:rova_23/repositories/auth_repository.dart';

class AuthUserController {
  Authmodel authmodel = Authmodel();
  AuthUserRepository _authUserRepository = AuthUserRepository();
  final ValueNotifier<bool> isLoadingState = ValueNotifier<bool>(false);

  Future<dynamic> generateOtp(Authmodel authmodel) async {
    try {
      await _authUserRepository.generateOtp(authmodel);
      isLoadingState.value = false;
      return "";
    } catch (err) {
      return err;
    }
  }
}
