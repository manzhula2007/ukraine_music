import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import "package:ukraine_music/homepage.dart";


// void main() => runApp(MaterialApp(
//   home: Homepage(),
// ));

void main() => runApp(MaterialApp(
  home: Youtube(),
));

class Youtube extends StatefulWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  final List<YoutubePlayerController> _controllers = [
    'gQDByCdjUXw',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ].map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video List Demo'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return YoutubePlayer(
              key: ObjectKey(_controllers[index]),
              controller: _controllers[index],
              actionsPadding: const EdgeInsets.only(left: 16.0),
              bottomActions: [
                CurrentPosition(),
                const SizedBox(width: 10.0),
                ProgressBar(isExpanded: true),
                const SizedBox(width: 10.0),
                RemainingDuration(),
                FullScreenButton(),
              ],
            );
          },
          separatorBuilder: (context, _) => const SizedBox(height: 10.0),
          itemCount: _controllers.length
      ),
    );
  }
}





















// void main() => runApp(MaterialApp(
//   home: YoutubePlayerExample(),
// ));
//
// class YoutubePlayerExample extends StatefulWidget {
//   const YoutubePlayerExample({Key? key}) : super(key: key);
//
//   @override
//   State<YoutubePlayerExample> createState() => _YoutubePlayerExampleState();
// }
//
// class _YoutubePlayerExampleState extends State<YoutubePlayerExample> {
//
//   final videoURL = "https://www.youtube.com/watch?v=YMx8Bbev6T4";
//
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     final videoID = YoutubePlayer.convertUrlToId(videoURL);
//
//     _controller = YoutubePlayerController(
//       initialVideoId: videoID!,
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//       )
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Youtube Player"),),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           YoutubePlayer(
//             controller: _controller,
//             showVideoProgressIndicator: true,
//           ),
//         ],
//       ),
//     );
//   }
// }