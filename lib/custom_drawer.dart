import 'package:dualite_web_app/const.dart';
import 'package:dualite_web_app/dualite_ambassdors/dualite_ambassdors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_ us_page.dart';
import 'dualitr_competition.dart';
import 'gallaery.dart';
import 'home_page.dart';
import 'interestive_video_player/test_video.dart';

class NavDraw extends StatefulWidget {
  @override
  _NavDrawState createState() => _NavDrawState();
}

int selectedIndex = 0;

class _NavDrawState extends State<NavDraw> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: SizedBox(
        width: screenSize.width,
        child: ListView(
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => PlayVideo()),
                );
              },
              child: Text("s"),
            ),
            _createDrawerItem(
                // icon: Icons.timer,
                text: 'Home',
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage2()),
                  );
                }),
            _createDrawerItem(
                // icon: Icons.history,
                text: 'Discover',
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => Gallery()),
                  );
                }),
            _createDrawerItem(
                // icon: Icons.help,
                text: 'About',
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => AboutUsMobile()),
                  );
                }),
            _createDrawerItem(
                // icon: Icons.rate_review,
                text: 'Competition',
                isSelected: selectedIndex == 3,
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const DualiteCompetition()),
                  );
                }),
            _createDrawerItem(
                // icon: Icons.rate_review,
                text: 'Ambassadors',
                isSelected: selectedIndex == 4,
                onTap: () {
                  setState(() {
                    selectedIndex = 4;
                  });

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const DualiteAmbassdors()),
                  );
                }),
            const SizedBox(height: 23.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/insta.png',
                        width: 50,
                      ),
                      Image.asset(
                        'assets/linkdin.png',
                        width: 45,
                      ),
                      Image.asset(
                        'assets/fb.png',
                        width: 45,
                      ),
                      Image.asset(
                        'assets/twitter.png',
                        width: 45,
                      ),
                    ]),
                const SizedBox(height: 50.0),
                Image.asset(
                  'assets/logo.png',
                  width: screenSize.width * 0.2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerItem({
  // required IconData icon,
  required String text,
  required GestureTapCallback onTap,
  required bool isSelected,
}) {
  return Ink(
    // color: isSelected ? red : Colors.transparent,
    child: ListTile(
      selected: true,
      hoverColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? red : Colors.black,
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    ),
  );
}

// class CustomMyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       initialRoute: '/page0',
//       routes: {
//         '/page0': (context) => Page0(),
//         '/page1': (context) => Page1(),
//         '/page2': (context) => Page2(),
//         '/page3': (context) => Page3(),
//       },
//     );
//   }
// }
