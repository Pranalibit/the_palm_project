import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:the_palm_project/pages/home_pages/widgets/gallery.dart';
import 'package:video_player/video_player.dart';

// Common
import 'package:the_palm_project/utils/constant.dart';

// Laukik
import 'widgets/footer.dart';
import 'widgets/location.dart';
import 'widgets/title_subtitle.dart';
import 'widgets/testimonials.dart';
import 'widgets/my_video.dart';

// Anirudh
import 'widgets/carosul.dart';
import 'widgets/navbar.dart';
import 'widgets/exploremore.dart';
import 'widgets/rooms.dart';
import 'package:the_palm_project/pages/home_pages/widgets/ammenities.dart';

class HomePageLarge extends StatefulWidget {
  @override
  _HomePageLargeState createState() => _HomePageLargeState();
}

class _HomePageLargeState extends State<HomePageLarge> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    initializeVideo();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future initializeVideo() async {
    _controller = VideoPlayerController.asset("assets/video/nature.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: Size(1280, 720),
      allowFontScaling: true,
      builder: () => Scaffold(
        backgroundColor: secondaryColor,
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                navbar(),
                Container(
                  height: 20,
                  width: width,
                ),
                Carousel(),
                SizedBox(
                  height: 100,
                ),
                explore(),
                SizedBox(
                  height: 100,
                ),
                TitleSubtitle(
                  width: width,
                  title: title3,
                  subtitle: title4,
                  textAlign: TextAlign.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                rooms(),
                amm(),
                SizedBox(
                  height: 50,
                ),
                TitleSubtitle(
                  width: width,
                  title: title5,
                  subtitle: 'Indulge in scenic beauty with us...',
                  textAlign: TextAlign.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                Gallery(
                  rate: rate,
                ),
                SizedBox(
                  height: 50,
                ),
                TitleSubtitle(
                  width: width,
                  title: title6,
                  subtitle: subtitle6,
                  textAlign: TextAlign.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
                SizedBox(
                  height: 50,
                ),
                MyVideo(
                  initializeVideoPlayerFuture: _initializeVideoPlayerFuture,
                  controller: _controller,
                  width: width,
                ),
                SizedBox(
                  height: 100,
                ),
                Testimonials(width: width),
                SizedBox(
                  height: 150,
                ),
                Location(width: width),
                SizedBox(
                  height: 150,
                ),
                Footer(width: width)
              ],
            )
          ],
        ),
      ),
    );
  }
}
