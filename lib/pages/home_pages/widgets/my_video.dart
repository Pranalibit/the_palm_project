import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyVideo extends StatelessWidget {
  const MyVideo({
    Key key,
    @required Future<void> initializeVideoPlayerFuture,
    @required VideoPlayerController controller,
    @required this.width,
  })  : _initializeVideoPlayerFuture = initializeVideoPlayerFuture,
        _controller = controller,
        super(key: key);

  final Future<void> _initializeVideoPlayerFuture;
  final VideoPlayerController _controller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              child: ClipRect(
                child: Align(
                  heightFactor: 0.8.w,
                  child: Container(
                      width: width,
                      height: 1000,
                      child: VideoPlayer(_controller)),
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
