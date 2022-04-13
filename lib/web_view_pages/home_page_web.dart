import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../custom_drawer.dart';

List<String> imgList = [
  'assets/web_home/home_3.png',
  'assets/web_home/home_3.png',
  'assets/web_home/home_3.png',
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
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            height: 537,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
                          fontFamily: 'Barlow-Regular',
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
                          fontFamily: 'Barlow-Regular',
                        ),
                      ),
                    ),
                  ],
                )),
          ))
      .toList();

  String home_1 = 'assets/web_home/Screenshot 2022-04-12 at 1.09 1.png';

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
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
                    fontFamily: 'Barlow-Regular',
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
                            fontFamily: 'Barlow-Regular',
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
                              fontFamily: 'Barlow-Regular',
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
                fontFamily: 'Barlow-Regular',
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
                options: CarouselOptions(viewportFraction: 0.5),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FittedBox(
                    child: Text(
                      "WE’RE BUILDING A PLACE TO CREATE \nMINDBLOWING THINGS, OF ENDLESS \nPOSSIBILITIES.",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow-Regular',
                        fontSize: 75,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
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
                              fontFamily: 'Barlow-Regular',
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
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Barlow-Regular',
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
                                  onPressed: () {},
                                  child: const Text(
                                    "Ok",
                                    style: TextStyle(
                                      fontFamily: 'Barlow-Regular',
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
                      Row(
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
                              fontFamily: 'Barlow-Regular',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Row(
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
                              fontFamily: 'Barlow-Regular',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Discover',
                        style: TextStyle(
                          fontFamily: 'Barlow-Regular',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontFamily: 'Barlow-Regular',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Competition',
                        style: TextStyle(
                          fontFamily: 'Barlow-Regular',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Ambassadors',
                        style: TextStyle(
                          fontFamily: 'Barlow-Regular',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
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
