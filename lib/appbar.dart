import 'package:flutter/material.dart';

import 'const.dart';

Widget appBar(context) {
  return PreferredSize(
     preferredSize: Size.fromHeight(100.0),
    child: AppBar(
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
  );
}
