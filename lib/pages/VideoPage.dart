import 'package:flutter/material.dart';
import 'package:flutter_youtube_view/flutter_youtube_view.dart';

class VideoPage extends StatefulWidget {
  String videoId;
  VideoPage(this.videoId, {Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterYoutubeView(
            scaleMode: YoutubeScaleMode.none, // <option> fitWidth, fitHeight
            params: YoutubeParam(
              videoId: widget.videoId,
              showUI: true,
              startSeconds: 0.0, // <option>
              autoPlay: true,
            ) // <option>
            ));
  }
}
