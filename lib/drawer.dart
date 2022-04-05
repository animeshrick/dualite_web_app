import 'package:dualite_web_app/interestive_video_player/test.dart';
import 'package:flutter/material.dart';

import 'about_%20us_page.dart';
import 'const.dart';
import 'dualite_ambassdors/dualite_ambassdors.dart';
import 'dualitr_competition.dart';
import 'gallaery.dart';
import 'home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xfff6f8f9),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OnHover(builder: (isHovered) {
                      final color = isHovered ? red : Colors.black;
                      return IconButton(
                          // hoverColor: red,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: color,
                            size: 25,
                          ));
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    OnHover(builder: (isHovered) {
                      final color = isHovered ? red : Colors.black;
                      return InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const HomePage()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.home, color: color),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text('HOME',
                                    style: TextStyle(color: color)),
                              ),
                            ],
                          ));
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    OnHover(builder: (isHovered) {
                      final color = isHovered ? red : Colors.black;
                      return Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Gallery()),
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.explore, color: color),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Text('DISCOVER',
                                      style: TextStyle(color: color)),
                                ),
                              ],
                            )),
                      );
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    OnHover(builder: (isHovered) {
                      final color = isHovered ? red : Colors.black;
                      return Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => TestVideoPlayer()),
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.email, color: color),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Text('CONTACT',
                                      style: TextStyle(color: color)),
                                ),
                              ],
                            )),
                      );
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    OnHover(builder: (isHovered) {
                      final color = isHovered ? red : Colors.black;
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AboutUsPage()),
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.info, color: color),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text('ABOUT US',
                                    style: TextStyle(color: color)),
                              ),
                            ],
                          ));
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        child: const Text(
                          "DUALITE COMPETITION",
                          style: TextStyle(
                            fontFamily: "SpaceMono-Regular",
                          ),
                        ),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all<Color>(primaryColor),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                        onPressed: () {
                          debugPrint("x");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DualiteCompetition()));
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        child: const Text(
                          "DUALITE AMBASSADORS",
                          style: TextStyle(
                            fontFamily: "SpaceMono-Regular",
                          ),
                        ),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all<Color>(primaryColor),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                        onPressed: () {
                          debugPrint("x");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DualiteAmbassdors()));
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
            const SizedBox(height: 23.0),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  'assets/insta.png',
                  width: 80,
                ),
                Image.asset(
                  'assets/linkdin.png',
                  width: 70,
                ),
                Image.asset(
                  'assets/fb.png',
                  width: 70,
                ),
                Image.asset(
                  'assets/twitter.png',
                  width: 70,
                ),
              ]),
              const SizedBox(height: 160.0),
              Image.asset(
                'assets/logo.png',
                width: screenSize.width * 0.2,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
