import 'package:dualite_web_app/dualite_ambassdors/dualite_ambassdors.dart';
import 'package:flutter/material.dart';

import 'about_ us_page.dart';
import 'dualitr_competition.dart';
import 'gallaery.dart';
import 'home_page.dart';

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
      child: Container(
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            _createDrawerItem(
                icon: Icons.timer,
                text: 'Home',
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  );
                }),
            _createDrawerItem(
                icon: Icons.history,
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
                icon: Icons.help,
                text: 'About',
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => AboutUsPage()),
                  );
                }),
            _createDrawerItem(
                icon: Icons.rate_review,
                text: 'Competition',
                isSelected: selectedIndex == 3,
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const DualiteCompetition()),
                  );
                }),
            _createDrawerItem(
                icon: Icons.rate_review,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerItem({
  required IconData icon,
  required String text,
  required GestureTapCallback onTap,
  required bool isSelected,
}) {
  return Ink(
    color: isSelected ? Color(0xffE3EAFF) : Colors.transparent,
    child: ListTile(
      selected: true,
      hoverColor: Colors.white,
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
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

class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDraw(),
        appBar: AppBar(
          title: Text("page 0"),
        ),
        body: Text("page 0"));
    ;
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDraw(),
        appBar: AppBar(
          title: Text("page 1"),
        ),
        body: Text("page 1"));
    ;
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDraw(),
        appBar: AppBar(
          title: Text("page 2"),
        ),
        body: Text("page 2"));
    ;
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDraw(),
        appBar: AppBar(
          title: Text("page 3"),
        ),
        body: Text("page 3"));
    ;
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: NavDraw(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
