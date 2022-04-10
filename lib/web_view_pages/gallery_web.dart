import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../custom_drawer.dart';

class GalleryWeb extends StatefulWidget {
  @override
  _GalleryWebState createState() => _GalleryWebState();
}

class _GalleryWebState extends State<GalleryWeb> {
  List<String> canvasTitle = [
    'Moonshot',
    'Valentine',
  ];
  List<String> canvasText = [
    "A selection of the finest edits, amplified with the interactive ‘tap’ element ",
  ];
  List<String> canvasImg = [
    'assets/web_gallery/gal_1.png',
    'assets/web_gallery/gal_2.png',
  ];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
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
        backgroundColor: appBlack,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: w,
              height: 600,
              color: appBlack,
              padding: const EdgeInsets.only(
                  top: 200, left: 54, right: 54, bottom: 200),
              child: Column(
                children: const [
                  Text(
                    'Our Canvas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 128,
                      fontFamily: "Swiss 721 Black BT",
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      'A selection of the finest edits, amplified with the interactive ‘tap’ element ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'VisiaPro-Regular',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 116,
            ),
            FittedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0),
                    child: Image.asset(
                      canvasImg[0],
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        canvasTitle[0],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Swiss 721 Black BT',
                        ),
                      ),
                      SizedBox(
                        width: 600,
                        height: 150,
                        child: Text(
                          canvasText[0],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'VisiaPro-Regular',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 116,
            ),
            FittedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0),
                    child: Image.asset(
                      canvasImg[1],
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        canvasTitle[1],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Swiss 721 Black BT',
                        ),
                      ),
                      SizedBox(
                        width: 600,
                        height: 150,
                        child: Text(
                          canvasText[0],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'VisiaPro-Regular',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 116,
            ),
            FittedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0),
                    child: Image.asset(
                      canvasImg[0],
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        canvasTitle[0],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Swiss 721 Black BT',
                        ),
                      ),
                      SizedBox(
                        width: 600,
                        height: 150,
                        child: Text(
                          canvasText[0],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'VisiaPro-Regular',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 116,
            ),
            FittedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0),
                    child: Image.asset(
                      canvasImg[1],
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        canvasTitle[1],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Swiss 721 Black BT',
                        ),
                      ),
                      SizedBox(
                        width: 600,
                        height: 150,
                        child: Text(
                          canvasText[0],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'VisiaPro-Regular',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 116,
            ),
            Container(
              height: 350,
              width: w,
              color: red,
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "WE'RE CREATORS TOO",
                    style: TextStyle(
                      fontFamily: "Swiss 721 Black BT",
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 52,
                    ),
                  ),
                  Text(
                    "We're a bunch of creative people who believe \nin moonshot thinking and our mission is to give \nthe crazy ones a stage to show their creativity.",
                    style: TextStyle(
                      fontFamily: "blauth-regular",
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              width: w,
              color: appBlack,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
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
                          SizedBox(
                            width: 200,
                            height: 90,
                            child: TextFormField(
                                decoration: InputDecoration(
                              labelText: "Enter Email",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            )),
                          ),
                        ],
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
