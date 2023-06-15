import 'package:deliver_app/commen_weights/commen_container.dart';
import 'package:deliver_app/commen_weights/commne_text.dart';
import 'package:deliver_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'home_screen.dart';
import 'login_screens.dart';

class Otp_Varification extends StatefulWidget {
  const Otp_Varification({Key? key}) : super(key: key);

  @override
  State<Otp_Varification> createState() => _Otp_VarificationState();
}

class _Otp_VarificationState extends State<Otp_Varification> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Commen_Text(
                text: "Verification Code",
                color: Colors.black,
                size: 25,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Commen_Text(
                text:
                    "We have sent the code verification to\nyour number +01 65841542265",
                color: Colors.grey,
                size: 17,
                fontweight: FontWeight.w400,
              ),
              SizedBox(
                height: 50,
              ),
              OtpTextField(
                numberOfFields: 4,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialog(
                  //       title: Text("Verification Code"),
                  //       content: Text('Code entered is $verificationCode'),
                  //     );
                  //   },
                  // );
                }, // end onSubmit
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Commen_Container(
                  borderRadius: BorderRadius.circular(40),
                  ontap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      context: context,
                      builder: (context) => Commen_Container(
                        borderRadius: BorderRadius.circular(40),
                        height: height * 0.55,
                        width: width * 0.5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset(
                                'assert/image/register_successfully.png',
                                height: height * 0.3,
                                width: width * 0.5,
                              ),
                            ),
                            Commen_Text(
                              text: "Register Successfully",
                              color: Colors.black,
                              size: 25,
                              fontweight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Commen_Text(
                              text:
                                  "Congratulation! your account already created.\nPlease login to get amazing experience.",
                              color: Colors.grey,
                              size: 18,
                              fontweight: FontWeight.w400,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: Commen_Container(
                                borderRadius: BorderRadius.circular(40),
                                ontap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Home_Screen(),
                                        ));
                                  });
                                },
                                height: height * 0.065,
                                width: width,
                                color: Color(0xffFD683D),
                                child: Center(
                                  child: Commen_Text(
                                    text: "Go to Homepage",
                                    color: Colors.white,
                                    size: 18,
                                    fontweight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  height: height * 0.065,
                  width: width,
                  color: Color(0xffFD683D),
                  child: Center(
                    child: Commen_Text(
                      text: "Submit",
                      color: Colors.white,
                      size: 18,
                      fontweight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Commen_Text(
                    text: "Didn’t receive the code ?",
                    color: Colors.grey,
                    size: 18,
                    fontweight: FontWeight.w400,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Commen_Text(
                    text: "Resend",
                    color: Colors.black,
                    size: 18,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
