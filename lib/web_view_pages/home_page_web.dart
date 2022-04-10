import 'package:flutter/material.dart';

import '../const.dart';
import '../custom_drawer.dart';

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  String home_1 = 'assets/web_home/home_1.png';

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
              height: 600,
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
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Swiss 721 Bold BT',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
