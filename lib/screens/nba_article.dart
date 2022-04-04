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
      final String displayName = article.authorData?.displayName as String;
      final String nameToShow = 'By: ' + displayName;
      final String imgUrl = 'https://unavatar.io/twitter/' + twitterUsername;
      return Column(children: [
        Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(imgUrl)),
            Container(width: 20),
            Text(nameToShow,
                style: TextStyle(
                    color: Colors.blueGrey.shade800,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800)),
          ],
        ),
        Container(height: 20),
        ...articleBody.map((body) {
          if (body.dataType == 'paragraph') {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(body.rawData,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500, height: 1.5)),
            );
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
                  flex: 1,
                  child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: _articleBody(article.flutterBody)))
            ])));
  }
}
