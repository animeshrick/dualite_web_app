import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TestVideoPlayer extends StatefulWidget {
  @override
  _TestVideoPlayerState createState() => _TestVideoPlayerState();
}

class _TestVideoPlayerState extends State<TestVideoPlayer> {
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
      body: InkWell(
        onTap: () {
          debugPrint('x');
        },
        child: Stack(
          children: [
            VideoPlayer(VideoPlayerController.asset('assets/v1_Trim.mp4')),
            VideoPlayer(VideoPlayerController.asset('assets/v2_Trim.mp4')),
          ],
        ),
      ),
    );
  }
}
