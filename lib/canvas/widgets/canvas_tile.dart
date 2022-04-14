import 'package:flutter/material.dart';

class CanvasTile extends StatelessWidget {
  const CanvasTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(top: 35, bottom: 0),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/web_gallery/gal_1.png',
              fit: BoxFit.cover,
              width: size.width * 0.5,
              height: size.height * 0.2,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          const Text(
            'Moonshot',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              fontFamily: "Barlow-Black",
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          const Text(
            'A selection of the finest edits, amplified with the interactive \'tap\' element',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              fontFamily: "Barlow-Black",
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
