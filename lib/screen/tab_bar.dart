import 'package:deliver_app/commen_weights/commen_container.dart';
import 'package:deliver_app/commen_weights/commne_text.dart';
import 'package:deliver_app/screen/login_screens.dart';
import 'package:deliver_app/screen/sign_up.dart';
import 'package:flutter/material.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({Key? key}) : super(key: key);

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> with SingleTickerProviderStateMixin {
  TabController? tabController;
  final gloablekey = GlobalKey<FormState>();
  int selected = 0;
  List name = [
    'Sign Up',
    'Sign In',
  ];
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                text: "Shipping and Track Anytime ",
                color: Colors.black,
                size: 25,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Commen_Text(
                text: "Get great experience with tracky",
                color: Colors.grey,
                size: 17,
                fontweight: FontWeight.w400,
              ),
              SizedBox(
                height: 30,
              ),
              Commen_Container(
                height: height * 0.06,
                width: width,
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(40),
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 5),
                  controller: tabController,
                  indicatorColor: Colors.transparent,
                  onTap: (value) {
                    setState(() {
                      selected = value;
                    });
                  },
                  tabs: List.generate(
                    2,
                    (index) => Commen_Container(
                      height: height * 0.052,
                      width: width,
                      borderRadius: BorderRadius.circular(45),
                      color:
                          selected == index ? Colors.white : Colors.transparent,
                      child: Center(
                        child: Commen_Text(
                          text: name[index],
                          size: 17,
                          color: selected == index
                              ? Color(0xffFD683D)
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.659,
                child: TabBarView(controller: tabController, children: [
                  Sign_Up(),
                  Login_Screens(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
