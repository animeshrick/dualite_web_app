import 'package:dualite_web_app/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'about_ us_page.dart';
import 'const.dart';
import 'dualite_ambassdors/dualite_ambassdors.dart';
import 'dualitr_competition.dart';
import 'home_page.dart';
import 'interestive_video_player/video_player.dart';
import 'responsive.dart';

class Gallery extends StatelessWidget {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? SafeArea(
            child: Scaffold(
              backgroundColor: primaryColor,
              endDrawer: NavDraw(),
              appBar: AppBar(
                elevation: 0,
                iconTheme: const IconThemeData(
                  color: red,
                ),
                leading: Image.asset(
                  logo,
                ), //icon will change
                backgroundColor: Colors.grey[800],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    ImageSlideshow(
                      width: double.infinity,
                      height: 300,
                      initialPage: 0,
                      indicatorColor: Colors.white,
                      indicatorBackgroundColor: Colors.white24,
                      children: [
                        Image.asset(
                          videoImg,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          videoImg,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          videoImg,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    /* Interactive video player start */
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AssetVideo(),
                            ),
                          );
                        },
                        child: Image.asset('assets/pic1.jpg')),
                    // AssetVideo(),
                    /* Interactive video player end*/
                    const SizedBox(height: 20),
                    ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (_, __) => const SizedBox(height: 5),
                      itemCount: 2,
                      itemBuilder: (_, int i) {
                        return Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                videoImg,
                                // height: 300.0,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Insomnia',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '2 Min',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]);
                      },
                    ),
                    const SizedBox(height: 20),
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
                      height: 350,
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
                            //       color: red,
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
                            //         fontFamily: "PlayfairDisplay-VariableFont_wght",
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
                            const SizedBox(height: 10),
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
                                  MaterialPageRoute(
                                      builder: (_) => AboutUsPage()),
                                );
                              },
                              child: const Text(
                                'About Us',
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
        : const SizedBox(
            height: 0,
            child: Text("COMMING SOON"),
          );
  }
}
