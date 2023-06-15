import 'package:deliver_app/commen_weights/commen_container.dart';
import 'package:deliver_app/commen_weights/commen_textfiled.dart';
import 'package:deliver_app/commen_weights/commne_text.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'otp_varificatin.dart';

class Login_Screens extends StatefulWidget {
  const Login_Screens({Key? key}) : super(key: key);

  @override
  State<Login_Screens> createState() => _Login_ScreensState();
}

class _Login_ScreensState extends State<Login_Screens> {
  final passwordcontroler = TextEditingController();
  final usernamecontroler = TextEditingController();
  int selected = 0;
  List name = [
    'Sign Up',
    'Sign In',
  ];
  final gloablekey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Form(
            key: gloablekey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Commen_Text(
                    text: "Phone Number",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    size: 18,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Commen_Textfiled(
                    onchange: (value) {
                      setState(() {
                        gloablekey.currentState!.validate();
                      });
                    },
                    hinttext: "Enter your number",
                    validator: (value) {
                      final bool passwordValid = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value!);

                      if (value.isEmpty) {
                        return "Required";
                      } else if (passwordValid != true) {
                        return null;
                      }
                    },
                    msxlength: 10,
                    ktype: TextInputType.number,
                    sufiixicon: passwordcontroler.text.length == 10
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.black,
                          )
                        : SizedBox(),
                    preficicon: Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Commen_Text(
                    text: "Password",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    size: 18,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Commen_Textfiled(
                    onchange: (value) {
                      setState(() {
                        gloablekey.currentState!.validate();
                      });
                    },
                    controller: passwordcontroler,
                    obscure: true,
                    hinttext: "Enter your password",
                    validator: (value) {
                      final bool passwordValid = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value!);
                      if (value.isEmpty) {
                        return "Required";
                      } else if (passwordValid != true) {
                        return null;
                      }
                    },
                    preficicon: Icon(
                      Icons.lock,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Commen_Container(
                      borderRadius: BorderRadius.circular(40),
                      ontap: () {
                        setState(() {
                          if (gloablekey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home_Screen(),
                                ));
                          }
                        });
                      },
                      height: height * 0.065,
                      width: width,
                      color: Color(0xffFD683D),
                      child: Center(
                        child: Commen_Text(
                          text: "Sign In",
                          color: Colors.white,
                          size: 18,
                          fontweight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Commen_Text(
                      text: "Or Sign In With",
                      color: Colors.grey,
                      fontweight: FontWeight.w400,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assert/image/google.png',
                        height: height * 0.03,
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Commen_Text(
                        text: "Sign Up with Google",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        size: 18,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Commen_Container(
                      borderRadius: BorderRadius.circular(40),
                      ontap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Otp_Varification(),
                              ));
                        });
                      },
                      height: height * 0.065,
                      width: width,
                      color: Color(0xffFD683D),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assert/image/apple.png',
                            height: height * 0.03,
                            width: width * 0.1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Commen_Text(
                              text: "Sign Up with Apple",
                              color: Colors.white,
                              size: 18,
                              fontweight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
