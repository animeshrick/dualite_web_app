import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contest/upload_contest_mobile.dart';
import 'responsive.dart';
import 'web_view_pages/competition_page_web.dart';

class DualiteCompetition extends StatefulWidget {
  const DualiteCompetition({Key? key}) : super(key: key);

  @override
  State<DualiteCompetition> createState() => _DualiteCompetitionState();
}

class _DualiteCompetitionState extends State<DualiteCompetition> {
  List img = [
    '',
    "assets/web_competition/1.png",
    "assets/web_competition/2.png",
    "assets/web_competition/3.png",
    "assets/web_competition/4.png",
    "assets/web_competition/5.png",
    "assets/web_competition/6.png",
    "assets/web_competition/7.png",
    "assets/web_competition/8.png",
    "assets/web_competition/9.png",
    "assets/web_competition/10.png",
    "assets/web_competition/11.png",
    "assets/web_competition/12.png",
    "assets/web_competition/13.png",
    "assets/web_competition/14.png",
    "assets/web_competition/15.png",
    "assets/web_competition/16.png",
    "assets/web_competition/17.png",
    "assets/web_competition/18.png",
    "assets/web_competition/19.png",
    "assets/web_competition/20.png",
    "assets/web_competition/21.png",
    "assets/web_competition/22.png",
    "assets/web_competition/23.png",
  ];

  List bg = [
    '',
    "assets/web_competition/bg/bg1.png",
    "assets/web_competition/bg/bg2.png",
    "assets/web_competition/bg/bg3.png",
    "assets/web_competition/bg/bg4.png",
    "assets/web_competition/bg/bg5.png",
  ];
  Color redColor = Color(0xffec1c26);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (!ResponsiveWidget.isSmallScreen(context)) {
      return CompetitionPageWeb();
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: screenSize.height * 0.86,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(
                //       bg[1],
                //     ),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 5, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'BECOME THE\nFIRST STARS OF\nDUALITE',
                          style: TextStyle(
                            color: redColor,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Black BT',
                          ),
                        ),
                      ),
                    ),

                    /// 'THE DUALITE\nCOMPETITION\nAWAITS',
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 15, 0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'THE DUALITE\nCOMPETITION\nAWAITS',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: redColor,
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Black BT',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(
                //       bg[2],
                //     ),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        img[5],
                        // width: screenSize.width * 0.1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          img[9],
                          width: screenSize.width * 0.3,
                        ),
                        Image.asset(
                          img[10],
                          width: screenSize.width * 0.3,
                        ),
                        Image.asset(
                          img[11],
                          width: screenSize.width * 0.3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(
                //       bg[3],
                //     ),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: Column(
                  children: [
                    Text(
                      'CRATE BIG. WIN BIG.',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Swiss 721 Black BT',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          img[12],
                          width: screenSize.width * 0.32,
                        ),
                        Image.asset(
                          img[13],
                          width: screenSize.width * 0.32,
                        ),
                        Image.asset(
                          img[14],
                          width: screenSize.width * 0.32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(
                //       bg[4],
                //     ),
                //     fit: BoxFit.cover,
                //   ),
                // ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'GET INSPIRED RIGHT AWAY',
                        style: TextStyle(
                          color: redColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Swiss 721 Black BT',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          img[15],
                          width: screenSize.width * 0.3,
                        ),
                        Image.asset(
                          "assets/DualiteCompetition/x.png",
                          width: screenSize.width * 0.3,
                        ),
                        Image.asset(
                          "assets/DualiteCompetition/y.png",
                          width: screenSize.width * 0.3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: screenSize.width,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(
                //       bg[5],
                //     ),
                //     fit: BoxFit.fill,
                //     scale: 1.0,
                //   ),
                // ),
                child: Column(
                  children: [
                    Text(
                      'START CREATING NOW',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Swiss 721 Black BT',
                      ),
                    ),
                    Text(
                      'LIKE, RIGHT NOW!',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Swiss 721 Black BT',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => UploadContestMobile(),
                          ),
                        );
                      },
                      child: Image.asset(
                        img[19],
                        width: screenSize.width * 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      );
    }
  }
}
/*Column(
            children: [
              Image.asset(
                'assets/DualiteCompetition/3.png',
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Stop making boring',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: "RussoOne-Regular"),
              ),
              SizedBox(
                height: 170,
                child: Stack(
                  children: [
                    const Positioned(
                      left: 0,
                      top: 80,
                      child: SizedBox(
                        height: 80,
                        child: Card(
                          color: Color(0xff7da9df),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8),
                            child: Center(
                                child: Text(
                              'PERFORMANCE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Aileron-Regular"),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/DualiteCompetition/e.png',
                      width: 200,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 65,
                          top: 90,
                          child: SizedBox(
                            height: 100,
                            width: 120,
                            child: Card(
                              color: Color(0xff7da9df),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0, right: 8, top: 15),
                                child: Center(
                                    child: Text(
                                  'MUSIC',
                                  style: TextStyle(
                                    fontFamily: "Aileron-Regular",
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/DualiteCompetition/t4.png',
                          width: 250,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        const Positioned(
                          right: 70,
                          top: 80,
                          child: SizedBox(
                            height: 100,
                            width: 120,
                            child: Card(
                              color: Color(0xff7da9df),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0, right: 8, top: 15),
                                child: Center(
                                    child: Text(
                                  'DANCE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Aileron-Regular"),
                                )),
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/DualiteCompetition/t3.png',
                          width: 250,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text(
                '...and so much more!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "RussoOne-Regular"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Create big.\nWin big.',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "RussoOne-Regular"),
              ),
              Center(
                child: Image.asset(
                  'assets/DualiteCompetition/5.png',
                ),
              ),
              Card(
                color: Color(0xff7da9df),
                child: SizedBox(
                  height: 100,
                  width: screenSize.width * 0.8,
                  child: const Center(
                    child: Text(
                      'Rs.20,000 PRIZE POOL',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "RussoOne-Regular",
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Color(0xff7da9df),
                child: SizedBox(
                  height: 100,
                  width: screenSize.width * 0.8,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "EARLY-BIRD ACCESS TO THE APP",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "RussoOne-Regular",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Color(0xff7da9df),
                child: SizedBox(
                  height: 100,
                  width: screenSize.width * 0.8,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "CONNECT WITH HIGHLY DECORATED COMMUNITY",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "RussoOne-Regular",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Get inspired\nright away',
                    style: TextStyle(
                      fontSize: 44,
                      fontFamily: "RussoOne-Regular",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/DualiteCompetition/t1.png',
                  width: 400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/DualiteCompetition/x.png',
                    width: screenSize.width * 0.55,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Image.asset(
                      'assets/DualiteCompetition/y.png',
                      width: screenSize.width * 0.35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Start creating now.\nLike, right now.",
                style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                    fontFamily: "RussoOne-Regular"),
              ),
              SizedBox(
                height: screenSize.height * 0.1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ContestPage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/DualiteCompetition/upload.png',
                  width: screenSize.width * 0.7,
                ),
              ),
              Image.asset(
                'assets/DualiteCompetition/6.png',
                width: screenSize.width,
              ),
            ],
          )*/
