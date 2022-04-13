import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import '../const.dart';
import '../custom_drawer.dart';
import 'about_us_web.dart';
import 'competition_page_web.dart';
import 'duelite_ambassador_web.dart';
import 'gallery_web.dart';

List<String> imgList = [
  'assets/web_home/home_3.png',
  'assets/web_home/HOME PAGE-DesktopVersion 4.png',
  'assets/web_home/HOME PAGE-DesktopVersion 5.png',
  'assets/web_home/home_3.png',
  'assets/web_home/HOME PAGE-DesktopVersion 4.png',
  'assets/web_home/HOME PAGE-DesktopVersion 5.png',
];

List<String> imgHeader = [
  'VALENTINE',
  'VALENTINE2',
  'VALENTINE3',
];
List<String> imgTag = [
  '1.A unique combination of emotional duality that transcends beyond any form of love and relationships',
  '1.A unique combination of emotional duality that transcends beyond any form of love and relationships',
  '1.A unique combination of emotional duality that transcends beyond any form of love and relationships',
];

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  String home_1 = 'assets/web_home/Screenshot 2022-04-12 at 1.09 1.png';
  TextEditingController waitListText = TextEditingController();
  final CarouselController _controller = CarouselController();

  Future<dynamic> uploadWaitListApi({
    required String email,
  }) async {
    var response = await http.post(
      Uri.parse('https://dualite.xyz/api/v1/marketing/'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
      }),
    );
    var body = response.body;
    var resp = jsonDecode(body);
    debugPrint('resp $body');
    try {
      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.white,
            content: Text(
              'Thank you for connecting',
              style: TextStyle(
                color: appBlack,
                fontFamily: 'Barlow-Black',
              ),
            ),
            duration: Duration(seconds: 5),
          ),
        );

        return resp;
      } else {
        throw response.body;
      }
    } catch (e) {
      debugPrint('err-$e');
      throw Exception('Error !');
    }
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    bool center = true;
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              // margin: const EdgeInsets.only(left: 30, right: 30),
              // padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              // decoration: BoxDecoration(
              //   border: center == true
              //       ? Border.all(
              //           color: red,
              //           width: 5,
              //         )
              //       : Border.all(
              //           color: Colors.white,
              //           width: 0,
              //         ),
              //   borderRadius: center == true
              //       ? const BorderRadius.all(
              //           Radius.circular(20),
              //         )
              //       : const BorderRadius.all(
              //           Radius.circular(0),
              //         ),
              // ),
              height: 537,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: const Text(
                      'VALENTINE',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 75.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow-Black',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: const Text(
                      'A unique combination of emotional duality that transcends beyond any form of love and relationships',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Barlow-Black',
                      ),
                    ),
                  ),
                ],
              ),
            ))
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
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
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Barlow-Black',
                  ),
                ),
              ),
            ),
            Container(
              height: 634,
              width: w,
              color: appBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        logo,
                      ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Introducing Dualite',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 96,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Barlow-Black',
                          ),
                        ),
                        SizedBox(
                          width: 800,
                          child: Text(
                            "A next-generational interactive platform for creators to make the viewing experience more engaging. ",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Barlow-Black',
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
                fontWeight: FontWeight.w900,
                fontFamily: 'Barlow-Black',
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
            SizedBox(
              height: 750,
              width: w,
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                    viewportFraction: 0.5,
                    autoPlay: true,
                    enlargeCenterPage: center,
                    aspectRatio: 1),
                items: imageSliders,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: GestureDetector(
                    onTap: () => _controller.previousPage(),
                    child: Image.asset('assets/web_home/back.png'),
                  ),
                ),
                GestureDetector(
                  onTap: () => _controller.nextPage(),
                  child: Image.asset('assets/web_home/forward.png'),
                ),
              ],
            ),

            const SizedBox(
              height: 70,
            ),

            ///bottom part
            Container(
              width: w,
              color: red,
              padding: const EdgeInsets.only(
                  top: 80, left: 30, right: 30, bottom: 80),
              child: const FittedBox(
                child: Text(
                  "WE’RE BUILDING A PLACE TO CREATE \nMINDBLOWING THINGS, OF ENDLESS \nPOSSIBILITIES.",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Barlow-Black',
                    fontSize: 75,
                    color: Colors.white,
                  ),
                ),
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
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Barlow-Black',
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
                                    controller: waitListText,
                                    style: TextStyle(color: Colors.white),
                                    decoration: const InputDecoration(
                                      hintText: "Join the waitlist",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Barlow-Black',
                                      ),
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
                                  onPressed: () {
                                    if (waitListText.text.isNotEmpty) {
                                      uploadWaitListApi(
                                          email:
                                          waitListText.text.toString())
                                          .then(
                                              (value) => waitListText.clear());
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.white,
                                          content: Text(
                                            "Can't submit empty field.",
                                            style: TextStyle(
                                              color: appBlack,
                                              fontFamily: 'Barlow-Black',
                                            ),
                                          ),
                                          duration: Duration(seconds: 5),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    "Ok",
                                    style: TextStyle(
                                      fontFamily: 'Barlow-Black',
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
                      InkWell(
                        onTap: () async {
                          await launch(instagramLink);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/instagram.png',
                              height: 20,
                              width: 20,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Instagram',
                              style: TextStyle(
                                fontFamily: 'Barlow-Black',
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      InkWell(
                        onTap: () async {
                          await launch(twitterLink);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/twitter_outline.png',
                              height: 20,
                              width: 20,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Twitter',
                              style: TextStyle(
                                fontFamily: 'Barlow-Black',
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => GalleryWeb(),
                            ),
                          );
                        },
                        child: const Text(
                          'Discover',
                          style: TextStyle(
                            fontFamily: 'Barlow-Black',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AboutUsWeb(),
                            ),
                          );
                        },
                        child: const Text(
                          'About Us',
                          style: TextStyle(
                            fontFamily: 'Barlow-Black',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CompetitionPageWeb(),
                            ),
                          );
                        },
                        child: const Text(
                          'Competition',
                          style: TextStyle(
                            fontFamily: 'Barlow-Black',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DueliteAmbassadorWeb(),
                            ),
                          );
                        },
                        child: const Text(
                          'Ambassadors',
                          style: TextStyle(
                            fontFamily: 'Barlow-Black',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
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
