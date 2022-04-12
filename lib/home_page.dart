import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_ us_page.dart';
import 'const.dart';
import 'custom_drawer.dart';
import 'dualite_ambassdors/dualite_ambassdors.dart';
import 'dualitr_competition.dart';
import 'gallaery.dart';

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

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  String home_1 = 'assets/web_home/home_1.png';
  TextEditingController waitListText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
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
                fontFamily: 'Swiss 721 Bold BT',
              ),
            ),
            const Text(
              'By THE CREATORS,',
              style: TextStyle(
                color: red,
                fontSize: 28,
                fontWeight: FontWeight.w400,
                fontFamily: 'Swiss 721 Bold BT',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 550,
              width: w,
              color: appBlack,
              child: Column(
                children: [
                  Image.asset('assets/web_home/HOME PAGE-DesktopVersion 7.png'),
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
                          padding: EdgeInsets.only(right: 10.0, left: 10),
                          child: SizedBox(
                            width: 600,
                            child: Text(
                              "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ",
                              maxLines: 3,
                              textAlign: TextAlign.justify,
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
              height: 30,
            ),
            const Text(
              'Our Canvas',
              style: TextStyle(
                color: appBlack,
                fontSize: 35,
                fontWeight: FontWeight.w800,
                fontFamily: 'Swiss 721 Bold BT',
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
            const SizedBox(
              height: 30,
            ),

            ///bottom part
            Container(
              height: 150,
              width: w,
              color: red,
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "WE'RE CREATORS TOO",
                    style: TextStyle(
                      fontFamily: "Swiss 721 Black BT",
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "We're a bunch of creative people who believe \nin moonshot thinking and our mission is to give \nthe crazy ones a stage to show their creativity.",
                      style: TextStyle(
                        fontFamily: "blauth-regular",
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 410,
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
                    "Put Things In\nPrespective",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Swiss 721 Black BT",
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 32,
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
            ),
            Container(
              width: w,
              color: appBlack,
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                        fontFamily: "blauth-regular",
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
                        fontFamily: "blauth-regular",
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
                        fontFamily: "blauth-regular",
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
                        fontFamily: "blauth-regular",
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
                          'assets/insta.png',
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await launch(twitterLink);
                        },
                        child: Image.asset(
                          'assets/twitter.png',
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await launch(linkedinLink);
                        },
                        child: Image.asset(
                          'assets/linkdin.png',
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
    );
  }
}
