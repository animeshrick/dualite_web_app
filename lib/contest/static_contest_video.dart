import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StaticContestVideo extends StatefulWidget {
  final File? staticVideoFile;
  const StaticContestVideo({Key? key, required this.staticVideoFile})
      : super(key: key);

  @override
  _StaticContestVideoState createState() => _StaticContestVideoState();
}

class _StaticContestVideoState extends State<StaticContestVideo> {
  late VideoPlayerController _videoPlayerController1;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
