import 'package:flutter/material.dart';
import 'package:ukraine_music/homepage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

String oragre_rev_text = "У 2004 році відбулась Помаранчева революція. \nТоді Українське видавництво «Атлантик» спільно з Громадською організацією «Наша Україна» напередодні Католицького Різдва 2004 року видало збірку 'Пісні помаранчевого майдану'.\n"
    "Альбом є некомерційним виданням і був призначений для безкоштовного поширення серед слухачів південної і східної України, де українська музика є менш доступною. В тій збірці були такі пісні:\n";
List orange_text_list = [
    "Ґринджоли — Разом нас багато\n",
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
        title: Text("Помаранчева революція"),
        backgroundColor: Colors.orangeAccent,
      ),

      body: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(oragre_rev_text),
              ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[0]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[0],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[1]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[1],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[2]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[2],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[3]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[3],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[4]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[4],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[5]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[5],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[6]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[6],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[7]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[7],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[8]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[8],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[9]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[9],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[10]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[10],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[11]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[11],
                    showVideoProgressIndicator: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(orange_text_list[12]),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: YoutubePlayer(
                    controller: _controllers[12],
                    showVideoProgressIndicator: true,
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, _) => const SizedBox(height: 10.0),
          itemCount: 1,
      ),

      // body: Column(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: Text(oragre_rev_text),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
      //       child: TextButton(
      //         onPressed: () {
      //           Navigator.of(context).push(
      //             MaterialPageRoute(
      //                 builder: (contex) => const YoutubeOrangeRev(),
      //             )
      //           );
      //         },
      //         child: Text("Дивитись відео"),
      //       ),
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
        },
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.home),
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