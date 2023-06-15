import 'package:deliver_app/commen_weights/commen_container.dart';
import 'package:deliver_app/commen_weights/commne_text.dart';
import 'package:deliver_app/screen/login_screens.dart';
import 'package:deliver_app/screen/sign_up.dart';
import 'package:deliver_app/screen/tab_bar.dart';
import 'package:flutter/material.dart';

class On_Bording extends StatefulWidget {
  const On_Bording({Key? key}) : super(key: key);

  @override
  State<On_Bording> createState() => _On_BordingState();
}

class _On_BordingState extends State<On_Bording> {
  List onbording = [
    {
      "Image": "assert/image/Onbording1.png",
      "name": "Cash on Delivery or E-payment",
      "subtitle":
          "Our delivery will ensure your items are delivered\nright to the door steps",
    },
    {
      "Image": "assert/image/Onbording_2.png",
      "name": "Delivery Right to Your Door Step",
      "subtitle":
          "Our delivery will ensure your items are delivered\nright to the door steps",
    },
    {
      "Image": "assert/image/onbording_3.png",
      "name": "Welcome to Tracky",
      "subtitle":
          "Tracky is the best solution to deliver and track\ngoods from local and world shipping.",
    },
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.64,
              width: width,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                children: List.generate(
                    3,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Commen_Container(
                              height: height * 0.5,
                              width: width,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(onbording[index]['Image'])),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Commen_Text(
                                text: onbording[index]['name'],
                                fontweight: FontWeight.bold,
                                color: Colors.black,
                                size: 22,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Commen_Text(
                                text: onbording[index]['subtitle'],
                                fontweight: FontWeight.w400,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: selected == index
                                ? Colors.black54
                                : Colors.grey.shade300,
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Commen_Container(
                borderRadius: BorderRadius.circular(40),
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
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tab_bar(),
                      ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Commen_Container(
                borderRadius: BorderRadius.circular(40),
                height: height * 0.065,
                width: width,
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black),
                child: Center(
                  child: Commen_Text(
                    text: "Sign In as Guest",
                    color: Colors.grey,
                    size: 18,
                    fontweight: FontWeight.w400,
                  ),
                ),
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login_Screens(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
