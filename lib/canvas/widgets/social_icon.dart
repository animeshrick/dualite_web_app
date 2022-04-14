import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({Key? key, required this.icon, required this.press})
      : super(key: key);
  final String icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 20.0,
        width: 20.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          icon,
          height: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
