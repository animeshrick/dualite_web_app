import 'package:dualite_web_app/about_%20us_page.dart';
import 'package:dualite_web_app/web_view_pages/competition_page_web.dart';
import 'package:dualite_web_app/web_view_pages/duelite_ambassador_web.dart';
import 'package:dualite_web_app/web_view_pages/gallery_web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const.dart';
import '../custom_drawer.dart';
import '../responsive.dart';

class AboutUsWeb extends StatefulWidget {
  const AboutUsWeb({Key? key}) : super(key: key);

  @override
  State<AboutUsWeb> createState() => _AboutUsWebState();
}

class _AboutUsWebState extends State<AboutUsWeb> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ResponsiveWidget.isSmallScreen(context)
        ? AboutUsMobile()
        : Scaffold(
            // backgroundColor: primaryColor,
            endDrawer: NavDraw(),
            appBar: AppBar(
              elevation: 0,
              iconTheme: const IconThemeData(
                color: red,
              ),
              leading: Image.asset(
                logo,
              ), //icon will change
              backgroundColor: appBlack,
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: w,
                    color: appBlack,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'To all the \ncreators,',
                          style: TextStyle(
                            fontFamily: 'VisiaPro-Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 128,
                          ),
                        ),
                        FittedBox(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 170.0,
                              right: 118,
                              top: 50,
                              bottom: 150,
                            ),
                            child: Text(
                              'We’re absolute admirers of you. The \nsheer brilliance through which you create \nand build beautiful things and moments \nof magic, we’re in awe. \n  And through our interactive tools and a \nplace where you can build great beautiful \nthings. It’s our token of gratitude to you.  \n  The greatest gift that you can give us is \nto push our tools beyond their limits and \npaint till the sky mirrors your colors.',
                              style: TextStyle(
                                // height: 1,
                                fontFamily: 'VisiaPro-Regular',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 64,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 81.0,
                            right: 449,
                            bottom: 156,
                          ),
                          child: Text(
                            "- Dualite Team",
                            style: TextStyle(
                              fontFamily: 'VisiaPro-Regular',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 96,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 188.0,
                      right: 188,
                      top: 45,
                      bottom: 31,
                    ),
                    child: Text(
                      'Meet our team',
                      style: TextStyle(
                        fontFamily: 'Swiss 721 Black BT',
                        fontWeight: FontWeight.w400,
                        fontSize: 96,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
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
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/web_about_us/HOME PAGE-DesktopVersion 7.png',
                              ),
                            ),
                            const Text(
                              'Founder',
                              style: TextStyle(
                                  fontFamily: 'Swiss 721 Black BT',
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const FittedBox(
                        child: Padding(
                          padding: EdgeInsets.only(right: 109.0),
                          child: Text(
                            '"blah blah blah"',
                            style: TextStyle(
                                fontFamily: 'VisiaPro-Regular',
                                fontSize: 70,
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
                        margin: const EdgeInsets.only(left: 50),
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
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/web_about_us/HOME PAGE-DesktopVersion 8.png",
                              ),
                            ),
                            const Text(
                              'Co-Founder',
                              style: TextStyle(
                                  fontFamily: 'Swiss 721 Black BT',
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const FittedBox(
                        child: Padding(
                          padding: EdgeInsets.only(right: 109.0),
                          child: Text(
                            '"blah blah blah"',
                            style: TextStyle(
                                fontFamily: 'VisiaPro-Regular',
                                fontSize: 70,
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
                    height: 200,
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
                                            hintStyle:
                                                TextStyle(color: Colors.white),
                                            fillColor: Colors.white,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: appBlack),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: appBlack),
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
                            InkWell(
                              onTap: () async {
                                await launch(instagramLink);
                              },
                              child: Row(
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
                                  fontFamily: "blauth-regular",
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
                                  fontFamily: "blauth-regular",
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
                                  fontFamily: "blauth-regular",
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
                                  fontFamily: "blauth-regular",
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
