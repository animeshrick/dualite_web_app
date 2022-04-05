import 'package:flutter/material.dart';

import 'upload_web.dart';

class CompetitionPageWeb extends StatelessWidget {
  Color redColor = Color(0xffec1c26);
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
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                // height: screenSize.height * 0.86,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      bg[1],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'BECOME THE\nFIRST STARS OF\nDUALITE',
                          style: TextStyle(
                            color: redColor,
                            fontSize: 100,
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
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Swiss 721 Black BT',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const Divider(
              //   color: Colors.black,
              // ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      bg[2],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        img[5],
                        width: screenSize.width * 0.45,
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
              // const Divider(
              //   color: Colors.black,
              // ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      bg[3],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'CRATE BIG. WIN BIG.',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Swiss 721 Black BT',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          img[12],
                          width: screenSize.width * 0.25,
                        ),
                        Image.asset(
                          img[13],
                          width: screenSize.width * 0.25,
                        ),
                        Image.asset(
                          img[14],
                          width: screenSize.width * 0.25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // const Divider(
              //   color: Colors.black,
              // ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      bg[4],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'GET INSPIRED RIGHT AWAY',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Swiss 721 Black BT',
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // const Divider(
              //   color: Colors.black,
              // ),
              Container(
                width: screenSize.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      bg[5],
                    ),
                    fit: BoxFit.fill,
                    scale: 1.0,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'START CREATING NOW',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Swiss 721 Black BT',
                      ),
                    ),
                    Text(
                      'LIKE, RIGHT NOW!',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 55,
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
                            builder: (_) => UploadContestWeb(),
                          ),
                        );
                      },
                      child: Image.asset(
                        img[19],
                        width: screenSize.width * 0.25,
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
      ),
    );
  }
}
