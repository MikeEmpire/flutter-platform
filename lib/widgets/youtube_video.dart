import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideo extends StatefulWidget {
  const YoutubeVideo({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;
  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  late YoutubePlayerController _controller;
  // late PlayerState _playerState;
  // late YoutubeMetaData _videoMetaData;
  // double _volume = 100;
  // bool _muted = false;
  bool _isPlayerReady = false;
  @override
  void initState() {
    super.initState();

    void listener() {
      if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
        setState(() {
          // _playerState = _controller.value.playerState;
          // _videoMetaData = _controller.metadata;
        });
      }
    }

    // void deactivate() {
    //   // Pauses video while navigating to next page.
    //   _controller.pause();
    //   super.deactivate();
    // }

    // @override
    // void dispose() {
    //   _controller.dispose();
    //   super.dispose();
    // }

    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl) as String;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amberAccent,
        onReady: () {
          _isPlayerReady = true;
        },
      ),
      builder: (context, player) => Center(child: player),
      onExitFullScreen: () {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
    );
  }
}
