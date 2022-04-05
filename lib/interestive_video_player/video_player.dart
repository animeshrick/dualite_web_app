import 'package:flutter/material.dart';
import 'package:universal_io/prefer_universal/io.dart';
import 'package:video_player/video_player.dart';

import '../const.dart';
import 'video_info.dart';

class AssetVideo extends StatefulWidget {
  @override
  AssetVideoState createState() => AssetVideoState();
}

class AssetVideoState extends State<AssetVideo> {
  late VideoPlayerController _videoPlayerController1, _videoPlayerController2;

  bool _isLoading = true;

  String? videosErrorMessage;

  int activeVideoControllerModel = 1;

  bool isPaused = false;
  bool isFullScreen = false;

  @override
  void initState() {
    super.initState();
    playVideo();
  }

  void playVideo() {
    _videoPlayerController1 = VideoPlayerController.asset('assets/v1_Trim.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));

    _videoPlayerController1.initialize().then((value) {
      if (_videoPlayerController1.value.duration == null ||
          _videoPlayerController1.value.duration ==
              const Duration(seconds: 0)) {
        _isLoading = false;
        videosErrorMessage = "First Video is either not available or blank.";
      } else {
        _videoPlayerController2 =
            VideoPlayerController.asset('assets/v2_Trim.mp4',
                videoPlayerOptions: VideoPlayerOptions(
                  mixWithOthers: true,
                ));

        _videoPlayerController2.initialize().then((value) {
          if (_videoPlayerController1.value.duration == null &&
              _videoPlayerController1.value.duration ==
                  const Duration(seconds: 0)) {
            _isLoading = false;
            videosErrorMessage =
                "Second Video is either not available or blank.";
          } else {
            setState(() {
              _videoPlayerController2.setVolume(0.0);
              _videoPlayerController2.seekTo(const Duration(seconds: 0));
              _videoPlayerController1.play();
              _videoPlayerController2.play();
              _videoPlayerController1.setLooping(true);
              _videoPlayerController2.setLooping(true);
              activeVideoControllerModel = 1;
              _isLoading = false;
            });
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : videosErrorMessage != "" && videosErrorMessage != null
                ? Center(
                    child: Text(
                      videosErrorMessage!,
                      style: const TextStyle(color: Colors.black),
                    ),
                  )
                : Stack(
                    children: [
                      Platform.isWindows
                          ? VideoInfo(
                              width: screenSize.width,
                              height: screenSize.height,
                              quarterTurns: 3,
                              videoPlayerController:
                                  activeVideoControllerModel == 1
                                      ? _videoPlayerController1
                                      : _videoPlayerController2,
                              callback: () {
                                setState(() {
                                  if (activeVideoControllerModel == 1) {
                                    _videoPlayerController1.setVolume(0.0);
                                    _videoPlayerController2.setVolume(1.0);
                                    activeVideoControllerModel = 2;
                                    _videoPlayerController1.play();
                                    _videoPlayerController2.play();
                                  } else {
                                    _videoPlayerController2.setVolume(0.0);
                                    _videoPlayerController1.setVolume(1.0);
                                    activeVideoControllerModel = 1;

                                    _videoPlayerController2.play();
                                    _videoPlayerController1.play();
                                  }
                                });
                              },
                            )
                          // is android
                          : VideoInfo(
                              width: screenSize.width,
                              height: screenSize.height,
                              quarterTurns: 0,
                              videoPlayerController:
                                  activeVideoControllerModel == 1
                                      ? _videoPlayerController1
                                      : _videoPlayerController2,
                              callback: () {
                                setState(() {
                                  if (activeVideoControllerModel == 1) {
                                    _videoPlayerController1.setVolume(0.0);
                                    _videoPlayerController2.setVolume(1.0);
                                    activeVideoControllerModel = 2;
                                    _videoPlayerController1.play();
                                    _videoPlayerController2.play();
                                  } else {
                                    _videoPlayerController2.setVolume(0.0);
                                    _videoPlayerController1.setVolume(1.0);
                                    activeVideoControllerModel = 1;

                                    _videoPlayerController2.play();
                                    _videoPlayerController1.play();
                                  }
                                });
                              },
                            ),
                      if (Platform.isAndroid)
                        Positioned(
                          bottom: 330,
                          left: 230,
                          child: IconButton(
                            splashRadius: 10,
                            icon: isPaused
                                ? const Icon(Icons.play_arrow)
                                : const Icon(Icons.pause),
                            onPressed: () {
                              if (isPaused) {
                                setState(() {
                                  _videoPlayerController1.play();
                                  _videoPlayerController2.play();
                                  isPaused = false;
                                });
                              } else {
                                setState(() {
                                  _videoPlayerController1.pause();
                                  _videoPlayerController2.pause();
                                  isPaused = true;
                                });
                              }
                            },
                            color: Colors.white,
                          ),
                        ),
                      if (Platform.isWindows)
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: RotatedBox(
                            // quarterTurns: isFullScreen == false ? 0 : 1,
                            quarterTurns: 0,
                            child: IconButton(
                              splashRadius: 10,
                              icon: isPaused
                                  ? const Icon(Icons.play_arrow)
                                  : const Icon(Icons.pause),
                              onPressed: () {
                                if (isPaused) {
                                  setState(() {
                                    _videoPlayerController1.play();
                                    _videoPlayerController2.play();
                                    isPaused = false;
                                  });
                                } else {
                                  setState(() {
                                    _videoPlayerController1.pause();
                                    _videoPlayerController2.pause();
                                    isPaused = true;
                                  });
                                }
                              },
                              color: Colors.white,
                            ),
                          ),
                        ),

                      /* ---------- full screen effect ----------------- */
                      // isFullScreen == false
                      //     ? Positioned(
                      //         bottom: 330,
                      //         right: 10,
                      //         child: IconButton(
                      //           splashRadius: 10,
                      //           icon: isFullScreen
                      //               ? const Icon(Icons.fullscreen_exit)
                      //               : const Icon(Icons.fullscreen),
                      //           onPressed: () {
                      //             setState(() {
                      //               isFullScreen = !isFullScreen;
                      //             });
                      //           },
                      //           color: Colors.white,
                      //         ),
                      //       )
                      //     : Positioned(
                      //         bottom: 50,
                      //         // top: 500,
                      //         left: 10,
                      //         child: IconButton(
                      //           splashRadius: 10,
                      //           icon: isFullScreen
                      //               ? const Icon(Icons.fullscreen_exit)
                      //               : const Icon(Icons.fullscreen),
                      //           onPressed: () {
                      //             setState(() {
                      //               isFullScreen = !isFullScreen;
                      //             });
                      //           },
                      //           color: Colors.white,
                      //         ),
                      //       ),

                      isPaused
                          ? const Opacity(
                              opacity: 0.3,
                              child: ColoredBox(
                                color: primaryColor,
                              ),
                            )
                          : Container(),
                      // isPaused
                      //     ? Padding(
                      //         padding: Platform.isWindows
                      //             ? EdgeInsets.only(left: 100.0, right: 100)
                      //             : EdgeInsets.all(20.0),
                      //         child: Align(
                      //           alignment: Alignment.topLeft,
                      //           child: Row(
                      //             mainAxisAlignment:
                      //                 MainAxisAlignment.spaceBetween,
                      //             children: [
                      //               InkWell(
                      //                 onTap: () {
                      //                   setState(() {
                      //                     isPaused = false;
                      //                     _videoPlayerController1.seekTo(
                      //                         const Duration(seconds: 0));
                      //                     _videoPlayerController2.seekTo(
                      //                         const Duration(seconds: 0));
                      //                     _videoPlayerController1.play();
                      //                     _videoPlayerController2.play();
                      //                   });
                      //                 },
                      //                 child: const Text(
                      //                   "Start Over",
                      //                   style: TextStyle(
                      //                       color: Colors.white,
                      //                       fontSize: 20.0),
                      //                 ),
                      //               ),
                      //               IconButton(
                      //                 onPressed: () {
                      //                   setState(() {
                      //                     _videoPlayerController1.play();
                      //                     _videoPlayerController2.play();
                      //                     isPaused = false;
                      //                   });
                      //                 },
                      //                 icon: const Icon(
                      //                   Icons.close,
                      //                   color: Colors.white,
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       )
                      //     : Container()
                    ],
                  ),
      ),
    );
  }
}
