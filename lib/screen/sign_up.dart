import 'package:deliver_app/commen_weights/commen_container.dart';
import 'package:deliver_app/commen_weights/commen_textfiled.dart';
import 'package:deliver_app/commen_weights/commne_text.dart';
import 'package:deliver_app/screen/login_screens.dart';
import 'package:deliver_app/screen/otp_varificatin.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> with SingleTickerProviderStateMixin {
  final passwordcontroler = TextEditingController();
  final usernamecontroler = TextEditingController();
  int selected = 0;
  List name = [
    'Sign Up',
    'Sign In',
  ];
  TabController? tabController;
  final gloablekey = GlobalKey<FormState>();
  List tabItem = [
    "Sign Up",
    "Sign In",
  ];
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18,
                ),
                Commen_Text(
                  text: "Full Name",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  size: 18,
                ),
                SizedBox(
                  height: 15,
                ),
                Commen_Textfiled(
                  controller: usernamecontroler,
                  hinttext: "Enter your name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required";
                    }
                  },
                  onchange: (value) {
                    setState(() {});
                  },
                  sufiixicon: usernamecontroler.text.length > 2
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.black,
                        )
                      : SizedBox(),
                  preficicon: Icon(
                    Icons.person_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
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
                  controller: passwordcontroler,
                  hinttext: "Enter your number",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your Number";
                    }
                  },
                  msxlength: 10,
                  ktype: TextInputType.number,
                  onchange: (value) {
                    gloablekey.currentState!.validate();
                  },
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
                  obscure: true,
                  hinttext: "Enter your password",
                  validator: (value) {
                    final bool passwordValid = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                        .hasMatch(value!);

                    if (value.isEmpty) {
                      return "Required";
                    } else if (passwordValid != true) {
                      return "please enter valid password";
                    }
                  },
                  onchange: (value) {},
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Commen_Container(
                    borderRadius: BorderRadius.circular(40),
                    ontap: () {
                      if (gloablekey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Otp_Varification(),
                            ));
                      }
                    },
                    height: height * 0.065,
                    width: width,
                    color: Color(0xffFD683D),
                    child: Center(
                      child: Commen_Text(
                        text: "Create Account",
                        color: Colors.white,
                        size: 18,
                        fontweight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Center(
                  child: Commen_Text(
                    text: "Or Sign Up With",
                    color: Colors.grey,
                    fontweight: FontWeight.w400,
                    size: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assert/image/google.png',
                      height: height * 0.03,
                      width: width * 0.1,
                    ),
                    Commen_Text(
                      text: "Sign Up with Google",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
