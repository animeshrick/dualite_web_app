import 'package:flutter/material.dart';
import 'package:universal_io/prefer_universal/io.dart';
import 'package:video_player/video_player.dart';

import '../const.dart';

class VideoInfo extends StatefulWidget {
  VideoPlayerController videoPlayerController;
  final int quarterTurns;
  final double width, height;

  final Function callback;
  VideoInfo({
    required this.videoPlayerController,
    required this.callback,
    required this.quarterTurns,
    required this.width,
    required this.height,
  });
  VideoInfoState createState() => VideoInfoState();
}

class VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Platform.isWindows
        ? ElevatedButton(
            onHover: null,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: primaryColor,
            ),
            onPressed: () {
              widget.callback();
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: RotatedBox(
                quarterTurns: widget.quarterTurns,
                child: VideoPlayer(widget.videoPlayerController),
              ),
            ),
          )
        : Center(
            child: SizedBox(
              height: widget.height,
              width: widget.width,
              child: ElevatedButton(
                onHover: null,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: primaryColor,
                ),
                onPressed: () {
                  widget.callback();
                },
                child: RotatedBox(
                  quarterTurns: widget.quarterTurns,
                  child: VideoPlayer(widget.videoPlayerController),
                ),
              ),
            ),
          );
  }
}
