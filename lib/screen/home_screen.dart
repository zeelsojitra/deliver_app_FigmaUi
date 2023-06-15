import 'package:deliver_app/commen_weights/commen_container.dart';
import 'package:deliver_app/commen_weights/commen_textfiled.dart';
import 'package:deliver_app/commen_weights/commne_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List features = [
    {
      'image': "assert/image/Check_Rates.png",
      "name": "Check Rates",
    },
    {
      'image': "assert/image/Nearby_Drop.png",
      "name": "Nearby Drop",
    },
    {
      'image': "assert/image/Order.png",
      "name": "Order",
    },
    {
      'image': "assert/image/Help_Center.png",
      "name": "Help Center",
    },
    {
      'image': "assert/image/wallet.png",
      "name": "Wallet",
    },
    {
      'image': "assert/image/Others.png",
      "name": "Others",
    },
  ];
  List service = [
    'MM09132005',
    'MA84561259',
    'FU84593276',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Commen_Container(
              height: height * 0.40,
              width: width,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assert/image/home_scrren_bg.png'),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        Image.asset('assert/image/home_logo.png'),
                        SizedBox(
                          width: 2,
                        ),
                        Commen_Text(
                          text: "Catchy",
                          color: Colors.white,
                          size: 25,
                          fontweight: FontWeight.bold,
                        ),
                        Spacer(),
                        Image.asset(
                          "assert/image/notification.png",
                          height: 45,
                          width: 45,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Commen_Container(
                      height: height * 0.1,
                      width: width,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Commen_Text(
                                  color: Colors.grey,
                                  fontweight: FontWeight.w400,
                                  size: 20,
                                  text: "My Balance",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Commen_Text(
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  size: 25,
                                  text: "\$3.382.00",
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Commen_Text(
                                      text: "Top Up",
                                      size: 18,
                                      fontweight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assert/image/addition.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Commen_Textfiled(
                      hinttext: "Enter track number",
                      sufiixicon: Icon(
                        Icons.document_scanner_outlined,
                        color: Colors.black54,
                        size: 30,
                      ),
                      preficicon: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 35,
                      ),
                      filed: true,
                      fillcolor: Color(0xffFD683D),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Commen_Text(
                    fontweight: FontWeight.bold,
                    size: 22,
                    color: Colors.black,
                    text: "Features",
                  ),
                  GridView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) => Commen_Container(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset(
                              features[index]['image'],
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Commen_Text(
                            text: features[index]['name'],
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                  Commen_Text(
                    fontweight: FontWeight.bold,
                    size: 22,
                    color: Colors.black,
                    text: "Services and Product",
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: service.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Commen_Container(
                            margin: EdgeInsets.only(bottom: 15),
                            borderRadius: BorderRadius.circular(20),
                            height: height * 0.12,
                            width: width,
                            color: Colors.white,
                            // border: Border.all(
                            //   color: Colors.grey,
                            //   width: 1,
                            // ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                offset: Offset(1, 0),
                                blurRadius: 4,
                              )
                            ],
                            child: Center(
                              child: ListTile(
                                leading: Container(
                                  height: 52,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffF2F4F9),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assert/image/service_1.png",
                                      width: 35,
                                      height: 35,
                                    ),
                                  ),
                                ),
                                title: Commen_Text(
                                  text: service[index],
                                  size: 18,
                                  color: Colors.black,
                                  fontweight: FontWeight.w400,
                                ),
                                subtitle: Commen_Text(
                                  text: "Processed at sort facility",
                                  size: 18,
                                  color: Colors.grey,
                                  fontweight: FontWeight.w400,
                                ),
                                trailing: Commen_Text(
                                  text: "2 Hrs",
                                  size: 18,
                                  color: Colors.black,
                                  fontweight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
