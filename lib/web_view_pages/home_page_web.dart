import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../custom_drawer.dart';

List<String> imgList = [
  'assets/web_home/home_3.png',
  'assets/web_home/home_2.png',
  'assets/web_home/HOME PAGE-DesktopVersion 7.png',
];

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            height: 537,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Column(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        '${imgList.indexOf(item)} VALENTINE',
                        style: const TextStyle(
                          color: appBlack,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )),
          ))
      .toList();

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
              height: 800,
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
            Container(
              height: 634,
              width: w,
              color: appBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Image.asset(logo),
                      Positioned(
                        left: 150,
                        top: 50,
                        child: Image.asset(
                          'assets/web_home/home_2.png',
                        ),
                      ),
                    ],
                  ),
                  FittedBox(
                    child: Column(
                      children: const [
                        Text(
                          'Introducing Dualite',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Bold BT',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: SizedBox(
                            width: 1000,
                            child: Text(
                              "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'VisiaPro-Regular',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Our Canvas',
              style: TextStyle(
                color: appBlack,
                fontSize: 72,
                fontWeight: FontWeight.bold,
                fontFamily: 'Swiss 721 Bold BT',
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            // ImageSlideshow(
            //   width: w,
            //   height: 537,
            //   initialPage: 0,
            //   indicatorColor: Colors.blue,
            //   indicatorBackgroundColor: Colors.grey,
            //   children: [
            //     Image.asset(
            //       'assets/web_home/home_3.png',
            //       fit: BoxFit.contain,
            //     ),
            //     Image.asset(
            //       'assets/web_home/home_3.png',
            //       fit: BoxFit.contain,
            //     ),
            //     Image.asset(
            //       'assets/web_home/home_3.png',
            //       fit: BoxFit.contain,
            //     ),
            //   ],
            //   onPageChanged: (value) {
            //     print('Page changed: $value');
            //   },
            //   autoPlayInterval: 3000,
            //   isLoop: true,
            // ),
            Container(
              // height: 537,
              width: w,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 0.5,
                  // enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
            ),

            const SizedBox(
              height: 70,
            ),

            ///bottom part
            Container(
              height: 350,
              width: w,
              color: red,
              padding: const EdgeInsets.only(
                  top: 80, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "WE'RE CREATORS TOO",
                    style: TextStyle(
                      fontFamily: "Swiss 721 Black BT",
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 52,
                    ),
                  ),
                  Text(
                    "We're a bunch of creative people who believe \nin moonshot thinking and our mission is to give \nthe crazy ones a stage to show their creativity.",
                    style: TextStyle(
                      fontFamily: "blauth-regular",
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
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
