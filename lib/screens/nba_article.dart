import 'package:elite_mobile_app/models/articles/article_body.dart';
import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NBAArticleScreen extends StatelessWidget {
  const NBAArticleScreen({Key? key, required this.article}) : super(key: key);
  final EliteArticle article;

  @override
  Widget build(BuildContext context) {
    Widget _articleBody(List<ArticleBody> articleBody) {
      final twitterUrl = article.authorData?.twitter_url as String;
      final startIndex = twitterUrl.lastIndexOf("/");
      final lastIndex = twitterUrl.length;
      final twitterUsername = twitterUrl.substring(startIndex + 1, lastIndex);
      final String imgUrl = 'https://unavatar.io/twitter/' + twitterUsername;
      return Column(children: [
        Row(
          children: [
            Text(article.authorData?.displayName as String,
                style: const TextStyle(color: Colors.black)),
            Image.network(imgUrl, fit: BoxFit.contain, height: 60, width: 60)
          ],
        ),
        ...articleBody.map((body) {
          if (body.dataType == 'paragraph') {
            return Text(body.rawData);
          }
          if (body.dataType == 'figure') {
            return Image.network(body.rawData);
          }
          if (body.dataType == 'youtube-video') {
            final link = body.rawData;
            final videoId = YoutubePlayer.convertUrlToId(link) as String;
            return YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: videoId,
                flags: const YoutubePlayerFlags(
                  hideControls: false,
                  controlsVisibleAtStart: true,
                  autoPlay: false,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: false,
              progressIndicatorColor: Colors.blue,
              progressColors: const ProgressBarColors(
                  playedColor: Colors.blue, handleColor: Colors.blueAccent),
            );
          }
          return Text(body.dataType);
        }).toList()
      ]);
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(article.title),
        ),
        body: Container(
            alignment: const Alignment(0, 0),
            child: Column(children: [
              Hero(
                  tag: 'articleImage',
                  child: Image.network(article.headerImgUrl)),
              Expanded(
                  child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: _articleBody(article.flutterBody)))
            ])));
  }
}
