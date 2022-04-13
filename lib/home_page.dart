import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dualite_web_app/web_view_pages/home_page_web.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'about_ us_page.dart';
import 'const.dart';
import 'custom_drawer.dart';
import 'dualite_ambassdors/dualite_ambassdors.dart';
import 'dualitr_competition.dart';
import 'gallaery.dart';
import 'responsive.dart';

List<String> imgList = [
  'assets/web_home/home_3.png',
  'assets/web_home/HOME PAGE-DesktopVersion 4.png',
  'assets/web_home/HOME PAGE-DesktopVersion 5.png',
  'assets/web_home/home_3.png',
  'assets/web_home/HOME PAGE-DesktopVersion 4.png',
  'assets/web_home/HOME PAGE-DesktopVersion 5.png',
];

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool active = true;
//
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return ResponsiveWidget.isSmallScreen(context)
//         ? Scaffold(
//             backgroundColor: primaryColor,
//             endDrawer: NavDraw(),
//             appBar: AppBar(
//               elevation: 0,
//               iconTheme: const IconThemeData(
//                 color: red,
//               ), // color will chnage
//               leading: Image.asset(
//                 logo,
//               ), //icon will change
//               backgroundColor: Colors.grey[800],
//             ),
//             body: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Image.asset('assets/pic1.jpg'),
//                   Container(
//                     width: screenSize.width,
//                     decoration: const BoxDecoration(
//                       color: red,
//                       image: DecorationImage(
//                         image: AssetImage("assets/p1.png"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     height: 120,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Text(
//                           'For the creators, ',
//                           style: TextStyle(
//                             fontFamily: "bridge-text-medium",
//                             fontWeight: FontWeight.bold,
//                             fontSize: 24,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Text(
//                           'By the creators,',
//                           style: TextStyle(
//                             fontFamily: "bridge-text-medium",
//                             fontWeight: FontWeight.bold,
//                             fontSize: 24,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => AboutUsMobile()),
//                       );
//                     },
//                     child: Image.asset(
//                       "assets/home/1.png",
//                       width: screenSize.width,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(height: 15),
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Divider(
//                           color: red,
//                         ),
//                         const SizedBox(height: 15),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 13.0),
//                           child: Text(
//                             'Interactive Content',
//                             style: TextStyle(
//                               fontFamily: "bridge-text-medium",
//                               fontWeight: FontWeight.bold,
//                               fontSize: 30,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                         Image.asset(
//                           "assets/home/2.png",
//                           width: screenSize.width,
//                           fit: BoxFit.cover,
//                         ),
//                         Image.asset(
//                           "assets/home/3.png",
//                           width: screenSize.width,
//                           fit: BoxFit.cover,
//                         ),
//                         Image.asset(
//                           "assets/home/4.png",
//                           width: screenSize.width,
//                           fit: BoxFit.cover,
//                         ),
//                         Center(
//                           child: SizedBox(
//                             width: 250,
//                             child: ElevatedButton(
//                               style: ButtonStyle(
//                                   backgroundColor:
//                                       MaterialStateProperty.all(primaryColor),
//                                   shape: MaterialStateProperty.all<
//                                           RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(18.0),
//                                           side: const BorderSide(
//                                               color: Colors.black)))),
//                               child: const Text(
//                                 "SEE ALL",
//                                 style: TextStyle(
//                                   fontFamily: "bridge-text-medium",
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 30,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (_) => Gallery()),
//                                 );
//                               },
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Image.asset(
//                     'assets/home/bottom_home.png',
//                     width: screenSize.width,
//                     fit: BoxFit.cover,
//                   ),
//                   Container(
//                     height: 350,
//                     width: MediaQuery.of(context).size.width,
//                     color: foolterColor,
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Column(
//                         children: [
//                           // Container(
//                           //   decoration: BoxDecoration(
//                           //     border: Border.all(
//                           //       width: 2,
//                           //       color: red,
//                           //     ),
//                           //     borderRadius: const BorderRadius.all(
//                           //       Radius.circular(20),
//                           //     ),
//                           //   ),
//                           //   child: const Padding(
//                           //     padding: EdgeInsets.only(
//                           //       left: 70,
//                           //       right: 70,
//                           //     ),
//                           //     child: Text(
//                           //       'SIGN UP',
//                           //       style: TextStyle(
//                           //         fontFamily: "PlayfairDisplay-VariableFont_wght",
//                           //         fontSize: 18,
//                           //         color: Colors.white,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ),
//                           // ),
//                           Image.asset(
//                             logo,
//                             width: 90,
//                             color: Colors.white,
//                           ),
//                           const SizedBox(height: 10),
//                           InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (_) => Gallery()),
//                               );
//                             },
//                             child: const Text(
//                               'Discover',
//                               style: TextStyle(
//                                 fontFamily: "blauth-regular",
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => AboutUsMobile()),
//                               );
//                             },
//                             child: const Text(
//                               'About Us',
//                               style: TextStyle(
//                                 fontFamily: "blauth-regular",
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => DualiteCompetition()),
//                               );
//                             },
//                             child: const Text(
//                               'Dualite Competition',
//                               style: TextStyle(
//                                 fontFamily: "blauth-regular",
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => DualiteAmbassdors()),
//                               );
//                             },
//                             child: const Text(
//                               'Dualite Ambassdors',
//                               style: TextStyle(
//                                 fontFamily: "blauth-regular",
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width * 0.2,
//                             child: const Divider(
//                               color: Colors.white,
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Image.asset(
//                                 'assets/insta.png',
//                                 width: 50,
//                               ),
//                               Image.asset(
//                                 'assets/linkdin.png',
//                                 width: 50,
//                               ),
//                               Image.asset(
//                                 'assets/fb.png',
//                                 width: 50,
//                               ),
//                               Image.asset(
//                                 'assets/twitter.png',
//                                 width: 50,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         : HomePageWeb();
//   }
// }

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
          height: 160,
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
                    fontSize: 21.0,
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
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Barlow-Black',
                  ),
                ),
              ),
            ],
          ),
        ))
    .toList();

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  String home_1 = 'assets/web_home/home_1.png';
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
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            endDrawer: NavDraw(),
            appBar: AppBar(
              elevation: 0,
              iconTheme: const IconThemeData(
                color: red,
              ), // color will chnage
              leading: Image.asset(
                logo,
              ), //icon will change
              backgroundColor: Colors.grey[800],
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset(
                    home_1,
                    width: w,
                    height: 226,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'FOR THE CREATORS,',
                    style: TextStyle(
                      color: red,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Barlow-Black',
                    ),
                  ),
                  const Text(
                    'By THE CREATORS,',
                    style: TextStyle(
                      color: red,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Barlow-Black',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 450,
                    width: w,
                    color: appBlack,
                    child: Column(
                      children: [
                        Image.asset(
                            'assets/web_home/HOME PAGE-DesktopVersion 7.png'),
                        FittedBox(
                          child: Column(
                            children: const [
                              Text(
                                'Introducing Dualite',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Barlow-Black',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.0, left: 10, top: 15),
                                child: SizedBox(
                                  // width: 600,
                                  child: Text(
                                    "A next-generational interactive platform for creators to make the viewing experience more engaging. ",
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Barlow-Black',
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
                    height: 30,
                  ),
                  const Text(
                    'Our Canvas',
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Barlow-Black',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ImageSlideshow(
                  //   width: w,
                  //   height: 150,
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
                    height: 300,
                    width: w,
                    child: CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                          viewportFraction: 0.5,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 1),
                      items: imageSliders,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: GestureDetector(
                          onTap: () => _controller.previousPage(),
                          child: Image.asset(
                            'assets/web_home/back.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _controller.nextPage(),
                        child: Image.asset(
                          'assets/web_home/forward.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
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
                    width: w,
                    color: appBlack,
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          width: 150,
                          color: Colors.white,
                        ),
                        const Text(
                          "Put Things In  Prespective",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Barlow-Black',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: TextFormField(
                                    controller: waitListText,
                                    style: const TextStyle(color: Colors.white),
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
                              ),
                              TextButton(
                                onPressed: () {
                                  if (waitListText.text.isNotEmpty) {
                                    uploadWaitListApi(
                                            email: waitListText.text.toString())
                                        .then((value) => waitListText.clear());
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
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
                        const SizedBox(
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Gallery(),
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
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AboutUsMobile(),
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
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DualiteCompetition(),
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
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DualiteAmbassdors(),
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
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                await launch(instagramLink);
                              },
                              child: Image.asset(
                                'assets/instagram.png',
                                width: 30,
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await launch(twitterLink);
                              },
                              child: Image.asset(
                                'assets/twitter_outline.png',
                                width: 30,
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await launch(linkedinLink);
                              },
                              child: Image.asset(
                                'assets/linkedin_outline.png',
                                width: 30,
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : HomePageWeb();
  }
}
