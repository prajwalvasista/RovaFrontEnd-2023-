import 'package:rova_23/utlis/services/rest_api_services.dart';

class VerifyOtpRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<dynamic> verifyOtp(String otp) async {
    final response = await _helper.verifyOtp(otp);
    return response;
  }
}
