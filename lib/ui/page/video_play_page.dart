import 'package:FaKenXel/model/model.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:video_player/video_player.dart';

import '../../repository/repository.dart';

class VideoPlayPage extends StatefulWidget {
  VideoPlayPage({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _VideoPlayPageState();
  }
}

class _VideoPlayPageState extends State<VideoPlayPage> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    getVideos();
    _videoPlayerController1 = VideoPlayerController.network(
      //'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      'https://vod-progressive.akamaized.net/exp=1593786793~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2941%2F14%2F364708250%2F1502447804.mp4~hmac=a021089bacbec38172d17feab6a4cd6c8c04ac3522470f75f816d6c4c367f896/vimeo-prod-skyfire-std-us/01/2941/14/364708250/1502447804.mp4?filename=video.mp4',
    );
    _videoPlayerController2 = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      //aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  getVideos() async {
    print('搜索视频');
    var data = await GetIt.I<Repository>().searchVideos('dog', perPage: 5);
    // print('视频数据:${data.toJson()}');
    data.videos.map((Video e) {
      print(e.videoFiles[0].link);
    }).toList();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              _chewieController.enterFullScreen();
            },
            child: Text('Fullscreen'),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _chewieController.dispose();
                      _videoPlayerController2.pause();
                      _videoPlayerController2.seekTo(Duration(seconds: 0));
                      _chewieController = ChewieController(
                        videoPlayerController: _videoPlayerController1,
                        aspectRatio: 3 / 2,
                        autoPlay: true,
                        looping: true,
                      );
                    });
                  },
                  child: Padding(
                    child: Text("Video 1"),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _chewieController.dispose();
                      _videoPlayerController1.pause();
                      _videoPlayerController1.seekTo(Duration(seconds: 0));
                      _chewieController = ChewieController(
                        videoPlayerController: _videoPlayerController2,
                        aspectRatio: 3 / 2,
                        autoPlay: true,
                        looping: true,
                      );
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Error Video"),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.android;
                    });
                  },
                  child: Padding(
                    child: Text("Android controls"),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.iOS;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("iOS controls"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
