import 'package:flutter/material.dart';
import 'package:ukraine_music/history_of_music/homepage_history.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

String oragre_rev_text = "У 2004 році відбулась Помаранчева революція. \nТоді Українське видавництво «Атлантик» спільно з Громадською організацією «Наша Україна» напередодні Католицького Різдва 2004 року видало збірку 'Пісні помаранчевого майдану'.\n"
    "Альбом є некомерційним виданням і був призначений для безкоштовного поширення серед слухачів південної і східної України, де українська музика є менш доступною. В тій збірці були такі пісні:\n"
    "Ґринджоли — Разом нас багато";
List orange_text_list = [
    "Ґринджоли — Разом нас багато",
    "Марія Бурмака — Ми йдемо\n",
    "De Shifer — Час прийшов\n",
    "Мандри — Україна\n",
    "Океан Ельзи — Майже весна\n",
    "Леся Горова — Я патріот\n",
    "Тартак — Я не хочу\n",
    "О. Білозір та О. Єгоров — Слава Українi\n",
    "ТНМК — Вавілон\n",
    "Де Був Бір — На Майдані\n",
    "Воплі Відоплясова — Політрок\n",
    "Плач Єремії — Із янголом на плечі\n",
    "Тарас Петриненко — Україна\n"
];
class OrangeRevolution extends StatefulWidget {
  const OrangeRevolution({Key? key}) : super(key: key);

  @override
  State<OrangeRevolution> createState() => _OrangeRevolutionState();
}

class _OrangeRevolutionState extends State<OrangeRevolution> {

  final List<YoutubePlayerController> _controllers = [
    "_I5vzGZUmz4",
    "5uqaP9m8xuc",
    "LLq6B_gFHAI",
    "BLkzxVS9VyE",
    "Hj_ORUxfe78",
    "pz5CwHr8rnk",
    "FhQj-nnXviY",
    "urgQ-q7Oygg",
    "FUBPDZx2hJ8&t=2s",
    "QYOalYggYJM",
    "fZBei7KVhJs",
    "-XH4HzA3zw0",
    "Yv9W-IM83bY",
  ].map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  ).toList();

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
            backgroundColor: Colors.orange, // background (button) color
            foregroundColor: Colors.white, // foreground (text) color
          ),
          child: Icon(Icons.home),
        ),
        // leading: FloatingActionButton(
        //   shape: BeveledRectangleBorder(
        //       borderRadius: BorderRadius.zero
        //   ),
        //   onPressed: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => const Homepage(),
        //       ),
        //     );
        //   },
        //   backgroundColor: Colors.orange,
        //   child: Icon(Icons.home),
        // ),
        title: Text("Помаранчева революція"),
        backgroundColor: Colors.orange,
      ),

      body: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
                  child: Text(orange_text_list[index]),
                ),
                YoutubePlayer(
                  controller: _controllers[index],
                  showVideoProgressIndicator: true,
                )
              ],
            );
          },
          separatorBuilder: (context, _) => const SizedBox(height: 5.0),
          itemCount: orange_text_list.length,
      ),
    );
  }
}

// class YoutubeOrangeRev extends StatefulWidget {
//   const YoutubeOrangeRev({Key? key}) : super(key: key);
//
//   @override
//   State<YoutubeOrangeRev> createState() => _YoutubeOrangeRevState();
// }
//
// class _YoutubeOrangeRevState extends State<YoutubeOrangeRev> {
//
//   final List<YoutubePlayerController> _controllers = [
//     "_I5vzGZUmz4",
//     "5uqaP9m8xuc",
//     "LLq6B_gFHAI",
//     "BLkzxVS9VyE",
//     "Hj_ORUxfe78",
//     "pz5CwHr8rnk",
//     "FhQj-nnXviY",
//     "urgQ-q7Oygg",
//     "FUBPDZx2hJ8&t=2s",
//     "QYOalYggYJM",
//     "fZBei7KVhJs",
//     "-XH4HzA3zw0",
//     "Yv9W-IM83bY",
//   ].map<YoutubePlayerController>(
//         (videoId) => YoutubePlayerController(
//       initialVideoId: videoId,
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//       ),
//     ),
//   ).toList();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Пісні'),
//       ),
//
//       body: ListView.separated(
//           // itemBuilder: (context, index) {
//           //   return YoutubePlayer(
//           //     controller: _controllers[0],
//           //     showVideoProgressIndicator: true,
//           //   );
//           // },
//           // separatorBuilder: (context, _) => const SizedBox(height: 10.0),
//           itemBuilder: (context, index) {
//             return YoutubePlayer(
//               key: ObjectKey(_controllers[index]),
//               controller: _controllers[index],
//               actionsPadding: const EdgeInsets.only(left: 16.0),
//               bottomActions: [
//                 CurrentPosition(),
//                 const SizedBox(width: 10.0),
//                 ProgressBar(isExpanded: true),
//                 const SizedBox(width: 10.0),
//                 RemainingDuration(),
//                 FullScreenButton(),
//               ],
//             );
//           },
//           separatorBuilder: (context, _) => const SizedBox(height: 10.0),
//           itemCount: _controllers.length
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => const OrangeRevolution(),
//             ),
//           );
//         },
//         backgroundColor: Colors.orangeAccent,
//         child: Icon(Icons.arrow_circle_left),
//       ),
//     );
//   }
// }