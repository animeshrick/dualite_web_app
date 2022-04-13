import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const Color primaryColor = Color(0xffe5e4e1);
const Color red = Color(0xffEC202B);
const Color foolterColor = Color(0xff222831);
const Color appBlack = Color(0xff231f20);

const String instagramLink = "https://www.instagram.com/dualiteindia/";
const String twitterLink = "https://twitter.com/Dualiteindia";
const String linkedinLink = "https://linkedin.com/company/perspective101";

const String logo = "assets/logo.png";
const String videoImg = "assets/pic1.jpg";

const String baseUrl = "https://dualite.xyz/api/v1";
const String success = "success";
const String failed = "failed";
const String internetError = "Please check your Internet! 😢";

showToast(msg, color) => Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 2,
    backgroundColor: color,
    textColor: Colors.white,
    fontSize: 16.0);

toastCancel() => Fluttertoast.cancel();

showProgress(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return CircularProgressIndicator.adaptive();
      },
      barrierDismissible: false);
}

void hideProgress(BuildContext context) {
  Navigator.pop(context);
}

class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const OnHover({Key? key, required this.builder}) : super(key: key);

  @override
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    // final hovered = Matrix4.identity()..translate(0, -10, 0);
    // final transform = isHovered ? hovered : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.identity(),
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
