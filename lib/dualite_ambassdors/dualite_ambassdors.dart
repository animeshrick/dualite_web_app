import 'package:flutter/material.dart';

import '../const.dart';
import '../drawer.dart';
import '../responsive.dart';
import '../web_view_pages/duelite_ambassador_web.dart';
import 'textfield.dart';

class DualiteAmbassdors extends StatefulWidget {
  const DualiteAmbassdors({Key? key}) : super(key: key);

  @override
  State<DualiteAmbassdors> createState() => _DualiteAmbassdorsState();
}

class _DualiteAmbassdorsState extends State<DualiteAmbassdors> {
  String Cat = 'CATEGORY (OPTIONAL)';
  TextEditingController name = TextEditingController();
  Color? textColor = Colors.white;

  @override
  void initState() {
    super.initState();
    // textColor = Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            backgroundColor: Colors.black.withOpacity(0.9),
            endDrawer: MyDrawer(),
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
                    height: size.height * 0.65,
                    width: size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/DualiteAmbassdors/1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 70, 30, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome\nRohan!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              fontFamily: "OpenSauceSans-SemiBold",
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Row(
                              children: const [
                                Flexible(
                                  child: SizedBox(
                                    width: 80,
                                    child: Divider(
                                      thickness: 2,
                                      color: red,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Flexible(
                                  child: SizedBox(
                                    width: 80,
                                    child: Divider(
                                      thickness: 2,
                                      color: red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Flexible(
                            child: Stack(
                              clipBehavior: Clip.antiAlias,
                              children: const [
                                Positioned(
                                  top: 10,
                                  left: 65,
                                  child: Icon(
                                    Icons.north_east,
                                    size: 20,
                                    color: red,
                                  ),
                                ),
                                Positioned(
                                  left: 100,
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      "DUALITE AMBASSADORS ARE HIGHLY CURATED, SELECTED CREATIVE ARTISTS THAT OUR TEAM HAS PICKED TO REPRESENT THE NEXT-GENERATIONAL INTERACTIVE PLATFORM THAT IS GOING TO DISRUPT",
                                      style: TextStyle(
                                        fontFamily: "SpaceMono-Regular",
                                        color: Colors.white,
                                        fontSize: 15,
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
                  Center(
                      child: Image.asset(
                    'assets/DualiteAmbassdors/2.png',
                    scale: 0.8,
                  )),
                  Container(
                    child: Column(
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
                            value: Cat,
                            dropdownColor: Colors.grey,
                            style: const TextStyle(color: Colors.white),
                            underline: const SizedBox(),
                            onChanged: (String? newValue) {
                              setState(() {
                                Cat = newValue!;
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
                        const SizedBox(
                          height: 20,
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
                                  overlayColor: MaterialStateProperty.all<
                                          Color>(
                                      Colors.lightBlueAccent.withOpacity(0.7)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.transparent),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: const BorderSide(
                                          color: Colors.transparent),
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
                ],
              ),
            ),
          )
        : DueliteAmbassadorWeb();
  }
}
