import 'package:flutter/material.dart';
import 'package:ukraine_music/history_of_music/homepage_history.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


String more_text = "2004 року співачка Руслана з піснею 'Wild Dances' здобуває перемогу На Євробаченні:";

List list_more_text = [
  more_text,
  "У 2016, співачка Джамала теж виграла Євробачення з піснею '1944':"
];
class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {

  final List<YoutubePlayerController> _controllers = [
    "10XR67NQcAc",
    "B-rnM-MwRHY",
  ].map<YoutubePlayerController>(
        (videoId) =>
        YoutubePlayerController(
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
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Homepage(),
              ),
            );
          },
          style: TextButton.styleFrom(
            side: BorderSide(width:1, color:Colors.black45),
            backgroundColor: Colors.green, // background (button) color
            foregroundColor: Colors.white, // foreground (text) color
          ),
          child: Icon(Icons.home),
        ),
        title: Text("Більше"),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(list_more_text[index]),
              ),
              YoutubePlayer(
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
              ),
            ],
          );
        },
        separatorBuilder: (context, _) => const SizedBox(height: 10.0),
        itemCount: _controllers.length,


      ),
      backgroundColor: Colors.lightGreenAccent,
    );
  }
}

// class Information extends StatelessWidget {
//   const Information({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Більше"),
//         backgroundColor: Colors.green,
//       ),
//       // body: Column(
//       //   children: [
//       //     Padding(
//       //       padding: EdgeInsets.all(10),
//       //       child: Text(info_text),
//       //     ),
//       //   ],
//       // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => const Homepage(),
//             ),
//           );
//         },
//         backgroundColor: Colors.green,
//         child: Icon(Icons.home),
//
//       ),
//     );
//   }
// }
