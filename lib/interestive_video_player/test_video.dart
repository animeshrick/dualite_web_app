import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayVideo extends StatefulWidget {
  const PlayVideo({Key? key}) : super(key: key);

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  late bool isFirst = true;
  late bool _isLoading = true;

  late VideoPlayerController _videoPlayerController1, _videoPlayerController2;

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
        print("First Video is either not available or blank.");
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
            // videosErrorMessage =
            print("Second Video is either not available or blank.");
          } else {
            setState(() {
              _videoPlayerController2.setVolume(0.0);
              _videoPlayerController2.seekTo(const Duration(seconds: 0));
              _videoPlayerController1.play();
              _videoPlayerController2.play();
              _videoPlayerController1.setLooping(true);
              _videoPlayerController2.setLooping(true);
              _videoPlayerController2.setVolume(0);
              // activeVideoControllerModel = 1;
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
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: SafeArea(
        child: Stack(children: [
          if (isFirst)
            Container(
              width: _size.width,
              height: _size.height,
              color: Colors.white54,
              child: VideoPlayer(_videoPlayerController1),
            )
          else
            Container(
              width: _size.width,
              height: _size.height,
              color: Colors.white38,
              child: VideoPlayer(_videoPlayerController2),
            ),
          GestureDetector(
            onTap: () {
              setState(() {
                isFirst = !isFirst;
                _videoPlayerController1.play();
                _videoPlayerController2.play();
              });
            },
            child: Container(
              width: _size.width,
              height: _size.height,
              color: Colors.black12,
            ),
          ),
        ]),
      ),
    );
  }
}
