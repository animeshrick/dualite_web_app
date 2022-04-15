import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class PlayVideo extends StatefulWidget {
  const PlayVideo({Key? key}) : super(key: key);

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  bool _isFirst = true;
  Stream<bool>? videoStream;
  StreamSubscription? _streamSubscription;
  late bool _isLoading = true;

  late VideoPlayerController _videoPlayerController1, _videoPlayerController2;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    _initializePlayer();
    // playVideo();
    _streamSubscription = videoStream?.listen((shouldClose) {
      // here we listen for new events coming down the pipe
      setState(() {
        _isFirst = shouldClose; // we got a new "droplet"
      });
    });
  }

  // void playVideo() {
  //   _videoPlayerController1 = VideoPlayerController.asset(
  //       'assets/videos/v1.mp4',
  //       videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
  //
  //   _videoPlayerController1.initialize().then((value) {
  //     if (_videoPlayerController1.value.duration == null ||
  //         _videoPlayerController1.value.duration ==
  //             const Duration(seconds: 0)) {
  //       _isLoading = false;
  //       print("First Video is either not available or blank.");
  //     } else {
  //       _videoPlayerController2 =
  //           VideoPlayerController.asset('assets/videos/v2.mp4',
  //               videoPlayerOptions: VideoPlayerOptions(
  //                 mixWithOthers: true,
  //               ));
  //
  //       _videoPlayerController2.initialize().then((value) {
  //         if (_videoPlayerController1.value.duration == null &&
  //             _videoPlayerController1.value.duration ==
  //                 const Duration(seconds: 0)) {
  //           _isLoading = false;
  //           // videosErrorMessage =
  //           print("Second Video is either not available or blank.");
  //         } else {
  //           setState(() {
  //             _videoPlayerController2.setVolume(0.0);
  //             _videoPlayerController2.seekTo(const Duration(seconds: 0));
  //             _videoPlayerController1.play();
  //             _videoPlayerController2.play();
  //             _videoPlayerController1.setLooping(true);
  //             _videoPlayerController2.setLooping(true);
  //             // activeVideoControllerModel = 1;
  //             _isLoading = false;
  //           });
  //         }
  //       });
  //     }
  //   });
  // }

  _initializePlayer() {
    _videoPlayerController1 = VideoPlayerController.asset("assets/v1_Trim.mp4",
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((value) {
        _videoPlayerController1.play();
        _videoPlayerController1.setLooping(true);
        _isFirst = true;
        _isLoading = false;
        setState(() {});
      });

    _videoPlayerController2 = VideoPlayerController.asset("assets/v2_Trim.mp4",
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true,
        ))
      ..initialize().then((value) {
        _videoPlayerController2.play();
        _videoPlayerController2.setVolume(0.0);
        _videoPlayerController2.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    if (_videoPlayerController1.value.isPlaying)
      _videoPlayerController1.pause();
    if (_videoPlayerController2.value.isPlaying)
      _videoPlayerController2.pause();
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _streamSubscription?.cancel();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  // @override
  // void dispose() {
  //   _videoPlayerController1.dispose();
  //   _videoPlayerController2.dispose();
  //   super.dispose();
  // }

  bool isPaused = false;

  Duration _currentPositon = Duration(seconds: 0);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: CustomVideo(
              videoPlayerController: _isFirst == true
                  ? _videoPlayerController1
                  : _videoPlayerController2,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: isPaused
                ? InkWell(
                    onTap: () {
                      setState(() {
                        _videoPlayerController1.play();
                        _videoPlayerController2.play();
                        isPaused = false;
                      });
                    },
                    child: Hero(
                      tag: 'b',
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      setState(() {
                        _currentPositon =
                            _videoPlayerController1.value.position;
                        _videoPlayerController1.pause();
                        _videoPlayerController2.pause();
                        isPaused = true;
                      });
                    },
                    child: Hero(
                      tag: 'b',
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              margin: const EdgeInsets.only(
                                  bottom: 10, left: 4, right: 4),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
          isPaused
              ? Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _videoPlayerController1.play();
                        _videoPlayerController2.play();
                        isPaused = false;
                      });
                      Get.back();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                )
              : Container(),
          GestureDetector(
              onTap: () {
                setState(() {
                  if (_isFirst == true) {
                    _currentPositon = _videoPlayerController1.value.position;
                    print('this is from the 1st video $_currentPositon');
                    _videoPlayerController2
                      ..initialize().then(
                        (_) {
                          setState(
                            () {
                              _videoPlayerController2.seekTo(_currentPositon);
                              _videoPlayerController2.play();
                            },
                          );
                        },
                      );
                    // _videoPlayerController2.seekTo(_currentPositon);
                    // _videoPlayerController2.play();
                    _videoPlayerController1.setVolume(0.0);
                    _videoPlayerController2.setVolume(1.0);
                    _isFirst = false;
                    print(_isFirst);
                  } else {
                    _isFirst = true;
                    _currentPositon = _videoPlayerController2.value.position;
                    print('this is from the 2nd video $_currentPositon');
                    _videoPlayerController1
                      ..initialize().then((_) {
                        setState(() {
                          _videoPlayerController1.seekTo(_currentPositon);
                          _videoPlayerController1.play();
                        });
                      });
                    // _videoPlayerController1.seekTo(_currentPositon);
                    // _videoPlayerController1.play();
                    _videoPlayerController2.setVolume(0.0);
                    _videoPlayerController1.setVolume(1.0);
                  }
                });
              },
              child: Icon(Icons.remove_red_eye)),
        ],
      )
          // Stack(children: [
          //
          //   if (_isFirst)
          //     Container(
          //       width: _size.width,
          //       height: _size.height,
          //       color: Colors.amber,
          //       child: VideoPlayer(_videoPlayerController2,),
          //     )
          //   else
          //     Container(
          //       width: _size.width,
          //       height: _size.height,
          //       color: Colors.blueAccent,
          //       child: VideoPlayer(_videoPlayerController1),
          //     ),
          //   GestureDetector(
          //     onTap: () {
          //       setState(() {
          //         _isFirst = !_isFirst;
          //         _videoPlayerController1.play();
          //         _videoPlayerController2.play();
          //         _isFirst == true ?_videoPlayerController1.setVolume(1.0) :_videoPlayerController1.setVolume(0.0);
          //         _isFirst == true ?_videoPlayerController2.setVolume(0.0) :_videoPlayerController1.setVolume(1.0);
          //         print(_isFirst);
          //       });
          //     },
          //     child: Container(
          //       width: _size.width,
          //       height: _size.height,
          //       color: Colors.black12,
          //     ),
          //   ),
          // ]),
          ),
    );
  }
}

class CustomVideo extends StatefulWidget {
  final VideoPlayerController videoPlayerController;

  const CustomVideo({Key? key, required this.videoPlayerController})
      : super(key: key);

  @override
  _CustomVideoState createState() => _CustomVideoState();
}

class _CustomVideoState extends State<CustomVideo> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      height: _size.height,
      child: widget.videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: widget.videoPlayerController.value.aspectRatio,
              child: VideoPlayer(widget.videoPlayerController),
            )
          : Container(),
    );
  }
}
