import 'package:flutter/material.dart';

Widget customTextField({
  required String hintText,
  required String? Function(String?)? validator,
  required TextEditingController controller,
}) =>
    SizedBox(
      // width: 300,
      width: 300,
      height: 50,
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: "SpaceMono-Regular",
          ),
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "SpaceMono-Regular",
          ),
          hintText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
