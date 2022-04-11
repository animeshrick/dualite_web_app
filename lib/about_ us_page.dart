import 'package:dualite_web_app/custom_drawer.dart';
import 'package:dualite_web_app/web_view_pages/about_us_web.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'dualite_ambassdors/dualite_ambassdors.dart';
import 'dualitr_competition.dart';
import 'gallaery.dart';
import 'home_page.dart';
import 'responsive.dart';

class AboutUsPage extends StatelessWidget {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? SafeArea(
            child: Scaffold(
              backgroundColor: primaryColor,
              endDrawer: NavDraw(),
              appBar: AppBar(
                elevation: 0,
                iconTheme: const IconThemeData(
                  color: red,
                ), // color will chnage
                leading: Image.asset(
                  logo,
                  color: Colors.white,
                ), //icon will change
                backgroundColor: Colors.grey[800],
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                        top: 15.0,
                        bottom: 15.0,
                      ),
                      child: Text(
                        'Put Things in\nPrespective',
                        style: TextStyle(
                          fontFamily: "bridge-text-medium",
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Image.asset(
                      videoImg,
                      width: screenSize.width,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'DUALITE',
                            style: TextStyle(
                              fontFamily: "bridge-text-medium",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "A next-generation interactive platform for creators to make the viewing experience more engaging.",
                            style: TextStyle(
                              fontFamily: "blauth-regular",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '"The content that we consume everyday still hasn\'t utilized the effectiveness of touch available on our mobile devices in a simple, engaging and effective manner, and we strive to each that."',
                            style: TextStyle(
                              //  fontFamily: "blauth-regular",//TT Hoves Extralight
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'About Us',
                            style: TextStyle(
                              fontFamily: "bridge-text-medium",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "At Dualite, we believe that the right approach and creative edge can lead to make extraordinary things that people would find highly engaging via interacting with it. We're a young and talented group that believes in a much more immersive future and believe that a digital metamorphosis of video is on its way to revolutionize content that we know and consume.",
                            style: TextStyle(
                              fontFamily: "blauth-regular",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   height: 120,
                    //   width: MediaQuery.of(context).size.width,
                    //   color: red,
                    //   child: const Padding(
                    //     padding: EdgeInsets.all(18.0),
                    //     child: Text(
                    //       "We're a bunch of creative people who believe in moonshot thinking and our mission is to give the crazy ones a stage to show their creativity.",
                    //       style: TextStyle(
                    //         fontFamily: "blauth-regular",
                    //         fontSize: 20,
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.w500,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      color: foolterColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            // Container(
                            //   decoration: BoxDecoration(
                            //     border: Border.all(
                            //       width: 2,
                            //       color: Colors.red,
                            //     ),
                            //     borderRadius: const BorderRadius.all(
                            //       Radius.circular(20),
                            //     ),
                            //   ),
                            //   child: const Padding(
                            //     padding: EdgeInsets.only(
                            //       left: 70,
                            //       right: 70,
                            //     ),
                            //     child: Text(
                            //       'SIGN UP',
                            //       style: TextStyle(
                            //         fontFamily:
                            //             "PlayfairDisplay-VariableFont_wght",
                            //         fontSize: 18,
                            //         color: Colors.white,
                            //         fontWeight: FontWeight.w500,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Image.asset(
                              logo,
                              width: 90,
                              color: Colors.white,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => HomePage()),
                                );
                              },
                              child: const Text(
                                'Home',
                                style: TextStyle(
                                  fontFamily: "blauth-regular",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => Gallery()),
                                );
                              },
                              child: const Text(
                                'Discovery',
                                style: TextStyle(
                                  fontFamily: "blauth-regular",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DualiteCompetition()),
                                );
                              },
                              child: const Text(
                                'Dualite Competition',
                                style: TextStyle(
                                  fontFamily: "blauth-regular",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DualiteAmbassdors()),
                                );
                              },
                              child: const Text(
                                'Dualite Ambassdors',
                                style: TextStyle(
                                  fontFamily: "blauth-regular",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Divider(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : AboutUsWeb();
  }
}
