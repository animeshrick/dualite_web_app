import 'package:flutter/material.dart';

import '../const.dart';
import '../custom_drawer.dart';
import '../dualite_ambassdors/textfield.dart';

class DueliteAmbassadorWeb extends StatefulWidget {
  const DueliteAmbassadorWeb({Key? key}) : super(key: key);

  @override
  State<DueliteAmbassadorWeb> createState() => _DueliteAmbassadorWebState();
}

class _DueliteAmbassadorWebState extends State<DueliteAmbassadorWeb> {
  bool active = true;
  String cat = 'CATEGORY (OPTIONAL)';
  TextEditingController name = TextEditingController();
  Color textColor = Colors.white;
  Color redd = Color(0xffff1616);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff101010),
      endDrawer: NavDraw(),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: red,
        ),
        leading: Image.asset(
          logo,
          color: Colors.white,
        ), //icon will change
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -------------- 1
            Container(
              height: size.height * 0.8,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/DualiteAmbassdors/1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.2, top: size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome\nRohan!', //Welcome\nRohan!
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                        fontFamily: "OpenSauceSans-SemiBold",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: 130,
                            child: Divider(
                              thickness: 3,
                              color: redd,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Flexible(
                          child: SizedBox(
                            width: 130,
                            child: Divider(
                              thickness: 3,
                              color: redd,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Flexible(
                      child: Stack(
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Positioned(
                            top: 10,
                            left: 0,
                            child: Icon(
                              Icons.north_east,
                              size: 40,
                              color: redd,
                            ),
                          ),
                          const Positioned(
                            left: 50,
                            child: SizedBox(
                              width: 350,
                              child: Text(
                                "DUALITE AMBASSADORS ARE HIGHLY CURATED, SELECTED CREATIVE ARTISTS THAT OUR TEAM HAS PICKED TO REPRESENT THE NEXT-GENERATIONAL INTERACTIVE PLATFORM THAT IS GOING TO DISRUPT",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "SpaceMono-Regular",
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/DualiteAmbassdors/img.png',
                  height: size.height * 0.7,
                ),
                Column(
                  children: [
                    customTextField(
                      controller: name,
                      hintText: 'YOUR NAME',
                      validator: (v) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextField(
                      controller: name,
                      hintText: 'YOUR EMAIL',
                      validator: (v) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextField(
                      controller: name,
                      hintText: 'CODE',
                      validator: (v) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: cat,
                        dropdownColor: Colors.grey,
                        style: const TextStyle(color: Colors.white),
                        underline: const SizedBox(),
                        onChanged: (String? newValue) {
                          setState(() {
                            cat = newValue!;
                          });
                        },
                        items: <String>[
                          'CATEGORY (OPTIONAL)',
                          'FILM',
                          'MUSIC',
                          'DANCE',
                          'MISC'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: "SpaceMono-Regular",
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          print("x");
                        },
                        child: Text(
                          'UPLOAD',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontFamily: "SpaceMono-Regular",
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Center(
                        child: Text(
                          'CHOOSE FILE ONE',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SpaceMono-Regular",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Center(
                        child: Text(
                          'CHOOSE FILE ONE',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SpaceMono-Regular",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.black,
              width: size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Terms and Support',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "SpaceMono-Regular",
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Designed by Canva",
                      style: TextStyle(
                        fontFamily: "SpaceMono-Regular",
                      ),
                    ),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlueAccent.withOpacity(0.7)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                    onPressed: () {
                      debugPrint("x");
                    },
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
