import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const.dart';
import '../widgets/canvas_tile.dart';
import '../widgets/social_icon.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //Custom AppBar
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/interactive.png',
                        width: 40,
                        height: 40,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 1,
              thickness: 1,
            ),
            //Body layout
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.2,
                      decoration: const BoxDecoration(
                        color: appBlack,
                      ),
                      child: Column(
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          const Text(
                            'Our Canvas',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: "Barlow-Black",
                              fontSize: 36,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.005,
                          ),
                          const Text(
                            'A selection of the finest edits, amplified with the interactive \'tap\' element',
                            style: TextStyle(
                              // fontFamily: 'TikTokIcons',
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Barlow-Black",
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const CanvasTile(),
                    const CanvasTile(),
                    const CanvasTile(),
                    const CanvasTile(),
                    const CanvasTile(),
                    Container(
                      width: size.width,
                      height: size.height * 0.3,
                      decoration: const BoxDecoration(
                        color: red,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 21, right: 21, top: 69, bottom: 68),
                        child: Text(
                          "WE’RE BUILDING A PLACE TO CREATE MINDBLOWING THINGS, AND OF ENDLESS POSSIBILITIES.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Barlow-Black",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      // height: size.height * 0.45,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/interactive.png',
                            color: Colors.white,
                            width: 70,
                            height: 80,
                          ),
                          const Text(
                            'Put Things In Perspective.',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Barlow-Black",
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Container(
                            width: size.width * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Join the waitlist',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    'OK',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Barlow-Black",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.0),
                            child: Text(
                              'Discover',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Barlow-Black",
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.0),
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Barlow-Black",
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.0),
                            child: Text(
                              'Competition',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Barlow-Black",
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.0),
                            child: Text(
                              'Ambassadors',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Barlow-Black",
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialCard(
                                icon: 'assets/icons/instagram.svg',
                                press: () {},
                              ),
                              SocialCard(
                                icon: 'assets/icons/twitter.svg',
                                press: () {},
                              ),
                              SocialCard(
                                icon: 'assets/icons/linkedin.svg',
                                press: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
