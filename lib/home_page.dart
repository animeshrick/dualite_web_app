import 'package:dualite_web_app/web_view_pages/home_page_web.dart';
import 'package:flutter/material.dart';

import 'about_ us_page.dart';
import 'const.dart';
import 'custom_drawer.dart';
import 'dualite_ambassdors/dualite_ambassdors.dart';
import 'dualitr_competition.dart';
import 'gallaery.dart';
import 'responsive.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
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
              backgroundColor: Colors.grey[800],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/pic1.jpg'),
                  Container(
                    width: screenSize.width,
                    decoration: const BoxDecoration(
                      color: red,
                      image: DecorationImage(
                        image: AssetImage("assets/p1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'For the creators, ',
                          style: TextStyle(
                            fontFamily: "bridge-text-medium",
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'By the creators,',
                          style: TextStyle(
                            fontFamily: "bridge-text-medium",
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AboutUsMobile()),
                      );
                    },
                    child: Image.asset(
                      "assets/home/1.png",
                      width: screenSize.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(
                          color: red,
                        ),
                        const SizedBox(height: 15),
                        const Padding(
                          padding: EdgeInsets.only(left: 13.0),
                          child: Text(
                            'Interactive Content',
                            style: TextStyle(
                              fontFamily: "bridge-text-medium",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/home/2.png",
                          width: screenSize.width,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/home/3.png",
                          width: screenSize.width,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/home/4.png",
                          width: screenSize.width,
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: SizedBox(
                            width: 250,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(primaryColor),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: const BorderSide(
                                              color: Colors.black)))),
                              child: const Text(
                                "SEE ALL",
                                style: TextStyle(
                                  fontFamily: "bridge-text-medium",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => Gallery()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/home/bottom_home.png',
                    width: screenSize.width,
                    fit: BoxFit.cover,
                  ),
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
                                MaterialPageRoute(builder: (_) => Gallery()),
                              );
                            },
                            child: const Text(
                              'Discover',
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
                                    builder: (_) => AboutUsMobile()),
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
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: const Divider(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/insta.png',
                                width: 50,
                              ),
                              Image.asset(
                                'assets/linkdin.png',
                                width: 50,
                              ),
                              Image.asset(
                                'assets/fb.png',
                                width: 50,
                              ),
                              Image.asset(
                                'assets/twitter.png',
                                width: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : HomePageWeb();
  }
}
