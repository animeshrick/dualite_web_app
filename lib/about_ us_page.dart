import 'package:dualite_web_app/custom_drawer.dart';
import 'package:dualite_web_app/web_view_pages/about_us_web.dart';
import 'package:dualite_web_app/web_view_pages/competition_page_web.dart';
import 'package:dualite_web_app/web_view_pages/duelite_ambassador_web.dart';
import 'package:dualite_web_app/web_view_pages/gallery_web.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'const.dart';
import 'responsive.dart';

// class AboutUsPage extends StatelessWidget {
//   bool active = true;
//
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return ResponsiveWidget.isSmallScreen(context)
//         ? SafeArea(
//             child: Scaffold(
//               backgroundColor: primaryColor,
//               endDrawer: NavDraw(),
//               appBar: AppBar(
//                 elevation: 0,
//                 iconTheme: const IconThemeData(
//                   color: red,
//                 ), // color will chnage
//                 leading: Image.asset(
//                   logo,
//                   color: Colors.white,
//                 ), //icon will change
//                 backgroundColor: Colors.grey[800],
//               ),
//               body: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(
//                         left: 15.0,
//                         top: 15.0,
//                         bottom: 15.0,
//                       ),
//                       child: Text(
//                         'Put Things in\nPrespective',
//                         style: TextStyle(
//                           fontFamily: "bridge-text-medium",
//                           fontWeight: FontWeight.bold,
//                           fontSize: 30,
//                         ),
//                       ),
//                     ),
//                     Image.asset(
//                       videoImg,
//                       width: screenSize.width,
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.02,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text(
//                             'DUALITE',
//                             style: TextStyle(
//                               fontFamily: "bridge-text-medium",
//                               fontSize: 20,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(
//                             "A next-generation interactive platform for creators to make the viewing experience more engaging.",
//                             style: TextStyle(
//                               fontFamily: "blauth-regular",
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Divider(
//                             color: Colors.red,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             '"The content that we consume everyday still hasn\'t utilized the effectiveness of touch available on our mobile devices in a simple, engaging and effective manner, and we strive to each that."',
//                             style: TextStyle(
//                               //  fontFamily: "blauth-regular",//TT Hoves Extralight
//                               fontSize: 20,
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Divider(
//                             color: Colors.red,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'About Us',
//                             style: TextStyle(
//                               fontFamily: "bridge-text-medium",
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "At Dualite, we believe that the right approach and creative edge can lead to make extraordinary things that people would find highly engaging via interacting with it. We're a young and talented group that believes in a much more immersive future and believe that a digital metamorphosis of video is on its way to revolutionize content that we know and consume.",
//                             style: TextStyle(
//                               fontFamily: "blauth-regular",
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                     // Container(
//                     //   height: 120,
//                     //   width: MediaQuery.of(context).size.width,
//                     //   color: red,
//                     //   child: const Padding(
//                     //     padding: EdgeInsets.all(18.0),
//                     //     child: Text(
//                     //       "We're a bunch of creative people who believe in moonshot thinking and our mission is to give the crazy ones a stage to show their creativity.",
//                     //       style: TextStyle(
//                     //         fontFamily: "blauth-regular",
//                     //         fontSize: 20,
//                     //         color: Colors.white,
//                     //         fontWeight: FontWeight.w500,
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//                     Container(
//                       height: 280,
//                       width: MediaQuery.of(context).size.width,
//                       color: foolterColor,
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           children: [
//                             // Container(
//                             //   decoration: BoxDecoration(
//                             //     border: Border.all(
//                             //       width: 2,
//                             //       color: Colors.red,
//                             //     ),
//                             //     borderRadius: const BorderRadius.all(
//                             //       Radius.circular(20),
//                             //     ),
//                             //   ),
//                             //   child: const Padding(
//                             //     padding: EdgeInsets.only(
//                             //       left: 70,
//                             //       right: 70,
//                             //     ),
//                             //     child: Text(
//                             //       'SIGN UP',
//                             //       style: TextStyle(
//                             //         fontFamily:
//                             //             "PlayfairDisplay-VariableFont_wght",
//                             //         fontSize: 18,
//                             //         color: Colors.white,
//                             //         fontWeight: FontWeight.w500,
//                             //       ),
//                             //     ),
//                             //   ),
//                             // ),
//                             Image.asset(
//                               logo,
//                               width: 90,
//                               color: Colors.white,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (_) => HomePage()),
//                                 );
//                               },
//                               child: const Text(
//                                 'Home',
//                                 style: TextStyle(
//                                   fontFamily: "blauth-regular",
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (_) => Gallery()),
//                                 );
//                               },
//                               child: const Text(
//                                 'Discovery',
//                                 style: TextStyle(
//                                   fontFamily: "blauth-regular",
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (_) => DualiteCompetition()),
//                                 );
//                               },
//                               child: const Text(
//                                 'Dualite Competition',
//                                 style: TextStyle(
//                                   fontFamily: "blauth-regular",
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (_) => DualiteAmbassdors()),
//                                 );
//                               },
//                               child: const Text(
//                                 'Dualite Ambassdors',
//                                 style: TextStyle(
//                                   fontFamily: "blauth-regular",
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.2,
//                               child: const Divider(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         : AboutUsWeb();
//   }
// }

class AboutUsMobile extends StatefulWidget {
  @override
  State<AboutUsMobile> createState() => _AboutUsMobileState();
}

class _AboutUsMobileState extends State<AboutUsMobile> {
  TextEditingController waitListText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'rohan@gmail.com',
        queryParameters: {'subject': 'Example Subject & Symbols are allowed!'});
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            backgroundColor: primaryColor,
            endDrawer: NavDraw(),
            appBar: AppBar(
              elevation: 0,
              iconTheme: const IconThemeData(
                color: red,
              ),
              leading: Image.asset(
                logo,
                color: Colors.white,
              ), //icon will change
              backgroundColor: Colors.grey[800],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: w,
                    color: appBlack,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        const SizedBox(
                          height: 10,
                        ),
                        FittedBox(
                          child: Text(
                            'To all the \ncreators,',
                            style: TextStyle(
                              fontFamily: 'VisiaPro-Regular',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 83.0,
                              right: 83,
                              top: 88,
                              bottom: 88,
                            ),
                            child: Text(
                              'We’re absolute admirers of you. The \nsheer brilliance through which you create \nand build beautiful things and moments \nof magic, we’re in awe. \n  And through our interactive tools and a \nplace where you can build great beautiful \nthings. It’s our token of gratitude to you.  \n  The greatest gift that you can give us is \nto push our tools beyond their limits and \npaint till the sky mirrors your colors.',
                              style: TextStyle(
                                // height: 1,
                                fontFamily: 'VisiaPro-Regular',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 83,
                            bottom: 50,
                          ),
                          child: Text(
                            "- Dualite Team",
                            style: TextStyle(
                              fontFamily: 'VisiaPro-Regular',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 27,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 83.0,
                      right: 83,
                      top: 30,
                      bottom: 31,
                    ),
                    child: Text(
                      'Meet our team',
                      style: TextStyle(
                        fontFamily: 'Swiss 721 Black BT',
                        fontWeight: FontWeight.w400,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                          border: Border.all(color: appBlack),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 10,
                                right: 10,
                              ),
                              child: Image.asset(
                                'assets/web_about_us/HOME PAGE-DesktopVersion 7.png',
                                width: 100,
                                height: 150,
                              ),
                            ),
                            const Text(
                              'Founder',
                              style: TextStyle(
                                  fontFamily: 'Swiss 721 Black BT',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const FittedBox(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            '"blah blah blah"',
                            style: TextStyle(
                                fontFamily: 'VisiaPro-Regular',
                                fontSize: 27,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                          border: Border.all(color: appBlack),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 10,
                                right: 10,
                              ),
                              child: Image.asset(
                                "assets/web_about_us/HOME PAGE-DesktopVersion 8.png",
                                width: 100,
                                height: 150,
                              ),
                            ),
                            const Text(
                              'Co-Founder',
                              style: TextStyle(
                                  fontFamily: 'Swiss 721 Black BT',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const FittedBox(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            '"blah blah blah"',
                            style: TextStyle(
                                fontFamily: 'VisiaPro-Regular',
                                fontSize: 27,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
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
                                builder: (_) => GalleryWeb(),
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
                                builder: (_) => AboutUsWeb(),
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
                                builder: (_) => CompetitionPageWeb(),
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
                                builder: (_) => DueliteAmbassadorWeb(),
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
          )
        : AboutUsWeb();
  }
}
