import 'package:flutter/material.dart';

import '../const.dart';
import '../custom_drawer.dart';

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  String home_1 = 'assets/web_home/home_1.png';

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      endDrawer: NavDraw(),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: red,
        ), // color will chnage
        leading: Image.asset(
          logo,
        ), //icon will change
        backgroundColor: Color(0xff231f20),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              home_1,
              width: w,
              height: 600,
              fit: BoxFit.fill,
            ),
            const FittedBox(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'FOR THE CREATORS, BY THE CREATORES',
                  style: TextStyle(
                    color: red,
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Swiss 721 Bold BT',
                  ),
                ),
              ),
            ),

            ///bottom part
            Container(
              height: 300,
              width: w,
              color: appBlack,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Put Things In\nPrespective",
                            style: TextStyle(
                              fontFamily: "Swiss 721 Black BT",
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: const InputDecoration(
                                      hintText: "Join the waitlist",
                                      hintStyle: TextStyle(color: Colors.white),
                                      fillColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: appBlack),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: appBlack),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Ok",
                                    style: TextStyle(
                                      fontFamily: "blauth-regular",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/logo.png',
                        width: 150,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: w,
              color: appBlack,
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/insta.png',
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Instagram',
                            style: TextStyle(
                              fontFamily: "blauth-regular",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/twitter.png',
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Twitter',
                            style: TextStyle(
                              fontFamily: "blauth-regular",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Discover',
                        style: TextStyle(
                          fontFamily: "blauth-regular",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontFamily: "blauth-regular",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Competition',
                        style: TextStyle(
                          fontFamily: "blauth-regular",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Ambassadors',
                        style: TextStyle(
                          fontFamily: "blauth-regular",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
