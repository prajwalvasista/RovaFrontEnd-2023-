import 'package:flutter/material.dart';
import 'package:rova_23/controllers/verifyOtp_controller.dart';
import 'package:rova_23/screens/select_language.dart';

void main() {
  runApp(MyApp());
}

TextEditingController optTextController1 = TextEditingController();
TextEditingController optTextController2 = TextEditingController();
TextEditingController optTextController3 = TextEditingController();
TextEditingController optTextController4 = TextEditingController();

VerifyOtpController _verifyOtpController = VerifyOtpController();

class MyApp extends StatelessWidget {
  Future<dynamic> _verifyOtp(String otp) async {
    try {
      _verifyOtpController.verifyOtp(otp);
      return true;
    } catch (err) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ENTER OTP",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOtpBox(optTextController1),
                  SizedBox(width: 10.0),
                  buildOtpBox(optTextController2),
                  SizedBox(width: 10.0),
                  buildOtpBox(optTextController3),
                  SizedBox(width: 10.0),
                  buildOtpBox(optTextController4),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  String otpString = optTextController1.text +
                      optTextController2.text +
                      optTextController3.text +
                      optTextController4.text;
                  _verifyOtp(otpString);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LanguageSelectionScreen()));
                },
                child: Text("SUBMIT"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOtpBox(TextEditingController textEditingController) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
      ),
      child: TextField(
        controller: textEditingController,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(fontSize: 20.0),
        decoration: InputDecoration(
          counter: Offstage(),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
