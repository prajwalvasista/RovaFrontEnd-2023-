import 'package:rova_23/utlis/services/rest_api_services.dart';

class LoginRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<dynamic> loginByNumber(String PhoneNumber) async {
    final response = await _helper.loginByNumber(PhoneNumber);
    return response;
  }
}
